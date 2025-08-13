package cn.highlight.p004tx.serialport;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import cn.highlight.p004tx.listener.OnOpenSerialPortListener;
import cn.highlight.p004tx.listener.OnSerialPortDataListener;
import cn.highlight.p004tx.serialport.thread.SerialPortReadThread;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class SerialPortTxManager extends SerialPortTx {
    private static final String TAG = SerialPortTxManager.class.getSimpleName();
    private FileDescriptor mFd;
    private FileInputStream mFileInputStream;
    private FileOutputStream mFileOutputStream;
    private OnOpenSerialPortListener mOnOpenSerialPortListener;
    private OnSerialPortDataListener mOnSerialPortDataListener;
    private Handler mSendingHandler;
    private HandlerThread mSendingHandlerThread;
    private SerialPortReadThread mSerialPortReadThread;

    public boolean openSerialPort(File file, int i) {
        Log.i(TAG, "openSerialPort: " + String.format("打开串口 %s  波特率 %s", file.getPath(), Integer.valueOf(i)));
        if ((!file.canRead() || !file.canWrite()) && !chmod777(file)) {
            Log.i(TAG, "openSerialPort: 没有读写权限");
            OnOpenSerialPortListener onOpenSerialPortListener = this.mOnOpenSerialPortListener;
            if (onOpenSerialPortListener != null) {
                onOpenSerialPortListener.onFail(file, OnOpenSerialPortListener.Status.NO_READ_WRITE_PERMISSION);
            }
            return false;
        }
        try {
            this.mFd = open(file.getAbsolutePath(), i, 0);
            this.mFileInputStream = new FileInputStream(this.mFd);
            this.mFileOutputStream = new FileOutputStream(this.mFd);
            Log.i(TAG, "openSerialPort: 串口已经打开 " + this.mFd);
            if (this.mOnOpenSerialPortListener != null) {
                this.mOnOpenSerialPortListener.onSuccess(file);
            }
            startSendThread();
            startReadThread();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            OnOpenSerialPortListener onOpenSerialPortListener2 = this.mOnOpenSerialPortListener;
            if (onOpenSerialPortListener2 != null) {
                onOpenSerialPortListener2.onFail(file, OnOpenSerialPortListener.Status.OPEN_FAIL);
            }
            return false;
        }
    }

    public void closeSerialPort() throws IOException {
        if (this.mFd != null) {
            close();
            this.mFd = null;
        }
        stopSendThread();
        stopReadThread();
        FileInputStream fileInputStream = this.mFileInputStream;
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mFileInputStream = null;
        }
        FileOutputStream fileOutputStream = this.mFileOutputStream;
        if (fileOutputStream != null) {
            try {
                fileOutputStream.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.mFileOutputStream = null;
        }
        this.mOnOpenSerialPortListener = null;
        this.mOnSerialPortDataListener = null;
    }

    public SerialPortTxManager setOnOpenSerialPortListener(OnOpenSerialPortListener onOpenSerialPortListener) {
        this.mOnOpenSerialPortListener = onOpenSerialPortListener;
        return this;
    }

    public SerialPortTxManager setOnSerialPortDataListener(OnSerialPortDataListener onSerialPortDataListener) {
        this.mOnSerialPortDataListener = onSerialPortDataListener;
        return this;
    }

    private void startSendThread() {
        this.mSendingHandlerThread = new HandlerThread("mSendingHandlerThread");
        this.mSendingHandlerThread.start();
        this.mSendingHandler = new Handler(this.mSendingHandlerThread.getLooper()) { // from class: cn.highlight.tx.serialport.SerialPortTxManager.1
            @Override // android.os.Handler
            public void handleMessage(Message message) throws IOException {
                byte[] bArr = (byte[]) message.obj;
                if (SerialPortTxManager.this.mFileOutputStream == null || bArr == null || bArr.length <= 0) {
                    return;
                }
                try {
                    SerialPortTxManager.this.mFileOutputStream.write(bArr);
                    if (SerialPortTxManager.this.mOnSerialPortDataListener != null) {
                        SerialPortTxManager.this.mOnSerialPortDataListener.onDataSent(bArr);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        };
    }

    private void stopSendThread() {
        this.mSendingHandler = null;
        HandlerThread handlerThread = this.mSendingHandlerThread;
        if (handlerThread != null) {
            handlerThread.interrupt();
            this.mSendingHandlerThread.quit();
            this.mSendingHandlerThread = null;
        }
    }

    private void startReadThread() {
        this.mSerialPortReadThread = new SerialPortReadThread(this.mFileInputStream) { // from class: cn.highlight.tx.serialport.SerialPortTxManager.2
            @Override // cn.highlight.p004tx.serialport.thread.SerialPortReadThread
            public void onDataReceived(byte[] bArr) {
                if (SerialPortTxManager.this.mOnSerialPortDataListener != null) {
                    SerialPortTxManager.this.mOnSerialPortDataListener.onDataReceived(bArr);
                }
            }
        };
        this.mSerialPortReadThread.start();
    }

    private void stopReadThread() throws IOException {
        SerialPortReadThread serialPortReadThread = this.mSerialPortReadThread;
        if (serialPortReadThread != null) {
            serialPortReadThread.release();
        }
    }

    public boolean sendBytes(byte[] bArr) {
        if (this.mFd == null || this.mFileInputStream == null || this.mFileOutputStream == null || this.mSendingHandler == null) {
            return false;
        }
        Message messageObtain = Message.obtain();
        messageObtain.obj = bArr;
        return this.mSendingHandler.sendMessage(messageObtain);
    }
}
