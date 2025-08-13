package com.android.usbserial.driver;

import android.device.scanner.configuration.PropertyID;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import cn.highlight.p004tx.app.CmdCenter;
import cn.highlight.work_card_write.util.NFC;
import com.android.usbserial.driver.UsbSerialPort;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public class Cp21xxSerialDriver implements UsbSerialDriver {
    private static final String TAG = Cp21xxSerialDriver.class.getSimpleName();
    private final UsbDevice mDevice;
    private final List<UsbSerialPort> mPorts = new ArrayList();

    public Cp21xxSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        for (int i = 0; i < usbDevice.getInterfaceCount(); i++) {
            this.mPorts.add(new Cp21xxSerialPort(this.mDevice, i));
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

    public class Cp21xxSerialPort extends CommonUsbSerialPort {
        private static final int DTR_DISABLE = 256;
        private static final int DTR_ENABLE = 257;
        private static final int FLUSH_READ_CODE = 10;
        private static final int FLUSH_WRITE_CODE = 5;
        private static final int REQTYPE_DEVICE_TO_HOST = 193;
        private static final int REQTYPE_HOST_TO_DEVICE = 65;
        private static final int RTS_DISABLE = 512;
        private static final int RTS_ENABLE = 514;
        private static final int SILABSER_FLUSH_REQUEST_CODE = 18;
        private static final int SILABSER_GET_MDMSTS_REQUEST_CODE = 8;
        private static final int SILABSER_IFC_ENABLE_REQUEST_CODE = 0;
        private static final int SILABSER_SET_BAUDRATE = 30;
        private static final int SILABSER_SET_BREAK_REQUEST_CODE = 5;
        private static final int SILABSER_SET_LINE_CTL_REQUEST_CODE = 3;
        private static final int SILABSER_SET_MHS_REQUEST_CODE = 7;
        private static final int STATUS_CD = 128;
        private static final int STATUS_CTS = 16;
        private static final int STATUS_DSR = 32;
        private static final int STATUS_RI = 64;
        private static final int UART_DISABLE = 0;
        private static final int UART_ENABLE = 1;
        private static final int USB_WRITE_TIMEOUT_MILLIS = 5000;
        private boolean dtr;
        private boolean mIsRestrictedPort;
        private boolean rts;

        public Cp21xxSerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.dtr = false;
            this.rts = false;
        }

        @Override // com.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return Cp21xxSerialDriver.this;
        }

        private void setConfigSingle(int i, int i2) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(65, i, i2, this.mPortNumber, null, 0, 5000);
            if (iControlTransfer == 0) {
                return;
            }
            throw new IOException("Control transfer failed: " + i + " / " + i2 + " -> " + iControlTransfer);
        }

        private byte getStatus() throws IOException {
            byte[] bArr = new byte[1];
            int iControlTransfer = this.mConnection.controlTransfer(REQTYPE_DEVICE_TO_HOST, 8, 0, this.mPortNumber, bArr, bArr.length, 5000);
            if (iControlTransfer != 1) {
                throw new IOException("Control transfer failed: 8 / 0 -> " + iControlTransfer);
            }
            return bArr[0];
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void openInt(UsbDeviceConnection usbDeviceConnection) throws IOException {
            this.mIsRestrictedPort = this.mDevice.getInterfaceCount() == 2 && this.mPortNumber == 1;
            if (this.mPortNumber >= this.mDevice.getInterfaceCount()) {
                throw new IOException("Unknown port number");
            }
            UsbInterface usbInterface = this.mDevice.getInterface(this.mPortNumber);
            if (!this.mConnection.claimInterface(usbInterface, true)) {
                throw new IOException("Could not claim interface " + this.mPortNumber);
            }
            for (int i = 0; i < usbInterface.getEndpointCount(); i++) {
                UsbEndpoint endpoint = usbInterface.getEndpoint(i);
                if (endpoint.getType() == 2) {
                    if (endpoint.getDirection() == 128) {
                        this.mReadEndpoint = endpoint;
                    } else {
                        this.mWriteEndpoint = endpoint;
                    }
                }
            }
            setConfigSingle(0, 1);
            setConfigSingle(7, (this.dtr ? 257 : 256) | (this.rts ? RTS_ENABLE : 512));
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void closeInt() {
            try {
                setConfigSingle(0, 0);
            } catch (Exception unused) {
            }
            try {
                this.mConnection.releaseInterface(this.mDevice.getInterface(this.mPortNumber));
            } catch (Exception unused2) {
            }
        }

        private void setBaudRate(int i) throws IOException {
            if (this.mConnection.controlTransfer(65, 30, 0, this.mPortNumber, new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255)}, 4, 5000) < 0) {
                throw new IOException("Error setting baud rate");
            }
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            int i5;
            if (i <= 0) {
                throw new IllegalArgumentException("Invalid baud rate: " + i);
            }
            setBaudRate(i);
            if (i2 != 5) {
                if (i2 != 6) {
                    if (i2 != 7) {
                        if (i2 != 8) {
                            throw new IllegalArgumentException("Invalid data bits: " + i2);
                        }
                        i5 = 2048;
                    } else {
                        if (this.mIsRestrictedPort) {
                            throw new UnsupportedOperationException("Unsupported data bits: " + i2);
                        }
                        i5 = NFC.f131S7;
                    }
                } else {
                    if (this.mIsRestrictedPort) {
                        throw new UnsupportedOperationException("Unsupported data bits: " + i2);
                    }
                    i5 = NFC.f130S6;
                }
            } else {
                if (this.mIsRestrictedPort) {
                    throw new UnsupportedOperationException("Unsupported data bits: " + i2);
                }
                i5 = PropertyID.UPCA_ENABLE;
            }
            if (i4 != 0) {
                if (i4 == 1) {
                    i5 |= 16;
                } else if (i4 == 2) {
                    i5 |= 32;
                } else if (i4 != 3) {
                    if (i4 == 4) {
                        if (this.mIsRestrictedPort) {
                            throw new UnsupportedOperationException("Unsupported parity: space");
                        }
                        i5 |= 64;
                    } else {
                        throw new IllegalArgumentException("Invalid parity: " + i4);
                    }
                } else {
                    if (this.mIsRestrictedPort) {
                        throw new UnsupportedOperationException("Unsupported parity: mark");
                    }
                    i5 |= 48;
                }
            }
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 == 3) {
                        throw new UnsupportedOperationException("Unsupported stop bits: 1.5");
                    }
                    throw new IllegalArgumentException("Invalid stop bits: " + i3);
                }
                if (this.mIsRestrictedPort) {
                    throw new UnsupportedOperationException("Unsupported stop bits: 2");
                }
                i5 |= 2;
            }
            setConfigSingle(3, i5);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCD() throws IOException {
            return (getStatus() & ByteCompanionObject.MIN_VALUE) != 0;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getCTS() throws IOException {
            return (getStatus() & CmdCenter.CMD_openMoreCabinet) != 0;
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
            this.dtr = z;
            setConfigSingle(7, this.dtr ? 257 : 256);
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
            this.rts = z;
            setConfigSingle(7, this.rts ? RTS_ENABLE : 512);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            byte status = getStatus();
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if (this.rts) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if ((status & CmdCenter.CMD_openMoreCabinet) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.CTS);
            }
            if (this.dtr) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            if ((status & 32) != 0) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DSR);
            }
            if ((status & ByteCompanionObject.MIN_VALUE) != 0) {
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
            int i = (z2 ? 10 : 0) | (z ? 5 : 0);
            if (i != 0) {
                setConfigSingle(18, i);
            }
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z) throws IOException {
            setConfigSingle(5, z ? 1 : 0);
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(4292, new int[]{60000, 60016, 60017});
        return linkedHashMap;
    }
}
