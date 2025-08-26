package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class CodepageRecord extends WritableRecordData {
    private byte[] data;

    public CodepageRecord() {
        super(Type.CODEPAGE);
        this.data = new byte[]{-28, 4};
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
