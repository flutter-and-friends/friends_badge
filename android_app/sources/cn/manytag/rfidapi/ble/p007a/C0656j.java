package cn.manytag.rfidapi.ble.p007a;

import cn.manytag.rfidapi.ble.callback.AbstractC0684i;
import cn.manytag.rfidapi.ble.p008b.AbstractC0658a;
import cn.manytag.rfidapi.ble.p008b.C0661d;

/* renamed from: cn.manytag.rfidapi.ble.a.j */
/* loaded from: classes.dex */
class C0656j extends AbstractC0684i {

    /* renamed from: a */
    final /* synthetic */ C0654h f191a;

    C0656j(C0654h c0654h) {
        this.f191a = c0654h;
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0684i
    /* renamed from: a */
    public void mo152a(int i, int i2, byte[] bArr) {
        int size = this.f191a.f189l - this.f191a.f188k.size();
        if (this.f191a.f187j != null) {
            this.f191a.f187j.mo152a(size, this.f191a.f189l, bArr);
        }
        if (this.f191a.f185h) {
            this.f191a.f179b.sendMessageDelayed(this.f191a.f179b.obtainMessage(51), this.f191a.f186i);
        }
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0684i
    /* renamed from: a */
    public void mo153a(AbstractC0658a abstractC0658a) {
        if (this.f191a.f187j != null) {
            this.f191a.f187j.mo153a(new C0661d("exception occur while writing: " + abstractC0658a.m155a()));
        }
        if (this.f191a.f185h) {
            this.f191a.f179b.sendMessageDelayed(this.f191a.f179b.obtainMessage(51), this.f191a.f186i);
        }
    }
}
