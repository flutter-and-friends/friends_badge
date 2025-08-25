package cn.highlight.tx.usb;

import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class SerialInputOutputManager implements Runnable {
    private static final int BUFSIZ = 4096;
    private static final boolean DEBUG = true;
    private static final int READ_WAIT_MILLIS = 50;
    private static final String TAG = SerialInputOutputManager.class.getSimpleName();
    private final UsbSerialPort mDriver;
    private Listener mListener;
    private final ByteBuffer mReadBuffer;
    private State mState;
    private final ByteBuffer mWriteBuffer;

    public interface Listener {
        void onNewData(byte[] bArr);

        void onRunError(Exception exc);
    }

    private enum State {
        STOPPED,
        RUNNING,
        STOPPING
    }

    public SerialInputOutputManager(UsbSerialPort usbSerialPort) {
        this(usbSerialPort, null);
    }

    public SerialInputOutputManager(UsbSerialPort usbSerialPort, Listener listener) {
        this.mReadBuffer = ByteBuffer.allocate(4096);
        this.mWriteBuffer = ByteBuffer.allocate(4096);
        this.mState = State.STOPPED;
        this.mDriver = usbSerialPort;
        this.mListener = listener;
    }

    public synchronized void setListener(Listener listener) {
        this.mListener = listener;
    }

    public synchronized Listener getListener() {
        return this.mListener;
    }

    public void writeAsync(byte[] bArr) {
        synchronized (this.mWriteBuffer) {
            this.mWriteBuffer.put(bArr);
        }
    }

    public synchronized void stop() {
        if (getState() == State.RUNNING) {
            Log.i(TAG, "Stop requested");
            this.mState = State.STOPPING;
        }
    }

    private synchronized State getState() {
        return this.mState;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            if (getState() != State.STOPPED) {
                throw new IllegalStateException("Already running.");
            }
            this.mState = State.RUNNING;
        }
        Log.i(TAG, "Running ..");
        while (getState() == State.RUNNING) {
            try {
                try {
                    step();
                } catch (Exception e) {
                    Log.w(TAG, "Run ending due to exception: " + e.getMessage(), e);
                    Listener listener = getListener();
                    if (listener != null) {
                        listener.onRunError(e);
                    }
                    synchronized (this) {
                        this.mState = State.STOPPED;
                        Log.i(TAG, "Stopped.");
                        return;
                    }
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this.mState = State.STOPPED;
                    Log.i(TAG, "Stopped.");
                    throw th;
                }
            }
        }
        Log.i(TAG, "Stopping mState=" + getState());
        synchronized (this) {
            this.mState = State.STOPPED;
            Log.i(TAG, "Stopped.");
        }
    }

    private void step() throws IOException {
        int iPosition;
        int i = this.mDriver.read(this.mReadBuffer.array(), 50);
        if (i > 0) {
            Log.d(TAG, "Read data len=" + i);
            Listener listener = getListener();
            if (listener != null) {
                byte[] bArr = new byte[i];
                this.mReadBuffer.get(bArr, 0, i);
                listener.onNewData(bArr);
            }
            this.mReadBuffer.clear();
        }
        byte[] bArr2 = null;
        synchronized (this.mWriteBuffer) {
            iPosition = this.mWriteBuffer.position();
            if (iPosition > 0) {
                bArr2 = new byte[iPosition];
                this.mWriteBuffer.rewind();
                this.mWriteBuffer.get(bArr2, 0, iPosition);
                this.mWriteBuffer.clear();
            }
        }
        if (bArr2 != null) {
            Log.d(TAG, "Writing data len=" + iPosition);
            this.mDriver.write(bArr2, 50);
        }
    }

    private void step2() throws IOException {
        int iPosition;
        int i = this.mDriver.read(this.mReadBuffer.array(), 50);
        if (i > 0) {
            Log.d(TAG, "Read data len=" + i);
            Listener listener = getListener();
            if (listener != null) {
                byte[] bArr = new byte[i];
                this.mReadBuffer.get(bArr, 0, i);
                listener.onNewData(bArr);
            }
            this.mReadBuffer.clear();
        }
        byte[] bArr2 = null;
        synchronized (this.mWriteBuffer) {
            iPosition = this.mWriteBuffer.position();
            if (iPosition > 0) {
                bArr2 = new byte[iPosition];
                this.mWriteBuffer.rewind();
                this.mWriteBuffer.get(bArr2, 0, iPosition);
                this.mWriteBuffer.clear();
            }
        }
        if (bArr2 != null) {
            Log.d(TAG, "Writing data len=" + iPosition);
            this.mDriver.write(bArr2, 50);
        }
    }

    public void write(byte[] bArr) throws IOException {
        this.mDriver.write(bArr, 50);
    }

    public void CleanBuffer() {
        this.mReadBuffer.clear();
    }

    public byte[] read() throws IOException {
        int i = this.mDriver.read(this.mReadBuffer.array(), 50);
        if (i > 0) {
            Log.d(TAG, "Read data len=" + i);
            byte[] bArr = new byte[i];
            this.mReadBuffer.get(bArr, 0, i);
            this.mReadBuffer.clear();
            return bArr;
        }
        this.mReadBuffer.clear();
        return null;
    }
}
