package cn.highlight.p004tx.usb;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import java.io.IOException;

/* loaded from: classes.dex */
abstract class CommonUsbSerialPort implements UsbSerialPort {
    public static final int DEFAULT_READ_BUFFER_SIZE = 16384;
    public static final int DEFAULT_WRITE_BUFFER_SIZE = 16384;
    protected final UsbDevice mDevice;
    protected final int mPortNumber;
    protected UsbDeviceConnection mConnection = null;
    protected final Object mReadBufferLock = new Object();
    protected final Object mWriteBufferLock = new Object();
    protected byte[] mReadBuffer = new byte[16384];
    protected byte[] mWriteBuffer = new byte[16384];

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract void close() throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract boolean getCD() throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract boolean getCTS() throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract boolean getDSR() throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract boolean getDTR() throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract boolean getRI() throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract boolean getRTS() throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract void open(UsbDeviceConnection usbDeviceConnection) throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public boolean purgeHwBuffers(boolean z, boolean z2) throws IOException {
        return (z || z2) ? false : true;
    }

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract int read(byte[] bArr, int i) throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract void setDTR(boolean z) throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract void setParameters(int i, int i2, int i3, int i4) throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract void setRTS(boolean z) throws IOException;

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public abstract int write(byte[] bArr, int i) throws IOException;

    public CommonUsbSerialPort(UsbDevice usbDevice, int i) {
        this.mDevice = usbDevice;
        this.mPortNumber = i;
    }

    public String toString() {
        return String.format("<%s device_name=%s device_id=%s port_number=%s>", getClass().getSimpleName(), this.mDevice.getDeviceName(), Integer.valueOf(this.mDevice.getDeviceId()), Integer.valueOf(this.mPortNumber));
    }

    public final UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public int getPortNumber() {
        return this.mPortNumber;
    }

    @Override // cn.highlight.p004tx.usb.UsbSerialPort
    public String getSerial() {
        return this.mConnection.getSerial();
    }

    public final void setReadBufferSize(int i) {
        synchronized (this.mReadBufferLock) {
            if (i == this.mReadBuffer.length) {
                return;
            }
            this.mReadBuffer = new byte[i];
        }
    }

    public final void setWriteBufferSize(int i) {
        synchronized (this.mWriteBufferLock) {
            if (i == this.mWriteBuffer.length) {
                return;
            }
            this.mWriteBuffer = new byte[i];
        }
    }
}
