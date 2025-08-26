package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class BookboolRecord extends WritableRecordData {
    private byte[] data;
    private boolean externalLink;

    public BookboolRecord(boolean z) {
        super(Type.BOOKBOOL);
        this.externalLink = z;
        this.data = new byte[2];
        if (this.externalLink) {
            return;
        }
        IntegerHelper.getTwoBytes(1, this.data, 0);
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
