package cn.manytag.rfidapi;

import android.util.Log;

/* loaded from: classes.dex */
class c extends cn.manytag.rfidapi.ble.callback.d {
    final /* synthetic */ Reader a;

    c(Reader reader) {
        this.a = reader;
    }

    @Override // cn.manytag.rfidapi.ble.callback.d
    public void a(int i) {
        Log.e("MTU", "MTU设置成功：" + i);
    }

    @Override // cn.manytag.rfidapi.ble.callback.d
    public void a(cn.manytag.rfidapi.ble.b.a aVar) {
        Log.e("MTU", "MTU设置失败：" + aVar.a());
    }
}
