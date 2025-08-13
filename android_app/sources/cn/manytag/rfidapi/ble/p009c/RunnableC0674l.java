package cn.manytag.rfidapi.ble.p009c;

import cn.manytag.rfidapi.ble.C0646a;
import cn.manytag.rfidapi.ble.callback.AbstractC0683h;
import cn.manytag.rfidapi.ble.data.BleDevice;
import java.util.List;

/* renamed from: cn.manytag.rfidapi.ble.c.l */
/* loaded from: classes.dex */
class RunnableC0674l implements Runnable {

    /* renamed from: a */
    final /* synthetic */ List f229a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0683h f230b;

    /* renamed from: c */
    final /* synthetic */ C0673k f231c;

    RunnableC0674l(C0673k c0673k, List list, AbstractC0683h abstractC0683h) {
        this.f231c = c0673k;
        this.f229a = list;
        this.f230b = abstractC0683h;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0646a.m50a().m51a((BleDevice) this.f229a.get(0), this.f230b);
    }
}
