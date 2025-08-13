package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class DefaultRowHeightRecord extends WritableRecordData {
    private boolean changed;
    private byte[] data;
    private int rowHeight;

    public DefaultRowHeightRecord(int i, boolean z) {
        super(Type.DEFAULTROWHEIGHT);
        this.data = new byte[4];
        this.rowHeight = i;
        this.changed = z;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        if (this.changed) {
            byte[] bArr = this.data;
            bArr[0] = (byte) (bArr[0] | 1);
        }
        IntegerHelper.getTwoBytes(this.rowHeight, this.data, 2);
        return this.data;
    }
}
