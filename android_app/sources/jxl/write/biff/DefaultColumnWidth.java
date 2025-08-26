package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class DefaultColumnWidth extends WritableRecordData {
    private byte[] data;
    private int width;

    public DefaultColumnWidth(int i) {
        super(Type.DEFCOLWIDTH);
        this.width = i;
        this.data = new byte[2];
        IntegerHelper.getTwoBytes(this.width, this.data, 0);
    }

    @Override // jxl.biff.WritableRecordData
    protected byte[] getData() {
        return this.data;
    }
}
