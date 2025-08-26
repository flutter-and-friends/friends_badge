package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class RefModeRecord extends WritableRecordData {
    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return new byte[]{1, 0};
    }

    public RefModeRecord() {
        super(Type.REFMODE);
    }
}
