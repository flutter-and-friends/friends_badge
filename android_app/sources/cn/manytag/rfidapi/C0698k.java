package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.InterfaceC0709k;
import cn.manytag.rfidapi.uhf.data.WorkingModeType;
import cn.manytag.rfidapi.uhf.listen.OnWorkingMode;

/* renamed from: cn.manytag.rfidapi.k */
/* loaded from: classes.dex */
class C0698k implements InterfaceC0709k {

    /* renamed from: a */
    final /* synthetic */ OnWorkingMode f259a;

    /* renamed from: b */
    final /* synthetic */ Reader f260b;

    C0698k(Reader reader, OnWorkingMode onWorkingMode) {
        this.f260b = reader;
        this.f259a = onWorkingMode;
    }

    @Override // cn.manytag.rfidapi.uhf.InterfaceC0709k
    /* renamed from: a */
    public void mo214a(byte[] bArr) {
        if (bArr != null && bArr[2] == 49) {
            if (bArr[5] == 0) {
                this.f259a.onWorkingMode(WorkingModeType.FREE);
            }
            if (bArr[5] == 1) {
                this.f259a.onWorkingMode(WorkingModeType.RFID);
            }
            if (bArr[5] == 2) {
                this.f259a.onWorkingMode(WorkingModeType.BARCODE);
            }
        }
    }
}
