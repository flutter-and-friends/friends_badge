package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class SaveRecalcRecord extends WritableRecordData {
    private byte[] data;
    private boolean recalc;

    public SaveRecalcRecord(boolean z) {
        super(Type.SAVERECALC);
        this.recalc = z;
        this.data = new byte[2];
        if (this.recalc) {
            this.data[0] = 1;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
