package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class InterfaceHeaderRecord extends WritableRecordData {
    public InterfaceHeaderRecord() {
        super(Type.INTERFACEHDR);
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return new byte[]{-80, 4};
    }
}
