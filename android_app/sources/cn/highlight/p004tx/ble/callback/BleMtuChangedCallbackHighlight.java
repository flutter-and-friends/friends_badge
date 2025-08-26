package cn.highlight.p004tx.ble.callback;

import cn.highlight.p004tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleMtuChangedCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onMtuChanged(int i);

    public abstract void onSetMTUFailure(BleException bleException);
}
