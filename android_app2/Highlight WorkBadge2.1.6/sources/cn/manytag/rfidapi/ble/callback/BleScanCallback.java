package cn.manytag.rfidapi.ble.callback;

import cn.manytag.rfidapi.ble.data.BleDevice;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BleScanCallback implements BleScanPresenterImp {
    public void onLeScan(BleDevice bleDevice) {
    }

    public abstract void onScanFinished(List list);
}
