package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.data.KeypadStatus;
import cn.manytag.rfidapi.uhf.listen.OnKeypad;

/* loaded from: classes.dex */
class j implements cn.manytag.rfidapi.uhf.g {
    final /* synthetic */ OnKeypad a;
    final /* synthetic */ Reader b;

    j(Reader reader, OnKeypad onKeypad) {
        this.b = reader;
        this.a = onKeypad;
    }

    @Override // cn.manytag.rfidapi.uhf.g
    public void a(byte[] bArr) {
        if (bArr != null && bArr[2] == 51) {
            if (bArr[5] == 1) {
                this.a.onKeypad(KeypadStatus.START);
            }
            if (bArr[5] == 2) {
                this.a.onKeypad(KeypadStatus.STOP);
            }
        }
    }
}
