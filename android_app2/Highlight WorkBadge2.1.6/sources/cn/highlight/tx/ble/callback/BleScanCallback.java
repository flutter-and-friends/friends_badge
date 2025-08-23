package cn.highlight.tx.ble.callback;

import cn.highlight.tx.ble.data.BleDevice;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BleScanCallback implements BleScanPresenterImp {
    public void onLeScan(BleDevice bleDevice) {
    }

    public abstract void onScanFinished(List<BleDevice> list);
}
