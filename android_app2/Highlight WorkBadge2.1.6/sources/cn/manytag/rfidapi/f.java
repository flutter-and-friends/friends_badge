package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.listen.OnOperation;

/* loaded from: classes.dex */
class f implements cn.manytag.rfidapi.uhf.h {
    final /* synthetic */ OnOperation a;
    final /* synthetic */ Reader b;

    f(Reader reader, OnOperation onOperation) {
        this.b = reader;
        this.a = onOperation;
    }

    @Override // cn.manytag.rfidapi.uhf.h
    public void a(String str, int i) {
        OnOperation onOperation = this.a;
        if (onOperation != null) {
            onOperation.onOperation(str, i);
        }
    }
}
