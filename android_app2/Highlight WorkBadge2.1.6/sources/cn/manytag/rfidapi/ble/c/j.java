package cn.manytag.rfidapi.ble.c;

import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.callback.BleScanPresenterImp;
import java.util.UUID;

/* loaded from: classes.dex */
public class j {
    private cn.manytag.rfidapi.ble.data.c a = cn.manytag.rfidapi.ble.data.c.STATE_IDLE;
    private a b = new k(this);

    public static j a() {
        return m.a;
    }

    private synchronized void a(UUID[] uuidArr, String[] strArr, String str, boolean z, boolean z2, long j, BleScanPresenterImp bleScanPresenterImp) {
        if (this.a != cn.manytag.rfidapi.ble.data.c.STATE_IDLE) {
            cn.manytag.rfidapi.ble.d.a.b("scan action already exists, complete the previous scan action first");
            if (bleScanPresenterImp != null) {
                bleScanPresenterImp.onScanStarted(false);
            }
        } else {
            this.b.a(strArr, str, z, z2, j, bleScanPresenterImp);
            boolean zStartLeScan = cn.manytag.rfidapi.ble.a.a().c().startLeScan(uuidArr, this.b);
            this.a = zStartLeScan ? cn.manytag.rfidapi.ble.data.c.STATE_SCANNING : cn.manytag.rfidapi.ble.data.c.STATE_IDLE;
            this.b.a(zStartLeScan);
        }
    }

    public void a(UUID[] uuidArr, String[] strArr, String str, boolean z, long j, BleScanCallback bleScanCallback) {
        a(uuidArr, strArr, str, z, false, j, bleScanCallback);
    }

    public synchronized void b() {
        cn.manytag.rfidapi.ble.a.a().c().stopLeScan(this.b);
        this.a = cn.manytag.rfidapi.ble.data.c.STATE_IDLE;
        this.b.c();
    }
}
