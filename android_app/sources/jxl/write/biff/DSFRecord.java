package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class DSFRecord extends WritableRecordData {
    private byte[] data;

    public DSFRecord() {
        super(Type.DSF);
        this.data = new byte[]{0, 0};
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
