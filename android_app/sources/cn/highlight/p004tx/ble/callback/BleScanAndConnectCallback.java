package cn.highlight.p004tx.ble.callback;

import cn.highlight.p004tx.ble.data.BleDevice;

/* loaded from: classes.dex */
public abstract class BleScanAndConnectCallback extends BleGattCallback implements BleScanPresenterImp {
    public void onLeScan(BleDevice bleDevice) {
    }

    public abstract void onScanFinished(BleDevice bleDevice);
}
