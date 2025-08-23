package cn.manytag.rfidapi.ble.callback;

import cn.manytag.rfidapi.ble.data.BleDevice;

/* loaded from: classes.dex */
public interface BleScanPresenterImp {
    void onScanStarted(boolean z);

    void onScanning(BleDevice bleDevice);
}
