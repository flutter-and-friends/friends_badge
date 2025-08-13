package cn.highlight.p004tx.listener;

/* loaded from: classes.dex */
public interface OnSerialPortDataListener {
    void onDataReceived(byte[] bArr);

    void onDataSent(byte[] bArr);
}
