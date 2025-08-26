package cn.highlight.p004tx.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.util.Log;
import java.io.IOException;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FtdiSerialDriver implements UsbSerialDriver {
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    private enum DeviceType {
        TYPE_BM,
        TYPE_AM,
        TYPE_2232C,
        TYPE_R,
        TYPE_2232H,
        TYPE_4232H
    }

    public FtdiSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new FtdiSerialPort(this.mDevice, 0);
    }

    @Override // cn.highlight.p004tx.usb.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // cn.highlight.p004tx.usb.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return Collections.singletonList(this.mPort);
    }

    private class FtdiSerialPort extends CommonUsbSerialPort {
        private static final boolean ENABLE_ASYNC_READS = false;
        public static final int FTDI_DEVICE_IN_REQTYPE = 192;
        public static final int FTDI_DEVICE_OUT_REQTYPE = 64;
        private static final int MODEM_STATUS_HEADER_LENGTH = 2;
        private static final int SIO_MODEM_CTRL_REQUEST = 1;
        private static final int SIO_RESET_PURGE_RX = 1;
        private static final int SIO_RESET_PURGE_TX = 2;
        private static final int SIO_RESET_REQUEST = 0;
        private static final int SIO_RESET_SIO = 0;
        private static final int SIO_SET_BAUD_RATE_REQUEST = 3;
        private static final int SIO_SET_DATA_REQUEST = 4;
        private static final int SIO_SET_FLOW_CTRL_REQUEST = 2;
        public static final int USB_ENDPOINT_IN = 128;
        public static final int USB_ENDPOINT_OUT = 0;
        public static final int USB_READ_TIMEOUT_MILLIS = 5000;
        public static final int USB_RECIP_DEVICE = 0;
        public static final int USB_RECIP_ENDPOINT = 2;
        public static final int USB_RECIP_INTERFACE = 1;
        public static final int USB_RECIP_OTHER = 3;
        public static final int USB_TYPE_CLASS = 0;
        public static final int USB_TYPE_RESERVED = 0;
        public static final int USB_TYPE_STANDARD = 0;
        public static final int USB_TYPE_VENDOR = 0;
        public static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
        private final String TAG;
        private int mInterface;
        private int mMaxPacketSize;
        private DeviceType mType;

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
        public boolean getDTR() throws IOException {
            return false;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getRI() throws IOException {
            return false;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean getRTS() throws IOException {
            return false;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
        }

        public FtdiSerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.TAG = FtdiSerialDriver.class.getSimpleName();
            this.mInterface = 0;
            this.mMaxPacketSize = 64;
        }

        @Override // cn.highlight.p004tx.usb.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return FtdiSerialDriver.this;
        }

        private final int filterStatusBytes(byte[] bArr, byte[] bArr2, int i, int i2) {
            int i3 = i % i2;
            int i4 = 0;
            int i5 = (i / i2) + (i3 == 0 ? 0 : 1);
            while (i4 < i5) {
                int i6 = i4 == i5 + (-1) ? i3 - 2 : i2 - 2;
                if (i6 > 0) {
                    System.arraycopy(bArr, (i4 * i2) + 2, bArr2, (i2 - 2) * i4, i6);
                }
                i4++;
            }
            return i - (i5 * 2);
        }

        public void reset() throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(64, 0, 0, 0, null, 0, 5000);
            if (iControlTransfer != 0) {
                throw new IOException("Reset failed: result=" + iControlTransfer);
            }
            this.mType = DeviceType.TYPE_R;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void open(UsbDeviceConnection usbDeviceConnection) throws IOException {
            if (this.mConnection != null) {
                throw new IOException("Already open");
            }
            this.mConnection = usbDeviceConnection;
            for (int i = 0; i < this.mDevice.getInterfaceCount(); i++) {
                try {
                    if (usbDeviceConnection.claimInterface(this.mDevice.getInterface(i), true)) {
                        Log.d(this.TAG, "claimInterface " + i + " SUCCESS");
                    } else {
                        throw new IOException("Error claiming interface " + i);
                    }
                } catch (Throwable th) {
                    close();
                    this.mConnection = null;
                    throw th;
                }
            }
            reset();
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
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

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public int read(byte[] bArr, int i) throws IOException {
            int iFilterStatusBytes;
            UsbEndpoint endpoint = this.mDevice.getInterface(0).getEndpoint(0);
            synchronized (this.mReadBufferLock) {
                int iBulkTransfer = this.mConnection.bulkTransfer(endpoint, this.mReadBuffer, Math.min(bArr.length, this.mReadBuffer.length), i);
                if (iBulkTransfer < 2) {
                    throw new IOException("Expected at least 2 bytes");
                }
                iFilterStatusBytes = filterStatusBytes(this.mReadBuffer, bArr, iBulkTransfer, endpoint.getMaxPacketSize());
            }
            return iFilterStatusBytes;
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public int write(byte[] bArr, int i) throws IOException {
            int iMin;
            byte[] bArr2;
            int iBulkTransfer;
            UsbEndpoint endpoint = this.mDevice.getInterface(0).getEndpoint(1);
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
                    iBulkTransfer = this.mConnection.bulkTransfer(endpoint, bArr2, iMin, i);
                }
                if (iBulkTransfer <= 0) {
                    throw new IOException("Error writing " + iMin + " bytes at offset " + i2 + " length=" + bArr.length);
                }
                Log.d(this.TAG, "Wrote amtWritten=" + iBulkTransfer + " attempted=" + iMin);
                i2 += iBulkTransfer;
            }
            return i2;
        }

        private int setBaudRate(int i) throws IOException {
            long[] jArrConvertBaudrate = convertBaudrate(i);
            long j = jArrConvertBaudrate[0];
            int iControlTransfer = this.mConnection.controlTransfer(64, 3, (int) jArrConvertBaudrate[2], (int) jArrConvertBaudrate[1], null, 0, 5000);
            if (iControlTransfer == 0) {
                return (int) j;
            }
            throw new IOException("Setting baudrate failed: result=" + iControlTransfer);
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            int i5;
            int i6;
            setBaudRate(i);
            if (i4 == 0) {
                i5 = i2 | 0;
            } else if (i4 == 1) {
                i5 = i2 | 256;
            } else if (i4 == 2) {
                i5 = i2 | 512;
            } else if (i4 == 3) {
                i5 = i2 | 768;
            } else {
                if (i4 != 4) {
                    throw new IllegalArgumentException("Unknown parity value: " + i4);
                }
                i5 = i2 | 1024;
            }
            if (i3 == 1) {
                i6 = i5 | 0;
            } else if (i3 == 2) {
                i6 = i5 | 4096;
            } else {
                if (i3 != 3) {
                    throw new IllegalArgumentException("Unknown stopBits value: " + i3);
                }
                i6 = i5 | 2048;
            }
            int iControlTransfer = this.mConnection.controlTransfer(64, 4, i6, 0, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            throw new IOException("Setting parameters failed: result=" + iControlTransfer);
        }

        private long[] convertBaudrate(int i) {
            int i2;
            int i3;
            int i4 = 24000000 / i;
            int[] iArr = {0, 3, 2, 4, 1, 5, 6, 7};
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i5 >= 2) {
                    i2 = i7;
                    i3 = i8;
                    break;
                }
                int i9 = i4 + i5;
                i2 = 131071;
                if (i9 <= 8) {
                    i2 = 8;
                } else if (this.mType != DeviceType.TYPE_AM && i9 < 12) {
                    i2 = 12;
                } else if (i4 < 16) {
                    i2 = 16;
                } else if (this.mType == DeviceType.TYPE_AM || i9 <= 131071) {
                    i2 = i9;
                }
                i3 = ((i2 / 2) + 24000000) / i2;
                int i10 = i3 < i ? i - i3 : i3 - i;
                if (i5 == 0 || i10 < i6) {
                    if (i10 == 0) {
                        break;
                    }
                    i8 = i3;
                    i6 = i10;
                    i7 = i2;
                }
                i5++;
            }
            long j = (i2 >> 3) | (iArr[i2 & 7] << 14);
            if (j == 1) {
                j = 0;
            } else if (j == 16385) {
                j = 1;
            }
            return new long[]{i3, (this.mType == DeviceType.TYPE_2232C || this.mType == DeviceType.TYPE_2232H || this.mType == DeviceType.TYPE_4232H) ? ((j >> 8) & 65535 & 65280) | 0 : (j >> 16) & 65535, j & 65535};
        }

        @Override // cn.highlight.p004tx.usb.CommonUsbSerialPort, cn.highlight.p004tx.usb.UsbSerialPort
        public boolean purgeHwBuffers(boolean z, boolean z2) throws IOException {
            int iControlTransfer;
            int iControlTransfer2;
            if (z && (iControlTransfer2 = this.mConnection.controlTransfer(64, 0, 1, 0, null, 0, 5000)) != 0) {
                throw new IOException("Flushing RX failed: result=" + iControlTransfer2);
            }
            if (!z2 || (iControlTransfer = this.mConnection.controlTransfer(64, 0, 2, 0, null, 0, 5000)) == 0) {
                return true;
            }
            throw new IOException("Flushing RX failed: result=" + iControlTransfer);
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(1027, new int[]{24577, 24597});
        return linkedHashMap;
    }
}
