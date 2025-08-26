package cn.manytag.rfidapi.uhf;

import cn.manytag.rfidapi.ble.callback.AbstractC0680e;
import cn.manytag.rfidapi.ble.p008b.AbstractC0658a;

/* renamed from: cn.manytag.rfidapi.uhf.b */
/* loaded from: classes.dex */
class C0700b extends AbstractC0680e {

    /* renamed from: a */
    final /* synthetic */ C0699a f276a;

    C0700b(C0699a c0699a) {
        this.f276a = c0699a;
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0680e
    /* renamed from: a */
    public void mo192a(AbstractC0658a abstractC0658a) {
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0680e
    /* renamed from: a */
    public void mo193a(byte[] bArr) {
        this.f276a.m216a(bArr);
    }

    @Override // cn.manytag.rfidapi.ble.callback.AbstractC0680e
    /* renamed from: c */
    public void mo194c() {
    }
}
