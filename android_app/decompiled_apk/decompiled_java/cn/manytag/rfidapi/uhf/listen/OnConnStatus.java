package cn.manytag.rfidapi.uhf.listen;

/* loaded from: classes.dex */
public interface OnConnStatus {
    void connFail();

    void connSuccess();

    void disConnected();
}
