package cn.highlight.tx.ble.callback;

import cn.highlight.tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleReadCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onReadFailure(BleException bleException);

    public abstract void onReadSuccess(byte[] bArr);
}
