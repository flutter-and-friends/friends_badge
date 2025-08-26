package cn.manytag.rfidapi;

import android.util.Log;
import cn.manytag.rfidapi.ble.callback.AbstractC0679d;
import cn.manytag.rfidapi.ble.p008b.AbstractC0658a;

/* renamed from: cn.manytag.rfidapi.c */
/* loaded from: classes.dex */
class C0690c extends AbstractC0679d {

    /* renamed from: a */
    final /* synthetic */ Reader f244a;

    C0690c(Reader reader) {
        this.f244a = reader;
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0679d
    /* renamed from: a */
    public void mo190a(int i) {
        Log.e("MTU", "MTU设置成功：" + i);
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0679d
    /* renamed from: a */
    public void mo191a(AbstractC0658a abstractC0658a) {
        Log.e("MTU", "MTU设置失败：" + abstractC0658a.m155a());
    }
}
