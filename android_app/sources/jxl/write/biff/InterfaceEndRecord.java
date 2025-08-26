package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class InterfaceEndRecord extends WritableRecordData {
    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return new byte[0];
    }

    public InterfaceEndRecord() {
        super(Type.INTERFACEEND);
    }
}
