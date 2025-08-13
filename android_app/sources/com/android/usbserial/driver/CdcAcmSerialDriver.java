package com.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbInterface;
import android.util.Log;
import com.android.usbserial.driver.UsbSerialPort;
import java.io.IOException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class CdcAcmSerialDriver implements UsbSerialDriver {
    private final UsbDevice mDevice;
    private final String TAG = CdcAcmSerialDriver.class.getSimpleName();
    private final List<UsbSerialPort> mPorts = new ArrayList();

    public CdcAcmSerialDriver(UsbDevice usbDevice) {
        this.mDevice = usbDevice;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < usbDevice.getInterfaceCount(); i3++) {
            i = usbDevice.getInterface(i3).getInterfaceClass() == 2 ? i + 1 : i;
            if (usbDevice.getInterface(i3).getInterfaceClass() == 10) {
                i2++;
            }
        }
        for (int i4 = 0; i4 < Math.min(i, i2); i4++) {
            this.mPorts.add(new CdcAcmSerialPort(this.mDevice, i4));
        }
        if (this.mPorts.size() == 0) {
            this.mPorts.add(new CdcAcmSerialPort(this.mDevice, -1));
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
        return this.TAG;
    }

    public class CdcAcmSerialPort extends CommonUsbSerialPort {
        private static final int GET_LINE_CODING = 33;
        private static final int SEND_BREAK = 35;
        private static final int SET_CONTROL_LINE_STATE = 34;
        private static final int SET_LINE_CODING = 32;
        private static final int USB_RECIP_INTERFACE = 1;
        private static final int USB_RT_ACM = 33;
        private UsbEndpoint mControlEndpoint;
        private int mControlIndex;
        private UsbInterface mControlInterface;
        private UsbInterface mDataInterface;
        private boolean mDtr;
        private boolean mRts;

        public CdcAcmSerialPort(UsbDevice usbDevice, int i) {
            super(usbDevice, i);
            this.mRts = false;
            this.mDtr = false;
        }

        @Override // com.android.usbserial.driver.UsbSerialPort
        public UsbSerialDriver getDriver() {
            return CdcAcmSerialDriver.this;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void openInt(UsbDeviceConnection usbDeviceConnection) throws IOException {
            if (this.mPortNumber == -1) {
                Log.d(CdcAcmSerialDriver.this.TAG, "device might be castrated ACM device, trying single interface logic");
                openSingleInterface();
            } else {
                Log.d(CdcAcmSerialDriver.this.TAG, "trying default interface logic");
                openInterface();
            }
        }

        private void openSingleInterface() throws IOException {
            this.mControlIndex = 0;
            this.mControlInterface = this.mDevice.getInterface(0);
            this.mDataInterface = this.mDevice.getInterface(0);
            if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
                throw new IOException("Could not claim shared control/data interface");
            }
            for (int i = 0; i < this.mControlInterface.getEndpointCount(); i++) {
                UsbEndpoint endpoint = this.mControlInterface.getEndpoint(i);
                if (endpoint.getDirection() == 128 && endpoint.getType() == 3) {
                    this.mControlEndpoint = endpoint;
                } else if (endpoint.getDirection() == 128 && endpoint.getType() == 2) {
                    this.mReadEndpoint = endpoint;
                } else if (endpoint.getDirection() == 0 && endpoint.getType() == 2) {
                    this.mWriteEndpoint = endpoint;
                }
            }
            if (this.mControlEndpoint == null) {
                throw new IOException("No control endpoint");
            }
        }

        private void openInterface() throws IOException {
            Log.d(CdcAcmSerialDriver.this.TAG, "claiming interfaces, count=" + this.mDevice.getInterfaceCount());
            this.mControlInterface = null;
            this.mDataInterface = null;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.mDevice.getInterfaceCount(); i3++) {
                UsbInterface usbInterface = this.mDevice.getInterface(i3);
                if (usbInterface.getInterfaceClass() == 2) {
                    if (i == this.mPortNumber) {
                        this.mControlIndex = i3;
                        this.mControlInterface = usbInterface;
                    }
                    i++;
                }
                if (usbInterface.getInterfaceClass() == 10) {
                    if (i2 == this.mPortNumber) {
                        this.mDataInterface = usbInterface;
                    }
                    i2++;
                }
            }
            if (this.mControlInterface != null) {
                Log.d(CdcAcmSerialDriver.this.TAG, "Control iface=" + this.mControlInterface);
                if (!this.mConnection.claimInterface(this.mControlInterface, true)) {
                    throw new IOException("Could not claim control interface");
                }
                this.mControlEndpoint = this.mControlInterface.getEndpoint(0);
                if (this.mControlEndpoint.getDirection() != 128 || this.mControlEndpoint.getType() != 3) {
                    throw new IOException("Invalid control endpoint");
                }
                if (this.mDataInterface != null) {
                    Log.d(CdcAcmSerialDriver.this.TAG, "data iface=" + this.mDataInterface);
                    if (!this.mConnection.claimInterface(this.mDataInterface, true)) {
                        throw new IOException("Could not claim data interface");
                    }
                    for (int i4 = 0; i4 < this.mDataInterface.getEndpointCount(); i4++) {
                        UsbEndpoint endpoint = this.mDataInterface.getEndpoint(i4);
                        if (endpoint.getDirection() == 128 && endpoint.getType() == 2) {
                            this.mReadEndpoint = endpoint;
                        }
                        if (endpoint.getDirection() == 0 && endpoint.getType() == 2) {
                            this.mWriteEndpoint = endpoint;
                        }
                    }
                    return;
                }
                throw new IOException("No data interface");
            }
            throw new IOException("No control interface");
        }

        private int sendAcmControlMessage(int i, int i2, byte[] bArr) throws IOException {
            int iControlTransfer = this.mConnection.controlTransfer(33, i, i2, this.mControlIndex, bArr, bArr != null ? bArr.length : 0, 5000);
            if (iControlTransfer >= 0) {
                return iControlTransfer;
            }
            throw new IOException("controlTransfer failed");
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort
        protected void closeInt() {
            try {
                this.mConnection.releaseInterface(this.mControlInterface);
                this.mConnection.releaseInterface(this.mDataInterface);
            } catch (Exception unused) {
            }
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setParameters(int i, int i2, int i3, int i4) throws IOException {
            byte b;
            byte b2;
            if (i <= 0) {
                throw new IllegalArgumentException("Invalid baud rate: " + i);
            }
            if (i2 < 5 || i2 > 8) {
                throw new IllegalArgumentException("Invalid data bits: " + i2);
            }
            if (i3 == 1) {
                b = 0;
            } else if (i3 == 2) {
                b = 2;
            } else {
                if (i3 != 3) {
                    throw new IllegalArgumentException("Invalid stop bits: " + i3);
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
                    throw new IllegalArgumentException("Invalid parity: " + i4);
                }
                b2 = 4;
            }
            sendAcmControlMessage(32, 0, new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 24) & 255), b, b2, (byte) i2});
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getDTR() throws IOException {
            return this.mDtr;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setDTR(boolean z) throws IOException {
            this.mDtr = z;
            setDtrRts();
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public boolean getRTS() throws IOException {
            return this.mRts;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setRTS(boolean z) throws IOException {
            this.mRts = z;
            setDtrRts();
        }

        private void setDtrRts() throws IOException {
            sendAcmControlMessage(34, (this.mRts ? 2 : 0) | (this.mDtr ? 1 : 0), null);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException {
            EnumSet<UsbSerialPort.ControlLine> enumSetNoneOf = EnumSet.noneOf(UsbSerialPort.ControlLine.class);
            if (this.mRts) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.RTS);
            }
            if (this.mDtr) {
                enumSetNoneOf.add(UsbSerialPort.ControlLine.DTR);
            }
            return enumSetNoneOf;
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() throws IOException {
            return EnumSet.of(UsbSerialPort.ControlLine.RTS, UsbSerialPort.ControlLine.DTR);
        }

        @Override // com.android.usbserial.driver.CommonUsbSerialPort, com.android.usbserial.driver.UsbSerialPort
        public void setBreak(boolean z) throws IOException {
            sendAcmControlMessage(35, z ? 65535 : 0, null);
        }
    }

    public static Map<Integer, int[]> getSupportedDevices() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(9025, new int[]{1, 67, 16, 66, 59, 68, 63, 68, 32822, 32823});
        linkedHashMap.put(5824, new int[]{1155});
        linkedHashMap.put(1003, new int[]{8260});
        linkedHashMap.put(7855, new int[]{4});
        linkedHashMap.put(Integer.valueOf(UsbId.VENDOR_ARM), new int[]{UsbId.ARM_MBED});
        linkedHashMap.put(1155, new int[]{UsbId.ST_CDC});
        return linkedHashMap;
    }
}
