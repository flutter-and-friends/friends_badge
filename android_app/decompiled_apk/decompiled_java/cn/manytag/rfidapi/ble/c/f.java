package cn.manytag.rfidapi.ble.c;

/* loaded from: classes.dex */
class f implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ a b;

    f(a aVar, boolean z) {
        this.b = aVar;
        this.a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.b(this.a);
    }
}
