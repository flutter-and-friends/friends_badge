package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.InterfaceC0705g;
import cn.manytag.rfidapi.uhf.data.KeypadStatus;
import cn.manytag.rfidapi.uhf.listen.OnKeypad;

/* renamed from: cn.manytag.rfidapi.j */
/* loaded from: classes.dex */
class C0697j implements InterfaceC0705g {

    /* renamed from: a */
    final /* synthetic */ OnKeypad f257a;

    /* renamed from: b */
    final /* synthetic */ Reader f258b;

    C0697j(Reader reader, OnKeypad onKeypad) {
        this.f258b = reader;
        this.f257a = onKeypad;
    }

    @Override // cn.manytag.rfidapi.uhf.InterfaceC0705g
    /* renamed from: a */
    public void mo213a(byte[] bArr) {
        if (bArr != null && bArr[2] == 51) {
            if (bArr[5] == 1) {
                this.f257a.onKeypad(KeypadStatus.START);
            }
            if (bArr[5] == 2) {
                this.f257a.onKeypad(KeypadStatus.STOP);
            }
        }
    }
}
