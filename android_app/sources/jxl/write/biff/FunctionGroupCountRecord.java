package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class FunctionGroupCountRecord extends WritableRecordData {
    private byte[] data;
    private int numFunctionGroups;

    public FunctionGroupCountRecord() {
        super(Type.FNGROUPCOUNT);
        this.numFunctionGroups = 14;
        this.data = new byte[2];
        IntegerHelper.getTwoBytes(this.numFunctionGroups, this.data, 0);
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
