package cn.manytag.rfidapi.ble.p009c;

import cn.manytag.rfidapi.ble.data.BleDevice;

/* renamed from: cn.manytag.rfidapi.ble.c.b */
/* loaded from: classes.dex */
class RunnableC0664b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ BleDevice f209a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0663a f210b;

    RunnableC0664b(AbstractC0663a abstractC0663a, BleDevice bleDevice) {
        this.f210b = abstractC0663a;
        this.f209a = bleDevice;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f210b.mo161a(this.f209a);
    }
}
