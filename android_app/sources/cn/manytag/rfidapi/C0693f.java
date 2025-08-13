package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.InterfaceC0706h;
import cn.manytag.rfidapi.uhf.listen.OnOperation;

/* renamed from: cn.manytag.rfidapi.f */
/* loaded from: classes.dex */
class C0693f implements InterfaceC0706h {

    /* renamed from: a */
    final /* synthetic */ OnOperation f248a;

    /* renamed from: b */
    final /* synthetic */ Reader f249b;

    C0693f(Reader reader, OnOperation onOperation) {
        this.f249b = reader;
        this.f248a = onOperation;
    }

    @Override // cn.manytag.rfidapi.uhf.InterfaceC0706h
    /* renamed from: a */
    public void mo209a(String str, int i) {
        OnOperation onOperation = this.f248a;
        if (onOperation != null) {
            onOperation.onOperation(str, i);
        }
    }
}
