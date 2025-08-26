package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class IterationRecord extends WritableRecordData {
    private byte[] data;
    private boolean iterate;

    public IterationRecord(boolean z) {
        super(Type.ITERATION);
        this.iterate = z;
        this.data = new byte[2];
        if (this.iterate) {
            this.data[0] = 1;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
