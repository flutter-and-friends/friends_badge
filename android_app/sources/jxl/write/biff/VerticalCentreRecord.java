package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class VerticalCentreRecord extends WritableRecordData {
    private boolean centre;
    private byte[] data;

    public VerticalCentreRecord(boolean z) {
        super(Type.VCENTER);
        this.centre = z;
        this.data = new byte[2];
        if (this.centre) {
            this.data[0] = 1;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
