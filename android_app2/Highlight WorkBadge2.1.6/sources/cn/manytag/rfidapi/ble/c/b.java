package cn.manytag.rfidapi.ble.c;

import cn.manytag.rfidapi.ble.data.BleDevice;

/* loaded from: classes.dex */
class b implements Runnable {
    final /* synthetic */ BleDevice a;
    final /* synthetic */ a b;

    b(a aVar, BleDevice bleDevice) {
        this.b = aVar;
        this.a = bleDevice;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.a(this.a);
    }
}
