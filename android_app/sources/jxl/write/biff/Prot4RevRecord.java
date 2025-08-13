package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class Prot4RevRecord extends WritableRecordData {
    private byte[] data;
    private boolean protection;

    public Prot4RevRecord(boolean z) {
        super(Type.PROT4REV);
        this.protection = z;
        this.data = new byte[2];
        if (this.protection) {
            IntegerHelper.getTwoBytes(1, this.data, 0);
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
