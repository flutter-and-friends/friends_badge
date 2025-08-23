package cn.highlight.tx.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import cn.highlight.tx.usb.FtdiSerialDriver;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class Ch34xSerialDriver implements UsbSerialDriver {
    private static final String TAG = Ch34xSerialDriver.class.getSimpleName();
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    public Ch34xSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new Ch340SerialPort(this.mDevice, 0);
    }

    @Override // cn.highlight.tx.usb.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // cn.highlight.tx.usb.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return Collections.singletonList(this.mPort);
    }

    public class Ch340SerialPort extends CommonUsbSerialPort {
        private static final int USB_TIMEOUT_MILLIS = 5000;
        private final int DEFAULT_BAUD_RATE;
        private boolean dtr;
        private UsbEndpoint mReadEndpoint;
        private UsbEndpoint mWriteEndpoint;
        private boolean rts;

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getCD() throws IOException {
            return false;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getCTS() throws IOException {
            return false;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getDSR() throws IOException {
            return false;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getRI() throws IOException {
            return false;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean purgeHwBuffers(boolean z, boolean z2) throws IOException {
            return true;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public /* bridge */ /* synthetic */ int getPortNumber() {
            return super.getPortNumber();
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public /* bridge */ /* synthetic */ String getSerial() {
            return super.getSerial();
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }

        public Ch340SerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.DEFAULT_BAUD_RATE = 9600;
            this.dtr = false;
            this.rts = false;
        }

        @Override // cn.highlight.tx.usb.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return Ch34xSerialDriver.this;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void open(UsbDeviceConnection usbDeviceConnection) throws IOException {
            if (this.mConnection != null) {
                throw new IOException("Already opened.");
            }
            this.mConnection = usbDeviceConnection;
            for (int i = 0; i < this.mDevice.getInterfaceCount(); i++) {
                try {
                    if (this.mConnection.claimInterface(this.mDevice.getInterface(i), true)) {
                        Log.d(Ch34xSerialDriver.TAG, "claimInterface " + i + " SUCCESS");
                    } else {
                        Log.d(Ch34xSerialDriver.TAG, "claimInterface " + i + " FAIL");
                    }
                } catch (Throwable th) {
                    try {
                        close();
                    } catch (IOException unused) {
                    }
                    throw th;
                }
            }
            UsbInterface usbInterface = this.mDevice.getInterface(this.mDevice.getInterfaceCount() - 1);
            for (int i2 = 0; i2 < usbInterface.getEndpointCount(); i2++) {
                UsbEndpoint endpoint = usbInterface.getEndpoint(i2);
                if (endpoint.getType() == 2) {
                    if (endpoint.getDirection() == 128) {
                        this.mReadEndpoint = endpoint;
                    } else {
                        this.mWriteEndpoint = endpoint;
                    }
                }
            }
            initialize();
            setBaudRate(9600);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void close() throws IOException {
            if (this.mConnection == null) {
                throw new IOException("Already closed");
            }
            try {
                this.mConnection.close();
            } finally {
                this.mConnection = null;
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
                if (iBulkTransfer > 0) {
                    Log.d(Ch34xSerialDriver.TAG, "Wrote amt=" + iBulkTransfer + " attempted=" + iMin);
                    i2 += iBulkTransfer;
                } else {
                    throw new IOException("Error writing " + iMin + " bytes at offset " + i2 + " length=" + bArr.length);
                }
            }
            return i2;
        }

        private int controlOut(int i, int i2, int i3) {
            return this.mConnection.controlTransfer(65, i, i2, i3, null, 0, 5000);
        }

        private int controlIn(int i, int i2, int i3, byte[] bArr) {
            return this.mConnection.controlTransfer(FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE, i, i2, i3, bArr, bArr.length, 5000);
        }

        private void checkState(String str, int i, int i2, int[] iArr) throws IOException {
            int i3;
            byte[] bArr = new byte[iArr.length];
            int iControlIn = controlIn(i, i2, 0, bArr);
            if (iControlIn < 0) {
                throw new IOException("Faild send cmd [" + str + "]");
            }
            if (iControlIn != iArr.length) {
                throw new IOException("Expected " + iArr.length + " bytes, but get " + iControlIn + " [" + str + "]");
            }
            for (int i4 = 0; i4 < iArr.length; i4++) {
                if (iArr[i4] != -1 && iArr[i4] != (i3 = bArr[i4] & 255)) {
                    throw new IOException("Expected 0x" + Integer.toHexString(iArr[i4]) + " bytes, but get 0x" + Integer.toHexString(i3) + " [" + str + "]");
                }
            }
        }

        private void writeHandshakeByte() throws IOException {
            if (controlOut(164, ~((this.dtr ? 32 : 0) | (this.rts ? 64 : 0)), 0) < 0) {
                throw new IOException("Faild to set handshake byte");
            }
        }

        private void initialize() throws IOException {
            checkState("init #1", 95, 0, new int[]{-1, 0});
            if (controlOut(161, 0, 0) < 0) {
                throw new IOException("init failed! #2");
            }
            setBaudRate(9600);
            checkState("init #4", 149, 9496, new int[]{-1, 0});
            if (controlOut(154, 9496, 80) < 0) {
                throw new IOException("init failed! #5");
            }
            checkState("init #6", 149, 1798, new int[]{255, 238});
            if (controlOut(161, 20511, 55562) < 0) {
                throw new IOException("init failed! #7");
            }
            setBaudRate(9600);
            writeHandshakeByte();
            checkState("init #10", 149, 1798, new int[]{-1, 238});
        }

        private void setBaudRate(int i) throws IOException {
            int[] iArr = {2400, 55553, 56, 4800, 25602, 31, 9600, 45570, 19, 19200, 55554, 13, 38400, 25603, 10, 115200, 52227, 8};
            for (int i2 = 0; i2 < iArr.length / 3; i2++) {
                int i3 = i2 * 3;
                if (iArr[i3] == i) {
                    if (controlOut(154, 4882, iArr[i3 + 1]) < 0) {
                        throw new IOException("Error setting baud rate. #1");
                    }
                    if (controlOut(154, 3884, iArr[i3 + 2]) < 0) {
                        throw new IOException("Error setting baud rate. #1");
                    }
                    return;
                }
            }
            throw new IOException("Baud rate " + i + " currently not supported");
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            setBaudRate(i);
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getDTR() throws IOException {
            return this.dtr;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
            this.dtr = z;
            writeHandshakeByte();
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public boolean getRTS() throws IOException {
            return this.rts;
        }

        @Override // cn.highlight.tx.usb.CommonUsbSerialPort, cn.highlight.tx.usb.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
            this.rts = z;
            writeHandshakeByte();
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(6790, new int[]{29987});
        return linkedHashMap;
    }
}
