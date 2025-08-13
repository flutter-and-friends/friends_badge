package cn.highlight.p004tx.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.hardware.usb.UsbRequest;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CdcAcmSerialDriver implements UsbSerialDriver {
    private final String TAG = CdcAcmSerialDriver.class.getSimpleName();
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    public CdcAcmSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new CdcAcmSerialPort(usbDevice, 0);
    }

    @Override // cn.highlight.p004tx.usb.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // cn.highlight.p004tx.usb.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return Collections.singletonList(this.mPort);
    }

    class CdcAcmSerialPort extends CommonUsbSerialPort {
        private static final int GET_LINE_CODING = 33;
        private static final int SEND_BREAK = 35;
        private static final int SET_CONTROL_LINE_STATE = 34;
        private static final int SET_LINE_CODING = 32;
        private static final int USB_RECIP_INTERFACE = 1;
        private static final int USB_RT_ACM = 33;
        private UsbEndpoint mControlEndpoint;
        private UsbInterface mControlInterface;
        private UsbInterface mDataInterface;
        private boolean mDtr;
        private final boolean mEnableAsyncReads;
        private UsbEndpoint mReadEndpoint;
        private boolean mRts;
        private UsbEndpoint mWriteEndpoint;

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getCD() throws IOException {
            return false;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getCTS() throws IOException {
            return false;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getDSR() throws IOException {
            return false;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getRI() throws IOException {
            return false;
        }

        public CdcAcmSerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.mRts = false;
            this.mDtr = false;
            this.mEnableAsyncReads = Build.VERSION.SDK_INT >= 17;
        }

        @Override // cn.highlight.p004tx.usb.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return CdcAcmSerialDriver.this;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void open(UsbDeviceConnection usbDeviceConnection) throws IOException {
            if (this.mConnection != null) {
                throw new IOException("Already open");
            }
            this.mConnection = usbDeviceConnection;
            try {
                if (1 == this.mDevice.getInterfaceCount()) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "device might be castrated ACM device, trying single interface logic");
                    openSingleInterface();
                } else {
                    Log.d(CdcAcmSerialDriver.this.TAG, "trying default interface logic");
                    openInterface();
                }
                if (this.mEnableAsyncReads) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "Async reads enabled");
                } else {
                    Log.d(CdcAcmSerialDriver.this.TAG, "Async reads disabled.");
                }
            } catch (Throwable th) {
                this.mConnection = null;
                this.mControlEndpoint = null;
                this.mReadEndpoint = null;
                this.mWriteEndpoint = null;
                throw th;
            }
        }

        private void openSingleInterface() throws IOException {
            int i = 0;
            this.mControlInterface = this.mDevice.getInterface(0);
            Log.d(CdcAcmSerialDriver.this.TAG, "Control iface=" + this.mControlInterface);
            this.mDataInterface = this.mDevice.getInterface(0);
            Log.d(CdcAcmSerialDriver.this.TAG, "data iface=" + this.mDataInterface);
            if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
                throw new IOException("Could not claim shared control/data interface.");
            }
            int endpointCount = this.mControlInterface.getEndpointCount();
            if (endpointCount < 3) {
                Log.d(CdcAcmSerialDriver.this.TAG, "not enough endpoints - need 3. count=" + this.mControlInterface.getEndpointCount());
                throw new IOException("Insufficient number of endpoints(" + this.mControlInterface.getEndpointCount() + ")");
            }
            this.mControlEndpoint = null;
            this.mReadEndpoint = null;
            this.mWriteEndpoint = null;
            while (true) {
                if (i >= endpointCount) {
                    break;
                }
                UsbEndpoint endpoint = this.mControlInterface.getEndpoint(i);
                if (endpoint.getDirection() == 128 && endpoint.getType() == 3) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "Found controlling endpoint");
                    this.mControlEndpoint = endpoint;
                } else if (endpoint.getDirection() == 128 && endpoint.getType() == 2) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "Found reading endpoint");
                    this.mReadEndpoint = endpoint;
                } else if (endpoint.getDirection() == 0 && endpoint.getType() == 2) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "Found writing endpoint");
                    this.mWriteEndpoint = endpoint;
                }
                if (this.mControlEndpoint != null && this.mReadEndpoint != null && this.mWriteEndpoint != null) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "Found all required endpoints");
                    break;
                }
                i++;
            }
            if (this.mControlEndpoint == null || this.mReadEndpoint == null || this.mWriteEndpoint == null) {
                Log.d(CdcAcmSerialDriver.this.TAG, "Could not establish all endpoints");
                throw new IOException("Could not establish all endpoints");
            }
        }

        private void openInterface() throws IOException {
            Log.d(CdcAcmSerialDriver.this.TAG, "claiming interfaces, count=" + this.mDevice.getInterfaceCount());
            this.mControlInterface = this.mDevice.getInterface(0);
            Log.d(CdcAcmSerialDriver.this.TAG, "Control iface=" + this.mControlInterface);
            if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
                throw new IOException("Could not claim control interface.");
            }
            this.mControlEndpoint = this.mControlInterface.getEndpoint(0);
            Log.d(CdcAcmSerialDriver.this.TAG, "Control endpoint direction: " + this.mControlEndpoint.getDirection());
            Log.d(CdcAcmSerialDriver.this.TAG, "Claiming data interface.");
            this.mDataInterface = this.mDevice.getInterface(1);
            Log.d(CdcAcmSerialDriver.this.TAG, "data iface=" + this.mDataInterface);
            if (!this.mConnection.claimInterface(this.mDataInterface, true)) {
                throw new IOException("Could not claim data interface.");
            }
            this.mReadEndpoint = this.mDataInterface.getEndpoint(1);
            Log.d(CdcAcmSerialDriver.this.TAG, "Read endpoint direction: " + this.mReadEndpoint.getDirection());
            this.mWriteEndpoint = this.mDataInterface.getEndpoint(0);
            Log.d(CdcAcmSerialDriver.this.TAG, "Write endpoint direction: " + this.mWriteEndpoint.getDirection());
        }

        private int sendAcmControlMessage(int i, int i2, byte[] bArr) {
            return this.mConnection.controlTransfer(33, i, i2, 0, bArr, bArr != null ? bArr.length : 0, 5000);
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void close() throws IOException {
            if (this.mConnection == null) {
                throw new IOException("Already closed");
            }
            this.mConnection.close();
            this.mConnection = null;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public int read(byte[] bArr, int i) throws IOException {
            if (this.mEnableAsyncReads) {
                UsbRequest usbRequest = new UsbRequest();
                try {
                    usbRequest.initialize(this.mConnection, this.mReadEndpoint);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    if (!usbRequest.queue(byteBufferWrap, bArr.length)) {
                        throw new IOException("Error queueing request.");
                    }
                    if (this.mConnection.requestWait() == null) {
                        throw new IOException("Null response");
                    }
                    int iPosition = byteBufferWrap.position();
                    if (iPosition > 0) {
                        return iPosition;
                    }
                    return 0;
                } finally {
                    usbRequest.close();
                }
            }
            synchronized (this.mReadBufferLock) {
                int iBulkTransfer = this.mConnection.bulkTransfer(this.mReadEndpoint, this.mReadBuffer, Math.min(bArr.length, this.mReadBuffer.length), i);
                if (iBulkTransfer < 0) {
                    return i == Integer.MAX_VALUE ? -1 : 0;
                }
                System.arraycopy(this.mReadBuffer, 0, bArr, 0, iBulkTransfer);
                return iBulkTransfer;
            }
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
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
                if (iBulkTransfer > 0) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "Wrote amt=" + iBulkTransfer + " attempted=" + iMin);
                    i2 += iBulkTransfer;
                } else {
                    throw new IOException("Error writing " + iMin + " bytes at offset " + i2 + " length=" + bArr.length);
                }
            }
            return i2;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) {
            byte b;
            byte b2;
            if (i3 == 1) {
                b = 0;
            } else if (i3 == 2) {
                b = 2;
            } else {
                if (i3 != 3) {
                    throw new IllegalArgumentException("Bad value for stopBits: " + i3);
                }
                b = 1;
            }
            if (i4 == 0) {
                b2 = 0;
            } else if (i4 == 1) {
                b2 = 1;
            } else if (i4 == 2) {
                b2 = 2;
            } else if (i4 == 3) {
                b2 = 3;
            } else {
                if (i4 != 4) {
                    throw new IllegalArgumentException("Bad value for parity: " + i4);
                }
                b2 = 4;
            }
            sendAcmControlMessage(32, 0, new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255), b, b2, (byte) i2});
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getDTR() throws IOException {
            return this.mDtr;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
            this.mDtr = z;
            setDtrRts();
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getRTS() throws IOException {
            return this.mRts;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
            this.mRts = z;
            setDtrRts();
        }

        private void setDtrRts() {
            sendAcmControlMessage(34, (this.mRts ? 2 : 0) | (this.mDtr ? 1 : 0), null);
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(9025, new int[]{1, 67, 16, 66, 59, 68, 63, 68, 32822, 32823});
        linkedHashMap.put(5824, new int[]{1155});
        linkedHashMap.put(1003, new int[]{8260});
        linkedHashMap.put(7855, new int[]{4});
        return linkedHashMap;
    }
}
