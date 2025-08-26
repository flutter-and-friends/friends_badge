package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class PrintHeadersRecord extends WritableRecordData {
    private byte[] data;
    private boolean printHeaders;

    public PrintHeadersRecord(boolean z) {
        super(Type.PRINTHEADERS);
        this.printHeaders = z;
        this.data = new byte[2];
        if (this.printHeaders) {
            this.data[0] = 1;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
