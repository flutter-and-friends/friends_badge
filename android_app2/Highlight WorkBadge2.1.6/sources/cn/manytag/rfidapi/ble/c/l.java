package cn.manytag.rfidapi.ble.c;

import cn.manytag.rfidapi.ble.data.BleDevice;
import java.util.List;

/* loaded from: classes.dex */
class l implements Runnable {
    final /* synthetic */ List a;
    final /* synthetic */ cn.manytag.rfidapi.ble.callback.h b;
    final /* synthetic */ k c;

    l(k kVar, List list, cn.manytag.rfidapi.ble.callback.h hVar) {
        this.c = kVar;
        this.a = list;
        this.b = hVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        cn.manytag.rfidapi.ble.a.a().a((BleDevice) this.a.get(0), this.b);
    }
}
