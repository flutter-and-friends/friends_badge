package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class ObjProjRecord extends WritableRecordData {
    private byte[] data;

    public ObjProjRecord() {
        super(Type.OBJPROJ);
        this.data = new byte[4];
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
