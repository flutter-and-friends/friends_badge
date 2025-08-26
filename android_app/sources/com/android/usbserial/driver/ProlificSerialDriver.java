package com.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import com.android.usbserial.driver.UsbSerialPort;
import com.android.usbserial.util.MonotonicClock;
import com.blankj.utilcode.constant.CacheConstants;
import java.io.IOException;
import java.util.Collections;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public class ProlificSerialDriver implements UsbSerialDriver {
    private static final int[] standardBaudRates = {75, 150, 300, 600, 1200, 1800, 2400, CacheConstants.HOUR, 4800, 7200, 9600, 14400, 19200, 28800, 38400, 57600, 115200, 128000, 134400, 161280, 201600, 230400, 268800, 403200, 460800, 614400, 806400, 921600, 1228800, 2457600, 3000000, 6000000};
    private final String TAG = ProlificSerialDriver.class.getSimpleName();
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    protected enum DeviceType {
        DEVICE_TYPE_01,
        DEVICE_TYPE_T,
        DEVICE_TYPE_HX,
        DEVICE_TYPE_HXN
    }

    public ProlificSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new ProlificSerialPort(this.mDevice, 0);
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return Collections.singletonList(this.mPort);
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public String getDriverName() {
        return this.TAG;
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    class ProlificSerialPort extends CommonUsbSerialPort {
        private static final int CONTROL_DTR = 1;
        private static final int CONTROL_RTS = 2;
        private static final int CTRL_OUT_REQTYPE = 33;
        private static final int FLUSH_RX_REQUEST = 8;
        private static final int FLUSH_TX_REQUEST = 9;
        private static final int GET_CONTROL_FLAG_CD = 2;
        private static final int GET_CONTROL_FLAG_CTS = 8;
        private static final int GET_CONTROL_FLAG_DSR = 4;
        private static final int GET_CONTROL_FLAG_RI = 1;
        private static final int GET_CONTROL_HXN_FLAG_CD = 64;
        private static final int GET_CONTROL_HXN_FLAG_CTS = 8;
        private static final int GET_CONTROL_HXN_FLAG_DSR = 32;
        private static final int GET_CONTROL_HXN_FLAG_RI = 128;
        private static final int GET_CONTROL_HXN_REQUEST = 128;
        private static final int GET_CONTROL_REQUEST = 135;
        private static final int INTERRUPT_ENDPOINT = 129;
        private static final int READ_ENDPOINT = 131;
        private static final int RESET_HXN_REQUEST = 7;
        private static final int RESET_HXN_RX_PIPE = 1;
        private static final int RESET_HXN_TX_PIPE = 2;
        private static final int SEND_BREAK_REQUEST = 35;
        private static final int SET_CONTROL_REQUEST = 34;
        private static final int SET_LINE_REQUEST = 32;
        private static final int STATUS_BUFFER_SIZE = 10;
        private static final int STATUS_BYTE_IDX = 8;
        private static final int STATUS_FLAG_CD = 1;
        private static final int STATUS_FLAG_CTS = 128;
        private static final int STATUS_FLAG_DSR = 2;
        private static final int STATUS_FLAG_RI = 8;
        private static final int STATUS_NOTIFICATION = 161;
        private static final int USB_READ_TIMEOUT_MILLIS = 1000;
        private static final int USB_RECIP_INTERFACE = 1;
        private static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
        private static final int VENDOR_IN_REQTYPE = 192;
        private static final int VENDOR_OUT_REQTYPE = 64;
        private static final int VENDOR_READ_HXN_REQUEST = 129;
        private static final int VENDOR_READ_REQUEST = 1;
        private static final int VENDOR_WRITE_HXN_REQUEST = 128;
        private static final int VENDOR_WRITE_REQUEST = 1;
        private static final int WRITE_ENDPOINT = 2;
        private int mBaudRate;
        private int mControlLinesValue;
        private int mDataBits;
        protected DeviceType mDeviceType;
        private UsbEndpoint mInterruptEndpoint;
        private int mParity;
        private IOException mReadStatusException;
        private volatile Thread mReadStatusThread;
        private final Object mReadStatusThreadLock;
        private int mStatus;
        private int mStopBits;
        private boolean mStopReadStatusThread;

        public ProlificSerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.mDeviceType = DeviceType.DEVICE_TYPE_HX;
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

        @Override // com.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return ProlificSerialDriver.this;
        }

        private byte[] inControlTransfer(int i, int i2, int i3, int i4, int i5) throws IOException {
            byte[] bArr = new byte[i5];
            int iControlTransfer = this.mConnection.controlTransfer(i, i2, i3, i4, bArr, i5, 1000);
            if (iControlTransfer == i5) {
                return bArr;
            }
            throw new IOException(String.format("ControlTransfer 0x%x failed: %d", Integer.valueOf(i3), Integer.valueOf(iControlTransfer)));
        }

        private void outControlTransfer(int i, int i2, int i3, int i4, byte[] bArr) throws IOException {
            int length = bArr == null ? 0 : bArr.length;
            int iControlTransfer = this.mConnection.controlTransfer(i, i2, i3, i4, bArr, length, 5000);
            if (iControlTransfer != length) {
                throw new IOException(String.format("ControlTransfer 0x%x failed: %d", Integer.valueOf(i3), Integer.valueOf(iControlTransfer)));
            }
        }

        private byte[] vendorIn(int i, int i2, int i3) throws IOException {
            return inControlTransfer(192, this.mDeviceType == DeviceType.DEVICE_TYPE_HXN ? 129 : 1, i, i2, i3);
        }

        private void vendorOut(int i, int i2, byte[] bArr) throws IOException {
            outControlTransfer(64, this.mDeviceType == DeviceType.DEVICE_TYPE_HXN ? 128 : 1, i, i2, bArr);
        }

        private void resetDevice() throws IOException {
            purgeHwBuffers(true, true);
        }

        private void ctrlOut(int i, int i2, int i3, byte[] bArr) throws IOException {
            outControlTransfer(33, i, i2, i3, bArr);
        }

        private boolean testHxStatus() {
            try {
                inControlTransfer(192, 1, 32896, 0, 1);
                return true;
            } catch (IOException unused) {
                return false;
            }
        }

        private void doBlackMagic() throws IOException {
            if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                return;
            }
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
            vendorOut(2, this.mDeviceType == DeviceType.DEVICE_TYPE_01 ? 36 : 68, null);
        }

        private void setControlLines(int i) throws IOException {
            ctrlOut(34, i, 0, null);
            this.mControlLinesValue = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void readStatusThreadFunction() throws IOException {
            while (!this.mStopReadStatusThread) {
                try {
                    byte[] bArr = new byte[10];
                    long jMillis = MonotonicClock.millis() + 500;
                    int iBulkTransfer = this.mConnection.bulkTransfer(this.mInterruptEndpoint, bArr, 10, 500);
                    if (iBulkTransfer == -1 && MonotonicClock.millis() < jMillis) {
                        testConnection();
                    }
                    if (iBulkTransfer > 0) {
                        if (iBulkTransfer != 10) {
                            throw new IOException("Invalid status notification, expected 10 bytes, got " + iBulkTransfer);
                        }
                        if (bArr[0] != -95) {
                            throw new IOException("Invalid status notification, expected 161 request, got " + ((int) bArr[0]));
                        }
                        this.mStatus = bArr[8] & 255;
                    }
                } catch (IOException e) {
                    this.mReadStatusException = e;
                    return;
                }
            }
        }

        private int getStatus() throws IOException {
            if (this.mReadStatusThread == null && this.mReadStatusException == null) {
                synchronized (this.mReadStatusThreadLock) {
                    if (this.mReadStatusThread == null) {
                        this.mStatus = 0;
                        if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                            byte[] bArrVendorIn = vendorIn(128, 0, 1);
                            if ((bArrVendorIn[0] & 8) == 0) {
                                this.mStatus |= 128;
                            }
                            if ((bArrVendorIn[0] & 32) == 0) {
                                this.mStatus |= 2;
                            }
                            if ((bArrVendorIn[0] & 64) == 0) {
                                this.mStatus |= 1;
                            }
                            if ((bArrVendorIn[0] & ByteCompanionObject.MIN_VALUE) == 0) {
                                this.mStatus |= 8;
                            }
                        } else {
                            byte[] bArrVendorIn2 = vendorIn(GET_CONTROL_REQUEST, 0, 1);
                            if ((bArrVendorIn2[0] & 8) == 0) {
                                this.mStatus |= 128;
                            }
                            if ((bArrVendorIn2[0] & 4) == 0) {
                                this.mStatus |= 2;
                            }
                            if ((bArrVendorIn2[0] & 2) == 0) {
                                this.mStatus |= 1;
                            }
                            if ((bArrVendorIn2[0] & 1) == 0) {
                                this.mStatus |= 8;
                            }
                        }
                        this.mReadStatusThread = new Thread(new Runnable() { // from class: com.android.usbserial.driver.-$$Lambda$ProlificSerialDriver$ProlificSerialPort$l49Pew4oq7uQ00rXIosOGLlUX5U
                            @Override // java.lang.Runnable
                            public final void run() throws IOException {
                                this.f$0.readStatusThreadFunction();
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
                throw new IOException(iOException);
            }
            return this.mStatus;
        }

        private boolean testStatusFlag(int i) throws IOException {
            return (getStatus() & i) == i;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        public void openInt(UsbDeviceConnection usbDeviceConnection) throws IOException {
            UsbInterface usbInterface = this.mDevice.getInterface(0);
            if (!usbDeviceConnection.claimInterface(usbInterface, true)) {
                throw new IOException("Error claiming Prolific interface 0");
            }
            for (int i = 0; i < usbInterface.getEndpointCount(); i++) {
                UsbEndpoint endpoint = usbInterface.getEndpoint(i);
                int address = endpoint.getAddress();
                if (address == 2) {
                    this.mWriteEndpoint = endpoint;
                } else if (address == 129) {
                    this.mInterruptEndpoint = endpoint;
                } else if (address == READ_ENDPOINT) {
                    this.mReadEndpoint = endpoint;
                }
            }
            byte[] rawDescriptors = usbDeviceConnection.getRawDescriptors();
            if (rawDescriptors == null || rawDescriptors.length < 14) {
                throw new IOException("Could not get device descriptors");
            }
            int i2 = (rawDescriptors[3] << 8) + rawDescriptors[2];
            int i3 = (rawDescriptors[13] << 8) + rawDescriptors[12];
            byte b = rawDescriptors[7];
            if (this.mDevice.getDeviceClass() == 2 || b != 64) {
                this.mDeviceType = DeviceType.DEVICE_TYPE_01;
            } else if ((i3 == 768 && i2 == 512) || i3 == 1280) {
                this.mDeviceType = DeviceType.DEVICE_TYPE_T;
            } else if (i2 == 512 && !testHxStatus()) {
                this.mDeviceType = DeviceType.DEVICE_TYPE_HXN;
            } else {
                this.mDeviceType = DeviceType.DEVICE_TYPE_HX;
            }
            resetDevice();
            doBlackMagic();
            setControlLines(this.mControlLinesValue);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        public void closeInt() {
            try {
                synchronized (this.mReadStatusThreadLock) {
                    if (this.mReadStatusThread != null) {
                        try {
                            this.mStopReadStatusThread = true;
                            this.mReadStatusThread.join();
                        } catch (Exception e) {
                            Log.w(ProlificSerialDriver.this.TAG, "An error occured while waiting for status read thread", e);
                        }
                        this.mStopReadStatusThread = false;
                        this.mReadStatusThread = null;
                        this.mReadStatusException = null;
                    }
                }
                resetDevice();
            } catch (Exception unused) {
            }
            try {
                this.mConnection.releaseInterface(this.mDevice.getInterface(0));
            } catch (Exception unused2) {
            }
        }

        private int filterBaudRate(int i) {
            int i2;
            int i3;
            int i4;
            if ((1610612736 & i) == 536870912) {
                return i & (-536870913);
            }
            if (i <= 0) {
                throw new IllegalArgumentException("Invalid baud rate: " + i);
            }
            if (this.mDeviceType == DeviceType.DEVICE_TYPE_HXN) {
                return i;
            }
            for (int i5 : ProlificSerialDriver.standardBaudRates) {
                if (i5 == i) {
                    return i;
                }
            }
            int i6 = 384000000 / i;
            if (i6 == 0) {
                throw new UnsupportedOperationException("Baud rate to high");
            }
            if (this.mDeviceType == DeviceType.DEVICE_TYPE_T) {
                i2 = 0;
                while (i6 >= 2048) {
                    if (i2 >= 15) {
                        throw new UnsupportedOperationException("Baud rate to low");
                    }
                    i6 >>= 1;
                    i2++;
                }
                i3 = ((((i2 & (-2)) << 12) + i6) + ((i2 & 1) << 16)) - 2147483648;
                i4 = (384000000 / i6) >> i2;
            } else {
                i2 = 0;
                while (i6 >= 512) {
                    if (i2 >= 7) {
                        throw new UnsupportedOperationException("Baud rate to low");
                    }
                    i6 >>= 2;
                    i2++;
                }
                i3 = ((i2 << 9) + i6) - 2147483648;
                i4 = (384000000 / i6) >> (i2 << 1);
            }
            double dAbs = Math.abs(1.0d - (i4 / i));
            if (dAbs >= 0.031d) {
                throw new UnsupportedOperationException(String.format("Baud rate deviation %.1f%% is higher than allowed 3%%", Double.valueOf(dAbs * 100.0d)));
            }
            Log.d(ProlificSerialDriver.this.TAG, String.format("baud rate=%d, effective=%d, error=%.1f%%, value=0x%08x, mantissa=%d, exponent=%d", Integer.valueOf(i), Integer.valueOf(i4), Double.valueOf(dAbs * 100.0d), Integer.valueOf(i3), Integer.valueOf(i6), Integer.valueOf(i2)));
            return i3;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            int iFilterBaudRate = filterBaudRate(i);
            if (this.mBaudRate == iFilterBaudRate && this.mDataBits == i2 && this.mStopBits == i3 && this.mParity == i4) {
                return;
            }
            byte[] bArr = new byte[7];
            bArr[0] = (byte) (iFilterBaudRate & 255);
            bArr[1] = (byte) ((iFilterBaudRate >> 8) & 255);
            bArr[2] = (byte) ((iFilterBaudRate >> 16) & 255);
            bArr[3] = (byte) ((iFilterBaudRate >> 24) & 255);
            if (i3 == 1) {
                bArr[4] = 0;
            } else if (i3 == 2) {
                bArr[4] = 2;
            } else {
                if (i3 != 3) {
                    throw new IllegalArgumentException("Invalid stop bits: " + i3);
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
                    throw new IllegalArgumentException("Invalid parity: " + i4);
                }
                bArr[5] = 4;
            }
            if (i2 < 5 || i2 > 8) {
                throw new IllegalArgumentException("Invalid data bits: " + i2);
            }
            bArr[6] = (byte) i2;
            ctrlOut(32, 0, 0, bArr);
            resetDevice();
            this.mBaudRate = iFilterBaudRate;
            this.mDataBits = i2;
            this.mStopBits = i3;
            this.mParity = i4;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCD() throws IOException {
            return testStatusFlag(1);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() throws IOException {
            return testStatusFlag(128);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getDSR() throws IOException {
            return testStatusFlag(2);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() throws IOException {
            return (this.mControlLinesValue & 1) != 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
            int i;
            if (z) {
                i = this.mControlLinesValue | 1;
            } else {
                i = this.mControlLinesValue & (-2);
            }
            setControlLines(i);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getRI() throws IOException {
            return testStatusFlag(8);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() throws IOException {
            return (this.mControlLinesValue & 2) != 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
            int i;
            if (z) {
                i = this.mControlLinesValue | 2;
            } else {
                i = this.mControlLinesValue & (-3);
            }
            setControlLines(i);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            int status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if ((this.mControlLinesValue & 2) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & 128) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if ((this.mControlLinesValue & 1) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 2) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & 1) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CD);
            }
            if ((status & 8) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RI);
            }
            return enumSetNoneOf;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() throws IOException {
            return EnumSet.allOf(UsbSerialPort.ControlLine.class);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void purgeHwBuffers(boolean z, boolean z2) throws IOException {
            if (this.mDeviceType != DeviceType.DEVICE_TYPE_HXN) {
                if (z) {
                    vendorOut(8, 0, null);
                }
                if (z2) {
                    vendorOut(9, 0, null);
                    return;
                }
                return;
            }
            int i = z ? 1 : 0;
            if (z2) {
                i |= 2;
            }
            if (i != 0) {
                vendorOut(7, i, null);
            }
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z) throws IOException {
            ctrlOut(35, z ? 65535 : 0, 0, null);
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(1659, new int[]{8963, UsbId.PROLIFIC_PL23C3, UsbId.PROLIFIC_PL2303GC, UsbId.PROLIFIC_PL2303GB, UsbId.PROLIFIC_PL2303GT, 9187, 9187, UsbId.PROLIFIC_PL2303GS});
        return linkedHashMap;
    }
}
