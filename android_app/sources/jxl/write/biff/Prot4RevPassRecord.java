package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class Prot4RevPassRecord extends WritableRecordData {
    private byte[] data;

    public Prot4RevPassRecord() {
        super(Type.PROT4REVPASS);
        this.data = new byte[2];
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
