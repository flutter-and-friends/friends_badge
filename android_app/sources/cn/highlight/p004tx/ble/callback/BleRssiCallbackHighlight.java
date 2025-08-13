package cn.highlight.p004tx.ble.callback;

import cn.highlight.p004tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleRssiCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onRssiFailure(BleException bleException);

    public abstract void onRssiSuccess(int i);
}
