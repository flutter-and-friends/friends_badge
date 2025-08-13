package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class GridSetRecord extends WritableRecordData {
    private byte[] data;
    private boolean gridSet;

    public GridSetRecord(boolean z) {
        super(Type.GRIDSET);
        this.gridSet = z;
        this.data = new byte[2];
        if (this.gridSet) {
            this.data[0] = 1;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
