package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class HideobjRecord extends WritableRecordData {
    private byte[] data;
    private boolean hideAll;

    public HideobjRecord(boolean z) {
        super(Type.HIDEOBJ);
        this.hideAll = z;
        this.data = new byte[2];
        if (this.hideAll) {
            IntegerHelper.getTwoBytes(2, this.data, 0);
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
