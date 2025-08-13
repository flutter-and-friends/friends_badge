package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class RefreshAllRecord extends WritableRecordData {
    private byte[] data;
    private boolean refreshall;

    public RefreshAllRecord(boolean z) {
        super(Type.REFRESHALL);
        this.refreshall = z;
        this.data = new byte[2];
        if (this.refreshall) {
            IntegerHelper.getTwoBytes(1, this.data, 0);
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
