package cn.highlight.p004tx.ble.callback;

import cn.highlight.p004tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleReadCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onReadFailure(BleException bleException);

    public abstract void onReadSuccess(byte[] bArr);
}
