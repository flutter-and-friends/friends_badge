package cn.manytag.rfidapi.ble.p009c;

import android.os.Handler;
import android.os.Looper;
import cn.manytag.rfidapi.ble.callback.AbstractC0683h;
import cn.manytag.rfidapi.ble.callback.BleScanCallback;
import cn.manytag.rfidapi.ble.callback.BleScanPresenterImp;
import cn.manytag.rfidapi.ble.data.BleDevice;
import java.util.List;

/* renamed from: cn.manytag.rfidapi.ble.c.k */
/* loaded from: classes.dex */
class C0673k extends AbstractC0663a {

    /* renamed from: a */
    final /* synthetic */ C0672j f228a;

    C0673k(C0672j c0672j) {
        this.f228a = c0672j;
    }

    @Override // cn.manytag.rfidapi.ble.p009c.AbstractC0663a
    /* renamed from: a */
    public void mo161a(BleDevice bleDevice) {
        if (this.f228a.f227b.m165a()) {
            AbstractC0683h abstractC0683h = (AbstractC0683h) this.f228a.f227b.m166b();
            if (abstractC0683h != null) {
                abstractC0683h.m200b(bleDevice);
                return;
            }
            return;
        }
        BleScanCallback bleScanCallback = (BleScanCallback) this.f228a.f227b.m166b();
        if (bleScanCallback != null) {
            bleScanCallback.onLeScan(bleDevice);
        }
    }

    @Override // cn.manytag.rfidapi.ble.p009c.AbstractC0663a
    /* renamed from: a */
    public void mo162a(List list) {
        if (!this.f228a.f227b.m165a()) {
            BleScanCallback bleScanCallback = (BleScanCallback) this.f228a.f227b.m166b();
            if (bleScanCallback != null) {
                bleScanCallback.onScanFinished(list);
                return;
            }
            return;
        }
        AbstractC0683h abstractC0683h = (AbstractC0683h) this.f228a.f227b.m166b();
        if (list == null || list.size() < 1) {
            if (abstractC0683h != null) {
                abstractC0683h.m199a(null);
            }
        } else {
            if (abstractC0683h != null) {
                abstractC0683h.m199a((BleDevice) list.get(0));
            }
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0674l(this, list, abstractC0683h), 100L);
        }
    }

    @Override // cn.manytag.rfidapi.ble.p009c.AbstractC0663a
    /* renamed from: b */
    public void mo167b(BleDevice bleDevice) {
        BleScanPresenterImp bleScanPresenterImpM166b = this.f228a.f227b.m166b();
        if (bleScanPresenterImpM166b != null) {
            bleScanPresenterImpM166b.onScanning(bleDevice);
        }
    }

    @Override // cn.manytag.rfidapi.ble.p009c.AbstractC0663a
    /* renamed from: b */
    public void mo168b(boolean z) {
        BleScanPresenterImp bleScanPresenterImpM166b = this.f228a.f227b.m166b();
        if (bleScanPresenterImpM166b != null) {
            bleScanPresenterImpM166b.onScanStarted(z);
        }
    }
}
