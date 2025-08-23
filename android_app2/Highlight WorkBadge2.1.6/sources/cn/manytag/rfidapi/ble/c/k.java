package cn.manytag.rfidapi.ble.c;

import android.os.Handler;
import android.os.Looper;
import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.callback.BleScanPresenterImp;
import cn.manytag.rfidapi.ble.data.BleDevice;
import java.util.List;

/* loaded from: classes.dex */
class k extends a {
    final /* synthetic */ j a;

    k(j jVar) {
        this.a = jVar;
    }

    @Override // cn.manytag.rfidapi.ble.c.a
    public void a(BleDevice bleDevice) {
        if (this.a.b.a()) {
            cn.manytag.rfidapi.ble.callback.h hVar = (cn.manytag.rfidapi.ble.callback.h) this.a.b.b();
            if (hVar != null) {
                hVar.b(bleDevice);
                return;
            }
            return;
        }
        BleScanCallback bleScanCallback = (BleScanCallback) this.a.b.b();
        if (bleScanCallback != null) {
            bleScanCallback.onLeScan(bleDevice);
        }
    }

    @Override // cn.manytag.rfidapi.ble.c.a
    public void a(List list) {
        if (!this.a.b.a()) {
            BleScanCallback bleScanCallback = (BleScanCallback) this.a.b.b();
            if (bleScanCallback != null) {
                bleScanCallback.onScanFinished(list);
                return;
            }
            return;
        }
        cn.manytag.rfidapi.ble.callback.h hVar = (cn.manytag.rfidapi.ble.callback.h) this.a.b.b();
        if (list == null || list.size() < 1) {
            if (hVar != null) {
                hVar.a(null);
            }
        } else {
            if (hVar != null) {
                hVar.a((BleDevice) list.get(0));
            }
            new Handler(Looper.getMainLooper()).postDelayed(new l(this, list, hVar), 100L);
        }
    }

    @Override // cn.manytag.rfidapi.ble.c.a
    public void b(BleDevice bleDevice) {
        BleScanPresenterImp bleScanPresenterImpB = this.a.b.b();
        if (bleScanPresenterImpB != null) {
            bleScanPresenterImpB.onScanning(bleDevice);
        }
    }

    @Override // cn.manytag.rfidapi.ble.c.a
    public void b(boolean z) {
        BleScanPresenterImp bleScanPresenterImpB = this.a.b.b();
        if (bleScanPresenterImpB != null) {
            bleScanPresenterImpB.onScanStarted(z);
        }
    }
}
