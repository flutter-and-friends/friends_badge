package cn.highlight.tx.ble.callback;

import cn.highlight.tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleMtuChangedCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onMtuChanged(int i);

    public abstract void onSetMTUFailure(BleException bleException);
}
