package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class Weird1Record extends WritableRecordData {
    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[6];
        bArr[2] = 55;
        return bArr;
    }

    public Weird1Record() {
        super(Type.WEIRD1);
    }
}
