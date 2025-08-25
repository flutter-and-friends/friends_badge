package cn.highlight.tx.ble.callback;

import cn.highlight.tx.ble.data.BleDevice;

/* loaded from: classes.dex */
public abstract class BleScanAndConnectCallback extends BleGattCallback implements BleScanPresenterImp {
    public void onLeScan(BleDevice bleDevice) {
    }

    public abstract void onScanFinished(BleDevice bleDevice);
}
