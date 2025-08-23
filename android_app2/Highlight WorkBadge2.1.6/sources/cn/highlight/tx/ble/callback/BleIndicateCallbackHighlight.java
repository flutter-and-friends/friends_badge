package cn.highlight.tx.ble.callback;

import cn.highlight.tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleIndicateCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onCharacteristicChanged(byte[] bArr);

    public abstract void onIndicateFailure(BleException bleException);

    public abstract void onIndicateSuccess();
}
