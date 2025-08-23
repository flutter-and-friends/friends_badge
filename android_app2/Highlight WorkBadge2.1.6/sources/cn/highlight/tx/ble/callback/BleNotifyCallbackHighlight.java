package cn.highlight.tx.ble.callback;

import cn.highlight.tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleNotifyCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onCharacteristicChanged(byte[] bArr);

    public abstract void onNotifyFailure(BleException bleException);

    public abstract void onNotifySuccess();
}
