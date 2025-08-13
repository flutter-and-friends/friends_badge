package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class EOFRecord extends WritableRecordData {
    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return new byte[0];
    }

    public EOFRecord() {
        super(Type.EOF);
    }
}
