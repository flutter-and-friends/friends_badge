package cn.manytag.rfidapi.ble.p009c;

import cn.manytag.rfidapi.ble.data.BleDevice;

/* renamed from: cn.manytag.rfidapi.ble.c.d */
/* loaded from: classes.dex */
class RunnableC0666d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f212a;

    /* renamed from: b */
    final /* synthetic */ BleDevice f213b;

    /* renamed from: c */
    final /* synthetic */ AbstractC0663a f214c;

    RunnableC0666d(AbstractC0663a abstractC0663a, String str, BleDevice bleDevice) {
        this.f214c = abstractC0663a;
        this.f212a = str;
        this.f213b = bleDevice;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f212a != null) {
            this.f214c.mo167b(this.f213b);
        }
    }
}
