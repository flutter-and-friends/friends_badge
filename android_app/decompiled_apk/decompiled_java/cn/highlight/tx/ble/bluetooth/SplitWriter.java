package cn.highlight.tx.ble.bluetooth;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import cn.highlight.tx.ble.BleManager;
import cn.highlight.tx.ble.callback.BleWriteCallbackHighlight;
import cn.highlight.tx.ble.exception.BleException;
import cn.highlight.tx.ble.exception.OtherException;
import cn.highlight.tx.ble.utils.BleLog;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class SplitWriter {
    private BleBluetooth mBleBluetooth;
    private BleWriteCallbackHighlight mCallback;
    private int mCount;
    private byte[] mData;
    private Queue<byte[]> mDataQueue;
    private Handler mHandler;
    private HandlerThread mHandlerThread = new HandlerThread("splitWriter");
    private long mIntervalBetweenTwoPackage;
    private boolean mSendNextWhenLastSuccess;
    private int mTotalNum;
    private String mUuid_service;
    private String mUuid_write;

    public SplitWriter() {
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: cn.highlight.tx.ble.bluetooth.SplitWriter.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (message.what == 51) {
                    SplitWriter.this.write();
                }
            }
        };
    }

    public void splitWrite(BleBluetooth bleBluetooth, String str, String str2, byte[] bArr, boolean z, long j, BleWriteCallbackHighlight bleWriteCallbackHighlight) {
        this.mBleBluetooth = bleBluetooth;
        this.mUuid_service = str;
        this.mUuid_write = str2;
        this.mData = bArr;
        this.mSendNextWhenLastSuccess = z;
        this.mIntervalBetweenTwoPackage = j;
        this.mCount = BleManager.getInstance().getSplitWriteNum();
        this.mCallback = bleWriteCallbackHighlight;
        splitWrite();
    }

    private void splitWrite() {
        byte[] bArr = this.mData;
        if (bArr == null) {
            throw new IllegalArgumentException("data is Null!");
        }
        int i = this.mCount;
        if (i < 1) {
            throw new IllegalArgumentException("split count should higher than 0!");
        }
        this.mDataQueue = splitByte(bArr, i);
        this.mTotalNum = this.mDataQueue.size();
        write();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void write() {
        if (this.mDataQueue.peek() == null) {
            release();
            return;
        }
        this.mBleBluetooth.newBleConnector().withUUIDString(this.mUuid_service, this.mUuid_write).writeCharacteristic(this.mDataQueue.poll(), new BleWriteCallbackHighlight() { // from class: cn.highlight.tx.ble.bluetooth.SplitWriter.2
            @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
            public void onWriteSuccess(int i, int i2, byte[] bArr) {
                int size = SplitWriter.this.mTotalNum - SplitWriter.this.mDataQueue.size();
                if (SplitWriter.this.mCallback != null) {
                    SplitWriter.this.mCallback.onWriteSuccess(size, SplitWriter.this.mTotalNum, bArr);
                }
                if (SplitWriter.this.mSendNextWhenLastSuccess) {
                    SplitWriter.this.mHandler.sendMessageDelayed(SplitWriter.this.mHandler.obtainMessage(51), SplitWriter.this.mIntervalBetweenTwoPackage);
                }
            }

            @Override // cn.highlight.tx.ble.callback.BleWriteCallbackHighlight
            public void onWriteFailure(BleException bleException) {
                if (SplitWriter.this.mCallback != null) {
                    SplitWriter.this.mCallback.onWriteFailure(new OtherException("exception occur while writing: " + bleException.getDescription()));
                }
                if (SplitWriter.this.mSendNextWhenLastSuccess) {
                    SplitWriter.this.mHandler.sendMessageDelayed(SplitWriter.this.mHandler.obtainMessage(51), SplitWriter.this.mIntervalBetweenTwoPackage);
                }
            }
        }, this.mUuid_write);
        if (this.mSendNextWhenLastSuccess) {
            return;
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(51), this.mIntervalBetweenTwoPackage);
    }

    private void release() {
        this.mHandlerThread.quit();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private static Queue<byte[]> splitByte(byte[] bArr, int i) {
        int iRound;
        byte[] bArr2;
        if (i > 20) {
            BleLog.w("Be careful: split count beyond 20! Ensure MTU higher than 23!");
        }
        LinkedList linkedList = new LinkedList();
        if (bArr.length % i == 0) {
            iRound = bArr.length / i;
        } else {
            iRound = Math.round((bArr.length / i) + 1);
        }
        if (iRound > 0) {
            for (int i2 = 0; i2 < iRound; i2++) {
                if (iRound == 1 || i2 == iRound - 1) {
                    int length = bArr.length % i == 0 ? i : bArr.length % i;
                    byte[] bArr3 = new byte[length];
                    System.arraycopy(bArr, i2 * i, bArr3, 0, length);
                    bArr2 = bArr3;
                } else {
                    bArr2 = new byte[i];
                    System.arraycopy(bArr, i2 * i, bArr2, 0, i);
                }
                linkedList.offer(bArr2);
            }
        }
        return linkedList;
    }
}
