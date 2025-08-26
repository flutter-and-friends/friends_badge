package com.android.usbserial.driver;

import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbDeviceConnection;
import android.hardware.usb.UsbEndpoint;
import android.hardware.usb.UsbRequest;
import android.util.Log;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.android.usbserial.driver.UsbSerialPort;
import com.android.usbserial.util.MonotonicClock;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.EnumSet;

/* loaded from: classes.dex */
public abstract class CommonUsbSerialPort implements UsbSerialPort {
    private static final int DEFAULT_WRITE_BUFFER_SIZE = 16384;
    private static final int MAX_READ_SIZE = 16384;
    private static final String TAG = CommonUsbSerialPort.class.getSimpleName();
    protected final UsbDevice mDevice;
    protected final int mPortNumber;
    protected UsbEndpoint mReadEndpoint;
    protected UsbRequest mUsbRequest;
    protected UsbEndpoint mWriteEndpoint;
    protected UsbDeviceConnection mConnection = null;
    protected final Object mWriteBufferLock = new Object();
    protected byte[] mWriteBuffer = new byte[16384];

    protected abstract void closeInt();

    @Override // com.android.usbserial.driver.UsbSerialPort
    public abstract EnumSet<UsbSerialPort.ControlLine> getControlLines() throws IOException;

    @Override // com.android.usbserial.driver.UsbSerialPort
    public abstract EnumSet<UsbSerialPort.ControlLine> getSupportedControlLines() throws IOException;

    protected abstract void openInt(UsbDeviceConnection usbDeviceConnection) throws IOException;

    @Override // com.android.usbserial.driver.UsbSerialPort
    public abstract void setParameters(int i, int i2, int i3, int i4) throws IOException;

    public CommonUsbSerialPort(UsbDevice usbDevice, int i) {
        this.mDevice = usbDevice;
        this.mPortNumber = i;
    }

    public String toString() {
        return String.format("<%s device_name=%s device_id=%s port_number=%s>", getClass().getSimpleName(), this.mDevice.getDeviceName(), Integer.valueOf(this.mDevice.getDeviceId()), Integer.valueOf(this.mPortNumber));
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public UsbDevice getDevice() {
        return this.mDevice;
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public int getPortNumber() {
        return this.mPortNumber;
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public UsbEndpoint getWriteEndpoint() {
        return this.mWriteEndpoint;
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public UsbEndpoint getReadEndpoint() {
        return this.mReadEndpoint;
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public String getSerial() {
        return this.mConnection.getSerial();
    }

    public final void setWriteBufferSize(int i) {
        synchronized (this.mWriteBufferLock) {
            if (i == this.mWriteBuffer.length) {
                return;
            }
            this.mWriteBuffer = new byte[i];
        }
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public void open(UsbDeviceConnection usbDeviceConnection) throws Exception {
        if (this.mConnection != null) {
            throw new IOException("Already open");
        }
        if (usbDeviceConnection == null) {
            throw new IllegalArgumentException("Connection is null");
        }
        this.mConnection = usbDeviceConnection;
        try {
            openInt(usbDeviceConnection);
            if (this.mReadEndpoint == null || this.mWriteEndpoint == null) {
                throw new IOException("Could not get read & write endpoints");
            }
            this.mUsbRequest = new UsbRequest();
            this.mUsbRequest.initialize(this.mConnection, this.mReadEndpoint);
        } catch (Exception e) {
            try {
                close();
            } catch (Exception unused) {
            }
            throw e;
        }
    }

    @Override // com.android.usbserial.driver.UsbSerialPort, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.mConnection == null) {
            throw new IOException("Already closed");
        }
        try {
            this.mUsbRequest.cancel();
        } catch (Exception unused) {
        }
        this.mUsbRequest = null;
        try {
            closeInt();
        } catch (Exception unused2) {
        }
        try {
            this.mConnection.close();
        } catch (Exception unused3) {
        }
        this.mConnection = null;
    }

    protected void testConnection() throws IOException {
        byte[] bArr = new byte[2];
        if (this.mConnection.controlTransfer(128, 0, 0, 0, bArr, bArr.length, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION) < 0) {
            throw new IOException("USB get_status request failed");
        }
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public int read(byte[] bArr, int i) throws IOException {
        return read(bArr, i, true);
    }

    protected int read(byte[] bArr, int i, boolean z) throws IOException {
        int iPosition;
        if (this.mConnection == null) {
            throw new IOException("Connection closed");
        }
        if (bArr.length <= 0) {
            throw new IllegalArgumentException("Read buffer to small");
        }
        if (i != 0) {
            long jMillis = z ? MonotonicClock.millis() + i : 0L;
            iPosition = this.mConnection.bulkTransfer(this.mReadEndpoint, bArr, Math.min(bArr.length, 16384), i);
            if (iPosition == -1 && z && MonotonicClock.millis() < jMillis) {
                testConnection();
            }
        } else {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            if (!this.mUsbRequest.queue(byteBufferWrap, bArr.length)) {
                throw new IOException("Queueing USB request failed");
            }
            if (this.mConnection.requestWait() == null) {
                throw new IOException("Waiting for USB request failed");
            }
            iPosition = byteBufferWrap.position();
            if (iPosition == 0) {
                testConnection();
            }
        }
        return Math.max(iPosition, 0);
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public void write(byte[] bArr, int i) throws IOException {
        int iMin;
        byte[] bArr2;
        int i2;
        int iBulkTransfer;
        long jMillis = i == 0 ? 0L : MonotonicClock.millis() + i;
        if (this.mConnection == null) {
            throw new IOException("Connection closed");
        }
        int i3 = 0;
        while (i3 < bArr.length) {
            synchronized (this.mWriteBufferLock) {
                iMin = Math.min(bArr.length - i3, this.mWriteBuffer.length);
                if (i3 == 0) {
                    bArr2 = bArr;
                } else {
                    System.arraycopy(bArr, i3, this.mWriteBuffer, 0, iMin);
                    bArr2 = this.mWriteBuffer;
                }
                if (i == 0 || i3 == 0) {
                    i2 = i;
                } else {
                    int iMillis = (int) (jMillis - MonotonicClock.millis());
                    i2 = iMillis == 0 ? -1 : iMillis;
                }
                iBulkTransfer = i2 < 0 ? -2 : this.mConnection.bulkTransfer(this.mWriteEndpoint, bArr2, iMin, i2);
            }
            Log.d(TAG, "Wrote " + iBulkTransfer + "/" + iMin + " offset " + i3 + "/" + bArr.length + " timeout " + i2);
            if (iBulkTransfer <= 0) {
                if (i != 0 && MonotonicClock.millis() >= jMillis) {
                    SerialTimeoutException serialTimeoutException = new SerialTimeoutException("Error writing " + iMin + " bytes at offset " + i3 + " of total " + bArr.length + ", rc=" + iBulkTransfer);
                    serialTimeoutException.bytesTransferred = i3;
                    throw serialTimeoutException;
                }
                throw new IOException("Error writing " + iMin + " bytes at offset " + i3 + " of total " + bArr.length);
            }
            i3 += iBulkTransfer;
        }
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public boolean isOpen() {
        return this.mConnection != null;
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public boolean getCD() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public boolean getCTS() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public boolean getDSR() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public boolean getDTR() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public void setDTR(boolean z) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public boolean getRI() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public boolean getRTS() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public void setRTS(boolean z) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public void purgeHwBuffers(boolean z, boolean z2) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.usbserial.driver.UsbSerialPort
    public void setBreak(boolean z) throws IOException {
        throw new UnsupportedOperationException();
    }
}
