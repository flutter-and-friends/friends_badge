package cn.highlight.p004tx.ble.callback;

import cn.highlight.p004tx.ble.data.BleDevice;

/* loaded from: classes.dex */
public interface BleScanPresenterImp {
    void onScanStarted(boolean z);

    void onScanning(BleDevice bleDevice);
}
