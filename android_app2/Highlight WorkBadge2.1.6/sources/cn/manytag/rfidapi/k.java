package cn.manytag.rfidapi;

import cn.manytag.rfidapi.uhf.data.WorkingModeType;
import cn.manytag.rfidapi.uhf.listen.OnWorkingMode;

/* loaded from: classes.dex */
class k implements cn.manytag.rfidapi.uhf.k {
    final /* synthetic */ OnWorkingMode a;
    final /* synthetic */ Reader b;

    k(Reader reader, OnWorkingMode onWorkingMode) {
        this.b = reader;
        this.a = onWorkingMode;
    }

    @Override // cn.manytag.rfidapi.uhf.k
    public void a(byte[] bArr) {
        if (bArr != null && bArr[2] == 49) {
            if (bArr[5] == 0) {
                this.a.onWorkingMode(WorkingModeType.FREE);
            }
            if (bArr[5] == 1) {
                this.a.onWorkingMode(WorkingModeType.RFID);
            }
            if (bArr[5] == 2) {
                this.a.onWorkingMode(WorkingModeType.BARCODE);
            }
        }
    }
}
