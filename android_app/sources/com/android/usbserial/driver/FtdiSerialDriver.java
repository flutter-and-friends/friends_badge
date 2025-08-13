package com.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import com.android.usbserial.driver.UsbSerialPort;
import com.android.usbserial.util.MonotonicClock;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FtdiSerialDriver implements UsbSerialDriver {
    private static final String TAG = FtdiSerialPort.class.getSimpleName();
    private final UsbDevice mDevice;
    private final List<UsbSerialPort> mPorts = new ArrayList();

    public FtdiSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        for (int i = 0; i < usbDevice.getInterfaceCount(); i++) {
            this.mPorts.add(new FtdiSerialPort(this.mDevice, i));
        }
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return this.mPorts;
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public String getDriverName() {
        return TAG;
    }

    public class FtdiSerialPort extends CommonUsbSerialPort {
        private static final int GET_LATENCY_TIMER_REQUEST = 10;
        private static final int GET_MODEM_STATUS_REQUEST = 5;
        private static final int MODEM_CONTROL_DTR_DISABLE = 256;
        private static final int MODEM_CONTROL_DTR_ENABLE = 257;
        private static final int MODEM_CONTROL_REQUEST = 1;
        private static final int MODEM_CONTROL_RTS_DISABLE = 512;
        private static final int MODEM_CONTROL_RTS_ENABLE = 514;
        private static final int MODEM_STATUS_CD = 128;
        private static final int MODEM_STATUS_CTS = 16;
        private static final int MODEM_STATUS_DSR = 32;
        private static final int MODEM_STATUS_RI = 64;
        private static final int READ_HEADER_LENGTH = 2;
        private static final int REQTYPE_DEVICE_TO_HOST = 192;
        private static final int REQTYPE_HOST_TO_DEVICE = 64;
        private static final int RESET_ALL = 0;
        private static final int RESET_PURGE_RX = 1;
        private static final int RESET_PURGE_TX = 2;
        private static final int RESET_REQUEST = 0;
        private static final int SET_BAUD_RATE_REQUEST = 3;
        private static final int SET_DATA_REQUEST = 4;
        private static final int SET_LATENCY_TIMER_REQUEST = 9;
        private static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
        private boolean baudRateWithPort;
        private int breakConfig;
        private boolean dtr;
        private boolean rts;

        public FtdiSerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.baudRateWithPort = false;
            this.dtr = false;
            this.rts = false;
            this.breakConfig = 0;
        }

        @Override // com.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return FtdiSerialDriver.this;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void openInt(UsbDeviceConnection usbDeviceConnection) throws IOException {
            boolean z = true;
            if (!usbDeviceConnection.claimInterface(this.mDevice.getInterface(this.mPortNumber), true)) {
                throw new IOException("Could not claim interface " + this.mPortNumber);
            }
            if (this.mDevice.getInterface(this.mPortNumber).getEndpointCount() < 2) {
                throw new IOException("Not enough endpoints");
            }
            this.mReadEndpoint = this.mDevice.getInterface(this.mPortNumber).getEndpoint(0);
            this.mWriteEndpoint = this.mDevice.getInterface(this.mPortNumber).getEndpoint(1);
            int iControlTransfer = this.mConnection.controlTransfer(64, 0, 0, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer != 0) {
                throw new IOException("Reset failed: result=" + iControlTransfer);
            }
            int iControlTransfer2 = this.mConnection.controlTransfer(64, 1, (this.rts ? MODEM_CONTROL_RTS_ENABLE : 512) | (this.dtr ? 257 : 256), this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer2 != 0) {
                throw new IOException("Init RTS,DTR failed: result=" + iControlTransfer2);
            }
            byte[] rawDescriptors = usbDeviceConnection.getRawDescriptors();
            if (rawDescriptors == null || rawDescriptors.length < 14) {
                throw new IOException("Could not get device descriptors");
            }
            byte b = rawDescriptors[13];
            if (b != 7 && b != 8 && b != 9 && this.mDevice.getInterfaceCount() <= 1) {
                z = false;
            }
            this.baudRateWithPort = z;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void closeInt() {
            try {
                this.mConnection.releaseInterface(this.mDevice.getInterface(this.mPortNumber));
            } catch (Exception unused) {
            }
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public int read(byte[] bArr, int i) throws IOException {
            int i2;
            int i3;
            if (bArr.length <= 2) {
                throw new IllegalArgumentException("Read buffer to small");
            }
            if (i != 0) {
                long jMillis = MonotonicClock.millis() + i;
                do {
                    i3 = super.read(bArr, Math.max(1, (int) (jMillis - MonotonicClock.millis())), false);
                    if (i3 != 2) {
                        break;
                    }
                } while (MonotonicClock.millis() < jMillis);
                if (i3 <= 0 && MonotonicClock.millis() < jMillis) {
                    testConnection();
                }
            } else {
                do {
                    i2 = super.read(bArr, i, false);
                } while (i2 == 2);
                i3 = i2;
            }
            return readFilter(bArr, i3);
        }

        protected int readFilter(byte[] bArr, int i) throws IOException {
            int maxPacketSize = this.mReadEndpoint.getMaxPacketSize();
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i2 + maxPacketSize;
                int i5 = i2 + 2;
                int iMin = Math.min(i4, i) - i5;
                if (iMin < 0) {
                    throw new IOException("Expected at least 2 bytes");
                }
                System.arraycopy(bArr, i5, bArr, i3, iMin);
                i3 += iMin;
                i2 = i4;
            }
            return i3;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:17:0x0050. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00e5  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private void setBaudrate(int r23) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 288
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.usbserial.driver.FtdiSerialDriver.FtdiSerialPort.setBaudrate(int):void");
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            if (i <= 0) {
                throw new IllegalArgumentException("Invalid baud rate: " + i);
            }
            setBaudrate(i);
            if (i2 == 5 || i2 == 6) {
                throw new UnsupportedOperationException("Unsupported data bits: " + i2);
            }
            if (i2 != 7 && i2 != 8) {
                throw new IllegalArgumentException("Invalid data bits: " + i2);
            }
            int i5 = i2 | 0;
            if (i4 != 0) {
                if (i4 == 1) {
                    i5 |= 256;
                } else if (i4 == 2) {
                    i5 |= 512;
                } else if (i4 == 3) {
                    i5 |= 768;
                } else {
                    if (i4 != 4) {
                        throw new IllegalArgumentException("Invalid parity: " + i4);
                    }
                    i5 |= 1024;
                }
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        throw new UnsupportedOperationException("Unsupported stop bits: 1.5");
                    }
                    throw new IllegalArgumentException("Invalid stop bits: " + i3);
                }
                i5 |= 4096;
            }
            int iControlTransfer = this.mConnection.controlTransfer(64, 4, i5, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer != 0) {
                throw new IOException("Setting parameters failed: result=" + iControlTransfer);
            }
            this.breakConfig = i5;
        }

        private int getStatus() throws IOException {
            byte[] bArr = new byte[2];
            int iControlTransfer = this.mConnection.controlTransfer(192, 5, 0, this.mPortNumber + 1, bArr, bArr.length, 5000);
            if (iControlTransfer != 2) {
                throw new IOException("Get modem status failed: result=" + iControlTransfer);
            }
            return bArr[0];
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCD() throws IOException {
            return (getStatus() & 128) != 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() throws IOException {
            return (getStatus() & 16) != 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getDSR() throws IOException {
            return (getStatus() & 32) != 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() throws IOException {
            return this.dtr;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(64, 1, z ? 257 : 256, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer != 0) {
                throw new IOException("Set DTR failed: result=" + iControlTransfer);
            }
            this.dtr = z;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getRI() throws IOException {
            return (getStatus() & 64) != 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() throws IOException {
            return this.rts;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(64, 1, z ? MODEM_CONTROL_RTS_ENABLE : 512, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer != 0) {
                throw new IOException("Set DTR failed: result=" + iControlTransfer);
            }
            this.rts = z;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            int status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if (this.rts) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & 16) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if (this.dtr) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 32) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & 128) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CD);
            }
            if ((status & 64) != 0) {
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
            int iControlTransfer;
            int iControlTransfer2;
            if (z && (iControlTransfer2 = this.mConnection.controlTransfer(64, 0, 1, this.mPortNumber + 1, null, 0, 5000)) != 0) {
                throw new IOException("Purge write buffer failed: result=" + iControlTransfer2);
            }
            if (!z2 || (iControlTransfer = this.mConnection.controlTransfer(64, 0, 2, this.mPortNumber + 1, null, 0, 5000)) == 0) {
                return;
            }
            throw new IOException("Purge read buffer failed: result=" + iControlTransfer);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z) throws IOException {
            int i = this.breakConfig;
            if (z) {
                i |= 16384;
            }
            int iControlTransfer = this.mConnection.controlTransfer(64, 4, i, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            throw new IOException("Setting BREAK failed: result=" + iControlTransfer);
        }

        public void setLatencyTimer(int i) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(64, 9, i, this.mPortNumber + 1, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            throw new IOException("Set latency timer failed: result=" + iControlTransfer);
        }

        public int getLatencyTimer() throws IOException {
            byte[] bArr = new byte[1];
            int iControlTransfer = this.mConnection.controlTransfer(192, 10, 0, this.mPortNumber + 1, bArr, bArr.length, 5000);
            if (iControlTransfer != 1) {
                throw new IOException("Get latency timer failed: result=" + iControlTransfer);
            }
            return bArr[0];
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(1027, new int[]{24577, UsbId.FTDI_FT232H, UsbId.FTDI_FT2232H, UsbId.FTDI_FT4232H, 24597});
        return linkedHashMap;
    }
}
