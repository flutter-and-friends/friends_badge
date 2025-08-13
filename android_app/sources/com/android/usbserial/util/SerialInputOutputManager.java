package com.android.usbserial.util;

import android.os.Process;
import android.util.Log;
import com.android.usbserial.driver.UsbSerialPort;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class SerialInputOutputManager implements Runnable {
    private static final int BUFSIZ = 4096;
    private Listener mListener;
    private ByteBuffer mReadBuffer;
    private final UsbSerialPort mSerialPort;
    private static final String TAG = SerialInputOutputManager.class.getSimpleName();
    public static boolean DEBUG = false;
    private int mReadTimeout = 0;
    private int mWriteTimeout = 0;
    private final Object mReadBufferLock = new Object();
    private final Object mWriteBufferLock = new Object();
    private ByteBuffer mWriteBuffer = ByteBuffer.allocate(4096);
    private int mThreadPriority = -19;
    private State mState = State.STOPPED;

    public interface Listener {
        void onNewData(byte[] bArr);

        void onRunError(Exception exc);
    }

    public enum State {
        STOPPED,
        RUNNING,
        STOPPING
    }

    public SerialInputOutputManager(UsbSerialPort usbSerialPort) {
        this.mSerialPort = usbSerialPort;
        this.mReadBuffer = ByteBuffer.allocate(usbSerialPort.getReadEndpoint().getMaxPacketSize());
    }

    public SerialInputOutputManager(UsbSerialPort usbSerialPort, Listener listener) {
        this.mSerialPort = usbSerialPort;
        this.mListener = listener;
        this.mReadBuffer = ByteBuffer.allocate(usbSerialPort.getReadEndpoint().getMaxPacketSize());
    }

    public synchronized void setListener(Listener listener) {
        this.mListener = listener;
    }

    public synchronized Listener getListener() {
        return this.mListener;
    }

    public void setThreadPriority(int i) {
        if (this.mState != State.STOPPED) {
            throw new IllegalStateException("threadPriority only configurable before SerialInputOutputManager is started");
        }
        this.mThreadPriority = i;
    }

    public void setReadTimeout(int i) {
        if (this.mReadTimeout == 0 && i != 0 && this.mState != State.STOPPED) {
            throw new IllegalStateException("readTimeout only configurable before SerialInputOutputManager is started");
        }
        this.mReadTimeout = i;
    }

    public int getReadTimeout() {
        return this.mReadTimeout;
    }

    public void setWriteTimeout(int i) {
        this.mWriteTimeout = i;
    }

    public int getWriteTimeout() {
        return this.mWriteTimeout;
    }

    public void setReadBufferSize(int i) {
        if (getReadBufferSize() == i) {
            return;
        }
        synchronized (this.mReadBufferLock) {
            this.mReadBuffer = ByteBuffer.allocate(i);
        }
    }

    public int getReadBufferSize() {
        return this.mReadBuffer.capacity();
    }

    public void setWriteBufferSize(int i) {
        if (getWriteBufferSize() == i) {
            return;
        }
        synchronized (this.mWriteBufferLock) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i);
            if (this.mWriteBuffer.position() > 0) {
                byteBufferAllocate.put(this.mWriteBuffer.array(), 0, this.mWriteBuffer.position());
            }
            this.mWriteBuffer = byteBufferAllocate;
        }
    }

    public int getWriteBufferSize() {
        return this.mWriteBuffer.capacity();
    }

    public void writeAsync(byte[] bArr) {
        synchronized (this.mWriteBufferLock) {
            this.mWriteBuffer.put(bArr);
        }
    }

    public void start() {
        if (this.mState != State.STOPPED) {
            throw new IllegalStateException("already started");
        }
        new Thread(this, getClass().getSimpleName()).start();
    }

    public synchronized void stop() {
        if (getState() == State.RUNNING) {
            Log.i(TAG, "Stop requested");
            this.mState = State.STOPPING;
        }
    }

    public synchronized State getState() {
        return this.mState;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            if (getState() != State.STOPPED) {
                throw new IllegalStateException("Already running");
            }
            this.mState = State.RUNNING;
        }
        Log.i(TAG, "Running ...");
        try {
            try {
                if (this.mThreadPriority != 0) {
                    Process.setThreadPriority(this.mThreadPriority);
                }
                while (getState() == State.RUNNING) {
                    step();
                }
                Log.i(TAG, "Stopping mState=" + getState());
                synchronized (this) {
                    this.mState = State.STOPPED;
                    Log.i(TAG, "Stopped");
                }
            } catch (Exception e) {
                Log.w(TAG, "Run ending due to exception: " + e.getMessage(), e);
                Listener listener = getListener();
                if (listener != null) {
                    listener.onRunError(e);
                }
                synchronized (this) {
                    this.mState = State.STOPPED;
                    Log.i(TAG, "Stopped");
                }
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.mState = State.STOPPED;
                Log.i(TAG, "Stopped");
                throw th;
            }
        }
    }

    private void step() throws IOException {
        byte[] bArrArray;
        int iPosition;
        synchronized (this.mReadBufferLock) {
            bArrArray = this.mReadBuffer.array();
        }
        int i = this.mSerialPort.read(bArrArray, this.mReadTimeout);
        if (i > 0) {
            if (DEBUG) {
                Log.d(TAG, "Read data len=" + i);
            }
            Listener listener = getListener();
            if (listener != null) {
                byte[] bArr = new byte[i];
                System.arraycopy(bArrArray, 0, bArr, 0, i);
                listener.onNewData(bArr);
            }
        }
        byte[] bArr2 = null;
        synchronized (this.mWriteBufferLock) {
            iPosition = this.mWriteBuffer.position();
            if (iPosition > 0) {
                bArr2 = new byte[iPosition];
                this.mWriteBuffer.rewind();
                this.mWriteBuffer.get(bArr2, 0, iPosition);
                this.mWriteBuffer.clear();
            }
        }
        if (bArr2 != null) {
            if (DEBUG) {
                Log.d(TAG, "Writing data len=" + iPosition);
            }
            this.mSerialPort.write(bArr2, this.mWriteTimeout);
        }
    }
}
