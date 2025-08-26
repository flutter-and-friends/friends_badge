package cn.manytag.rfidapi.ble.p009c;

import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.callback.BleScanPresenterImp;
import cn.manytag.rfidapi.ble.data.EnumC0689c;
import cn.manytag.rfidapi.ble.p010d.C0685a;
import java.util.UUID;

/* renamed from: cn.manytag.rfidapi.ble.c.j */
/* loaded from: classes.dex */
public class C0672j {

    /* renamed from: a */
    private EnumC0689c f226a = EnumC0689c.STATE_IDLE;

    /* renamed from: b */
    private AbstractC0663a f227b = new C0673k(this);

    /* renamed from: a */
    public static C0672j m178a() {
        return C0675m.f232a;
    }

    /* renamed from: a */
    private synchronized void m179a(UUID[] uuidArr, String[] strArr, String str, boolean z, boolean z2, long j, BleScanPresenterImp bleScanPresenterImp) {
        if (this.f226a != EnumC0689c.STATE_IDLE) {
            C0685a.m202b("scan action already exists, complete the previous scan action first");
            if (bleScanPresenterImp != null) {
                bleScanPresenterImp.onScanStarted(false);
            }
        } else {
            this.f227b.m164a(strArr, str, z, z2, j, bleScanPresenterImp);
            boolean zStartLeScan = C0646a.m50a().m66c().startLeScan(uuidArr, this.f227b);
            this.f226a = zStartLeScan ? EnumC0689c.STATE_SCANNING : EnumC0689c.STATE_IDLE;
            this.f227b.m163a(zStartLeScan);
        }
    }

    /* renamed from: a */
    public void m180a(UUID[] uuidArr, String[] strArr, String str, boolean z, long j, BleScanCallback bleScanCallback) {
        m179a(uuidArr, strArr, str, z, false, j, bleScanCallback);
    }

    /* renamed from: b */
    public synchronized void m181b() {
        C0646a.m50a().m66c().stopLeScan(this.f227b);
        this.f226a = EnumC0689c.STATE_IDLE;
        this.f227b.m169c();
    }
}
