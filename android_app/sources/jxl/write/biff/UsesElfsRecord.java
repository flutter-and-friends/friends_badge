package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class UsesElfsRecord extends WritableRecordData {
    private byte[] data;
    private boolean usesElfs;

    public UsesElfsRecord() {
        super(Type.USESELFS);
        this.usesElfs = true;
        this.data = new byte[2];
        if (this.usesElfs) {
            this.data[0] = 1;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
