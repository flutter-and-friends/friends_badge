package cn.manytag.rfidapi.ble.c;

import cn.manytag.rfidapi.ble.data.BleDevice;

/* loaded from: classes.dex */
class d implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ BleDevice b;
    final /* synthetic */ a c;

    d(a aVar, String str, BleDevice bleDevice) {
        this.c = aVar;
        this.a = str;
        this.b = bleDevice;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a != null) {
            this.c.b(this.b);
        }
    }
}
