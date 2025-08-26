package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class CalcCountRecord extends WritableRecordData {
    private int calcCount;
    private byte[] data;

    public CalcCountRecord(int i) {
        super(Type.CALCCOUNT);
        this.calcCount = i;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[2];
        IntegerHelper.getTwoBytes(this.calcCount, bArr, 0);
        return bArr;
    }
}
