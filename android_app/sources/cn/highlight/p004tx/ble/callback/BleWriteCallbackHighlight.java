package cn.highlight.p004tx.ble.callback;

import cn.highlight.p004tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleWriteCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onWriteFailure(BleException bleException);

    public abstract void onWriteSuccess(int i, int i2, byte[] bArr);
}
