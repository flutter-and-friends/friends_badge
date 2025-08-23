package cn.highlight.tx.serialport.thread;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public abstract class SerialPortReadThread extends Thread {
    private static final String TAG = SerialPortReadThread.class.getSimpleName();
    private InputStream mInputStream;
    private byte[] mReadBuffer = new byte[1024];

    public abstract void onDataReceived(byte[] bArr);

    public SerialPortReadThread(InputStream inputStream) {
        this.mInputStream = inputStream;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws IOException {
        super.run();
        while (!isInterrupted()) {
            try {
                if (this.mInputStream == null) {
                    return;
                }
                Log.i(TAG, "run: ");
                int i = this.mInputStream.read(this.mReadBuffer);
                if (-1 != i && i > 0) {
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.mReadBuffer, 0, bArr, 0, i);
                    Log.i(TAG, "run: readBytes = " + new String(bArr));
                    onDataReceived(bArr);
                }
                return;
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        super.start();
    }

    public void release() throws IOException {
        interrupt();
        InputStream inputStream = this.mInputStream;
        if (inputStream != null) {
            try {
                inputStream.close();
                this.mInputStream = null;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
