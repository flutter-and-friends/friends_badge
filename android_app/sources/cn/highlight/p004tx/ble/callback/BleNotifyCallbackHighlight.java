package cn.highlight.p004tx.ble.callback;

import cn.highlight.p004tx.ble.exception.BleException;

/* loaded from: classes.dex */
public abstract class BleNotifyCallbackHighlight extends BleBaseCallbackHighlight {
    public abstract void onCharacteristicChanged(byte[] bArr);

    public abstract void onNotifyFailure(BleException bleException);

    public abstract void onNotifySuccess();
}
