package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class SCLRecord extends WritableRecordData {
    private int zoomFactor;

    public SCLRecord(int i) {
        super(Type.SCL);
        this.zoomFactor = i;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[4];
        IntegerHelper.getTwoBytes(this.zoomFactor, bArr, 0);
        IntegerHelper.getTwoBytes(100, bArr, 2);
        return bArr;
    }
}
