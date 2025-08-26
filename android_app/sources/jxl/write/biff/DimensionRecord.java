package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class DimensionRecord extends WritableRecordData {
    private byte[] data;
    private int numCols;
    private int numRows;

    public DimensionRecord(int i, int i2) {
        super(Type.DIMENSION);
        this.numRows = i;
        this.numCols = i2;
        this.data = new byte[14];
        IntegerHelper.getFourBytes(this.numRows, this.data, 4);
        IntegerHelper.getTwoBytes(this.numCols, this.data, 10);
    }

    @Override // jxl.biff.WritableRecordData
    protected byte[] getData() {
        return this.data;
    }
}
