package cn.highlight.tx.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ProlificSerialDriver implements UsbSerialDriver {
    private final String TAG = ProlificSerialDriver.class.getSimpleName();
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    public ProlificSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new ProlificSerialPort(this.mDevice, 0);
    }

    @Override // cn.highlight.tx.usb.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return Collections.singletonList(this.mPort);
    }

    @Override // cn.highlight.tx.usb.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    class ProlificSerialPort extends CommonUsbSerialPort {
        private static final int CONTROL_DTR = 1;
        private static final int CONTROL_RTS = 2;
        private static final int DEVICE_TYPE_0 = 1;
        private static final int DEVICE_TYPE_1 = 2;
        private static final int DEVICE_TYPE_HX = 0;
        private static final int FLUSH_RX_REQUEST = 8;
        private static final int FLUSH_TX_REQUEST = 9;
        private static final int INTERRUPT_ENDPOINT = 129;
        private static final int PROLIFIC_CTRL_OUT_REQTYPE = 33;
        private static final int PROLIFIC_VENDOR_IN_REQTYPE = 192;
        private static final int PROLIFIC_VENDOR_OUT_REQTYPE = 64;
        private static final int PROLIFIC_VENDOR_READ_REQUEST = 1;
        private static final int PROLIFIC_VENDOR_WRITE_REQUEST = 1;
        private static final int READ_ENDPOINT = 131;
        private static final int SET_CONTROL_REQUEST = 34;
        private static final int SET_LINE_REQUEST = 32;
        private static final int STATUS_BUFFER_SIZE = 10;
        private static final int STATUS_BYTE_IDX = 8;
        private static final int STATUS_FLAG_CD = 1;
        private static final int STATUS_FLAG_CTS = 128;
        private static final int STATUS_FLAG_DSR = 2;
        private static final int STATUS_FLAG_RI = 8;
        private static final int USB_READ_TIMEOUT_MILLIS = 1000;
        private static final int USB_RECIP_INTERFACE = 1;
        private static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
        private static final int WRITE_ENDPOINT = 2;
        private int mBaudRate;
        private int mControlLinesValue;
        private int mDataBits;
        private int mDeviceType;
        private UsbEndpoint mInterruptEndpoint;
        private int mParity;
        private UsbEndpoint mReadEndpoint;
        private IOException mReadStatusException;
        private volatile Thread mReadStatusThread;
        private final Object mReadStatusThreadLock;
        private int mStatus;
        private int mStopBits;
        boolean mStopReadStatusThread;
        private UsbEndpoint mWriteEndpoint;

        public ProlificSerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.mDeviceType = 0;
            this.mControlLinesValue = 0;
            this.mBaudRate = -1;
            this.mDataBits = -1;
            this.mStopBits = -1;
            this.mParity = -1;
            this.mStatus = 0;
            this.mReadStatusThread = null;
            this.mReadStatusThreadLock = new Object();
            this.mStopReadStatusThread = false;
            this.mReadStatusException = null;
        }

        @Override // cn.highlight.tx.usb.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return ProlificSerialDriver.this;
        }

        private final byte[] inControlTransfer(int i, int i2, int i3, int i4, int i5) throws IOException {
            byte[] bArr = new byte[i5];
            int iControlTransfer = this.mConnection.controlTransfer(i, i2, i3, i4, bArr, i5, 1000);
            if (iControlTransfer == i5) {
                return bArr;
            }
            throw new IOException(String.format("ControlTransfer with value 0x%x failed: %d", Integer.valueOf(i3), Integer.valueOf(iControlTransfer)));
        }

        private final void outControlTransfer(int i, int i2, int i3, int i4, byte[] bArr) throws IOException {
            int length = bArr == null ? 0 : bArr.length;
            int iControlTransfer = this.mConnection.controlTransfer(i, i2, i3, i4, bArr, length, 5000);
            if (iControlTransfer != length) {
                throw new IOException(String.format("ControlTransfer with value 0x%x failed: %d", Integer.valueOf(i3), Integer.valueOf(iControlTransfer)));
            }
        }

        private final byte[] vendorIn(int i, int i2, int i3) throws IOException {
            return inControlTransfer(192, 1, i, i2, i3);
        }

        private final void vendorOut(int i, int i2, byte[] bArr) throws IOException {
            outControlTransfer(64, 1, i, i2, bArr);
        }

        private void resetDevice() throws IOException {
            purgeHwBuffers(true, true);
        }

        private final void ctrlOut(int i, int i2, int i3, byte[] bArr) throws IOException {
            outControlTransfer(33, i, i2, i3, bArr);
        }

        private void doBlackMagic() throws IOException {
            vendorIn(33924, 0, 1);
            vendorOut(1028, 0, null);
            vendorIn(33924, 0, 1);
            vendorIn(33667, 0, 1);
            vendorIn(33924, 0, 1);
            vendorOut(1028, 1, null);
            vendorIn(33924, 0, 1);
            vendorIn(33667, 0, 1);
            vendorOut(0, 1, null);
            vendorOut(1, 0, null);
            vendorOut(2, this.mDeviceType == 0 ? 68 : 36, null);
        }

        private void setControlLines(int i) throws IOException {
            ctrlOut(34, i, 0, null);
            this.mControlLinesValue = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void readStatusThreadFunction() throws IOException {
            while (!this.mStopReadStatusThread) {
                try {
                    byte[] bArr = new byte[10];
                    int iBulkTransfer = this.mConnection.bulkTransfer(this.mInterruptEndpoint, bArr, 10, 500);
                    if (iBulkTransfer > 0) {
                        if (iBulkTransfer == 10) {
                            this.mStatus = bArr[8] & 255;
                        } else {
                            throw new IOException(String.format("Invalid CTS / DSR / CD / RI status buffer received, expected %d bytes, but received %d", 10, Integer.valueOf(iBulkTransfer)));
                        }
                    }
                } catch (IOException e) {
                    this.mReadStatusException = e;
                    return;
                }
            }
        }

        private final int getStatus() throws IOException {
            if (this.mReadStatusThread == null && this.mReadStatusException == null) {
                synchronized (this.mReadStatusThreadLock) {
                    if (this.mReadStatusThread == null) {
                        byte[] bArr = new byte[10];
                        if (this.mConnection.bulkTransfer(this.mInterruptEndpoint, bArr, 10, 100) != 10) {
                            Log.w(ProlificSerialDriver.this.TAG, "Could not read initial CTS / DSR / CD / RI status");
                        } else {
                            this.mStatus = bArr[8] & 255;
                        }
                        this.mReadStatusThread = new Thread(new Runnable() { // from class: cn.highlight.tx.usb.ProlificSerialDriver.ProlificSerialPort.1
                            @Override // java.lang.Runnable
                            public void run() throws IOException {
                                ProlificSerialPort.this.readStatusThreadFunction();
                            }
                        });
                        this.mReadStatusThread.setDaemon(true);
                        this.mReadStatusThread.start();
                    }
                }
            }
            IOException iOException = this.mReadStatusException;
            if (iOException != null) {
                this.mReadStatusException = null;
                throw iOException;
            }
            return this.mStatus;
        }

        private final boolean testStatusFlag(int i) throws IOException {
            return (getStatus() & i) == i;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void open(UsbDeviceConnection usbDeviceConnection) throws IOException {
            if (this.mConnection != null) {
                throw new IOException("Already open");
            }
            UsbInterface usbInterface = this.mDevice.getInterface(0);
            if (!usbDeviceConnection.claimInterface(usbInterface, true)) {
                throw new IOException("Error claiming Prolific interface 0");
            }
            this.mConnection = usbDeviceConnection;
            for (int i = 0; i < usbInterface.getEndpointCount(); i++) {
                try {
                    UsbEndpoint endpoint = usbInterface.getEndpoint(i);
                    int address = endpoint.getAddress();
                    if (address == 2) {
                        this.mWriteEndpoint = endpoint;
                    } else if (address == INTERRUPT_ENDPOINT) {
                        this.mInterruptEndpoint = endpoint;
                    } else if (address == READ_ENDPOINT) {
                        this.mReadEndpoint = endpoint;
                    }
                } catch (Throwable th) {
                    this.mConnection = null;
                    usbDeviceConnection.releaseInterface(usbInterface);
                    throw th;
                }
            }
            if (this.mDevice.getDeviceClass() == 2) {
                this.mDeviceType = 1;
            } else {
                try {
                    if (((byte[]) this.mConnection.getClass().getMethod("getRawDescriptors", new Class[0]).invoke(this.mConnection, new Object[0]))[7] == 64) {
                        this.mDeviceType = 0;
                    } else if (this.mDevice.getDeviceClass() != 0 && this.mDevice.getDeviceClass() != 255) {
                        Log.w(ProlificSerialDriver.this.TAG, "Could not detect PL2303 subtype, Assuming that it is a HX device");
                        this.mDeviceType = 0;
                    } else {
                        this.mDeviceType = 2;
                    }
                } catch (NoSuchMethodException unused) {
                    Log.w(ProlificSerialDriver.this.TAG, "Method UsbDeviceConnection.getRawDescriptors, required for PL2303 subtype detection, not available! Assuming that it is a HX device");
                    this.mDeviceType = 0;
                } catch (Exception e) {
                    Log.e(ProlificSerialDriver.this.TAG, "An unexpected exception occured while trying to detect PL2303 subtype", e);
                }
            }
            setControlLines(this.mControlLinesValue);
            resetDevice();
            doBlackMagic();
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void close() throws IOException {
            if (this.mConnection == null) {
                throw new IOException("Already closed");
            }
            try {
                this.mStopReadStatusThread = true;
                synchronized (this.mReadStatusThreadLock) {
                    if (this.mReadStatusThread != null) {
                        try {
                            this.mReadStatusThread.join();
                        } catch (Exception e) {
                            Log.w(ProlificSerialDriver.this.TAG, "An error occured while waiting for status read thread", e);
                        }
                    }
                }
                resetDevice();
                try {
                    this.mConnection.releaseInterface(this.mDevice.getInterface(0));
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.mConnection.releaseInterface(this.mDevice.getInterface(0));
                    throw th;
                } finally {
                }
            }
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public int read(byte[] bArr, int i) throws IOException {
            synchronized (this.mReadBufferLock) {
                int iBulkTransfer = this.mConnection.bulkTransfer(this.mReadEndpoint, this.mReadBuffer, Math.min(bArr.length, this.mReadBuffer.length), i);
                if (iBulkTransfer < 0) {
                    return 0;
                }
                System.arraycopy(this.mReadBuffer, 0, bArr, 0, iBulkTransfer);
                return iBulkTransfer;
            }
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public int write(byte[] bArr, int i) throws IOException {
            int iMin;
            byte[] bArr2;
            int iBulkTransfer;
            int i2 = 0;
            while (i2 < bArr.length) {
                synchronized (this.mWriteBufferLock) {
                    iMin = Math.min(bArr.length - i2, this.mWriteBuffer.length);
                    if (i2 == 0) {
                        bArr2 = bArr;
                    } else {
                        System.arraycopy(bArr, i2, this.mWriteBuffer, 0, iMin);
                        bArr2 = this.mWriteBuffer;
                    }
                    iBulkTransfer = this.mConnection.bulkTransfer(this.mWriteEndpoint, bArr2, iMin, i);
                }
                if (iBulkTransfer <= 0) {
                    throw new IOException("Error writing " + iMin + " bytes at offset " + i2 + " length=" + bArr.length);
                }
                i2 += iBulkTransfer;
            }
            return i2;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            if (this.mBaudRate == i && this.mDataBits == i2 && this.mStopBits == i3 && this.mParity == i4) {
                return;
            }
            byte[] bArr = new byte[7];
            bArr[0] = (byte) (i & 255);
            bArr[1] = (byte) ((i >> 8) & 255);
            bArr[2] = (byte) ((i >> 16) & 255);
            bArr[3] = (byte) ((i >> 24) & 255);
            if (i3 == 1) {
                bArr[4] = 0;
            } else if (i3 == 2) {
                bArr[4] = 2;
            } else {
                if (i3 != 3) {
                    throw new IllegalArgumentException("Unknown stopBits value: " + i3);
                }
                bArr[4] = 1;
            }
            if (i4 == 0) {
                bArr[5] = 0;
            } else if (i4 == 1) {
                bArr[5] = 1;
            } else if (i4 == 2) {
                bArr[5] = 2;
            } else if (i4 == 3) {
                bArr[5] = 3;
            } else {
                if (i4 != 4) {
                    throw new IllegalArgumentException("Unknown parity value: " + i4);
                }
                bArr[5] = 4;
            }
            bArr[6] = (byte) i2;
            ctrlOut(32, 0, 0, bArr);
            resetDevice();
            this.mBaudRate = i;
            this.mDataBits = i2;
            this.mStopBits = i3;
            this.mParity = i4;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getCD() throws IOException {
            return testStatusFlag(1);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getCTS() throws IOException {
            return testStatusFlag(128);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getDSR() throws IOException {
            return testStatusFlag(2);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getDTR() throws IOException {
            return (this.mControlLinesValue & 1) == 1;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
            int i;
            if (z) {
                i = this.mControlLinesValue | 1;
            } else {
                i = this.mControlLinesValue & (-2);
            }
            setControlLines(i);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getRI() throws IOException {
            return testStatusFlag(8);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getRTS() throws IOException {
            return (this.mControlLinesValue & 2) == 2;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
            int i;
            if (z) {
                i = this.mControlLinesValue | 2;
            } else {
                i = this.mControlLinesValue & (-3);
            }
            setControlLines(i);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean purgeHwBuffers(boolean z, boolean z2) throws IOException {
            if (z) {
                vendorOut(8, 0, null);
            }
            if (z2) {
                vendorOut(9, 0, null);
            }
            return z || z2;
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(1659, new int[]{8963});
        return linkedHashMap;
    }
}
