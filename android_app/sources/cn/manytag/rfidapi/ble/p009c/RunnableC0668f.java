package cn.manytag.rfidapi.ble.p009c;

/* renamed from: cn.manytag.rfidapi.ble.c.f */
/* loaded from: classes.dex */
class RunnableC0668f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f216a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0663a f217b;

    RunnableC0668f(AbstractC0663a abstractC0663a, boolean z) {
        this.f217b = abstractC0663a;
        this.f216a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f217b.mo168b(this.f216a);
    }
}
