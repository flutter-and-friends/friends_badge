package com.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import cn.highlight.p004tx.usb.FtdiSerialDriver;
import com.android.usbserial.driver.UsbSerialPort;
import java.io.IOException;
import java.util.Collections;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class Ch34xSerialDriver implements UsbSerialDriver {
    private static final int GCL_CD = 8;
    private static final int GCL_CTS = 1;
    private static final int GCL_DSR = 2;
    private static final int GCL_RI = 4;
    private static final int LCR_CS5 = 0;
    private static final int LCR_CS6 = 1;
    private static final int LCR_CS7 = 2;
    private static final int LCR_CS8 = 3;
    private static final int LCR_ENABLE_PAR = 8;
    private static final int LCR_ENABLE_RX = 128;
    private static final int LCR_ENABLE_TX = 64;
    private static final int LCR_MARK_SPACE = 32;
    private static final int LCR_PAR_EVEN = 16;
    private static final int LCR_STOP_BITS_2 = 4;
    private static final int SCL_DTR = 32;
    private static final int SCL_RTS = 64;
    private static final String TAG = Ch34xSerialDriver.class.getSimpleName();
    private final UsbDevice mDevice;
    private final UsbSerialPort mPort;

    public Ch34xSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        this.mPort = new Ch340SerialPort(this.mDevice, 0);
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public List<UsbSerialPort> getPorts() {
        return Collections.singletonList(this.mPort);
    }

    @Override // com.android.usbserial.driver.UsbSerialDriver
    public String getDriverName() {
        return TAG;
    }

    public class Ch340SerialPort extends CommonUsbSerialPort {
        private static final int USB_TIMEOUT_MILLIS = 5000;
        private final int DEFAULT_BAUD_RATE;
        private boolean dtr;
        private boolean rts;

        public Ch340SerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.DEFAULT_BAUD_RATE = 9600;
            this.dtr = false;
            this.rts = false;
        }

        @Override // com.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return Ch34xSerialDriver.this;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void openInt(UsbDeviceConnection usbDeviceConnection) throws IOException {
            for (int i = 0; i < this.mDevice.getInterfaceCount(); i++) {
                if (!this.mConnection.claimInterface(this.mDevice.getInterface(i), true)) {
                    throw new IOException("Could not claim data interface");
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

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void closeInt() {
            for (int i = 0; i < this.mDevice.getInterfaceCount(); i++) {
                try {
                    this.mConnection.releaseInterface(this.mDevice.getInterface(i));
                } catch (Exception unused) {
                    return;
                }
            }
        }

        private int controlOut(int i, int i2, int i3) {
            return this.mConnection.controlTransfer(64, i, i2, i3, null, 0, 5000);
        }

        private int controlIn(int i, int i2, int i3, byte[] bArr) {
            return this.mConnection.controlTransfer(FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE, i, i2, i3, bArr, bArr.length, 5000);
        }

        private void checkState(String str, int i, int i2, int[] iArr) throws IOException {
            int i3;
            byte[] bArr = new byte[iArr.length];
            int iControlIn = controlIn(i, i2, 0, bArr);
            if (iControlIn < 0) {
                throw new IOException("Failed send cmd [" + str + "]");
            }
            if (iControlIn != iArr.length) {
                throw new IOException("Expected " + iArr.length + " bytes, but get " + iControlIn + " [" + str + "]");
            }
            for (int i4 = 0; i4 < iArr.length; i4++) {
                if (iArr[i4] != -1 && iArr[i4] != (i3 = bArr[i4] & 255)) {
                    throw new IOException("Expected 0x" + Integer.toHexString(iArr[i4]) + " byte, but get 0x" + Integer.toHexString(i3) + " [" + str + "]");
                }
            }
        }

        private void setControlLines() throws IOException {
            if (controlOut(164, ~((this.dtr ? 32 : 0) | (this.rts ? 64 : 0)), 0) < 0) {
                throw new IOException("Failed to set control lines");
            }
        }

        private byte getStatus() throws IOException {
            byte[] bArr = new byte[2];
            if (controlIn(149, 1798, 0, bArr) < 0) {
                throw new IOException("Error getting control lines");
            }
            return bArr[0];
        }

        private void initialize() throws IOException {
            checkState("init #1", 95, 0, new int[]{-1, 0});
            if (controlOut(161, 0, 0) < 0) {
                throw new IOException("Init failed: #2");
            }
            setBaudRate(9600);
            checkState("init #4", 149, 9496, new int[]{-1, 0});
            if (controlOut(154, 9496, 195) < 0) {
                throw new IOException("Init failed: #5");
            }
            checkState("init #6", 149, 1798, new int[]{-1, -1});
            if (controlOut(161, 20511, 55562) < 0) {
                throw new IOException("Init failed: #7");
            }
            setBaudRate(9600);
            setControlLines();
            checkState("init #10", 149, 1798, new int[]{-1, -1});
        }

        private void setBaudRate(int i) throws IOException {
            long j = 1532620800 / i;
            int i2 = 3;
            while (j > 65520 && i2 > 0) {
                j >>= 3;
                i2--;
            }
            if (j > 65520) {
                throw new UnsupportedOperationException("Unsupported baud rate: " + i);
            }
            long j2 = 65536 - j;
            if (controlOut(154, 4882, (int) ((65280 & j2) | i2 | 128)) < 0) {
                throw new IOException("Error setting baud rate: #1)");
            }
            if (controlOut(154, 3884, (int) (255 & j2)) < 0) {
                throw new IOException("Error setting baud rate: #2");
            }
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            int i5;
            if (i <= 0) {
                throw new IllegalArgumentException("Invalid baud rate: " + i);
            }
            setBaudRate(i);
            if (i2 == 5) {
                i5 = FtdiSerialDriver.FtdiSerialPort.FTDI_DEVICE_IN_REQTYPE;
            } else if (i2 == 6) {
                i5 = 193;
            } else if (i2 == 7) {
                i5 = 194;
            } else {
                if (i2 != 8) {
                    throw new IllegalArgumentException("Invalid data bits: " + i2);
                }
                i5 = 195;
            }
            if (i4 != 0) {
                if (i4 == 1) {
                    i5 |= 8;
                } else if (i4 == 2) {
                    i5 |= 24;
                } else if (i4 == 3) {
                    i5 |= 40;
                } else {
                    if (i4 != 4) {
                        throw new IllegalArgumentException("Invalid parity: " + i4);
                    }
                    i5 |= 56;
                }
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        throw new UnsupportedOperationException("Unsupported stop bits: 1.5");
                    }
                    throw new IllegalArgumentException("Invalid stop bits: " + i3);
                }
                i5 |= 4;
            }
            if (controlOut(154, 9496, i5) < 0) {
                throw new IOException("Error setting control byte");
            }
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCD() throws IOException {
            return (getStatus() & 8) == 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() throws IOException {
            return (getStatus() & 1) == 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getDSR() throws IOException {
            return (getStatus() & 2) == 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() throws IOException {
            return this.dtr;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
            this.dtr = z;
            setControlLines();
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getRI() throws IOException {
            return (getStatus() & 4) == 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() throws IOException {
            return this.rts;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
            this.rts = z;
            setControlLines();
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            byte status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if (this.rts) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & 1) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if (this.dtr) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 2) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & 8) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CD);
            }
            if ((status & 4) == 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RI);
            }
            return enumSetNoneOf;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() throws IOException {
            return EnumSet.allOf(UsbSerialPort.ControlLine.class);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z) throws IOException {
            byte[] bArr = new byte[2];
            if (controlIn(149, 6149, 0, bArr) < 0) {
                throw new IOException("Error getting BREAK condition");
            }
            if (z) {
                bArr[0] = (byte) (bArr[0] & (-2));
                bArr[1] = (byte) (bArr[1] & (-65));
            } else {
                bArr[0] = (byte) (bArr[0] | 1);
                bArr[1] = (byte) (bArr[1] | 64);
            }
            if (controlOut(154, 6149, ((bArr[1] & 255) << 8) | (bArr[0] & 255)) < 0) {
                throw new IOException("Error setting BREAK condition");
            }
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(6790, new int[]{29987, UsbId.QINHENG_CH341A});
        return linkedHashMap;
    }
}
