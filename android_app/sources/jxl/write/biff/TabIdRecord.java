package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class TabIdRecord extends WritableRecordData {
    private byte[] data;

    public TabIdRecord(int i) {
        super(Type.TABID);
        this.data = new byte[i * 2];
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            IntegerHelper.getTwoBytes(i3, this.data, i2 * 2);
            i2 = i3;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
