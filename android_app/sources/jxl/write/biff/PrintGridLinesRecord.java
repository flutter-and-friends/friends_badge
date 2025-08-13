package jxl.write.biff;

import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class PrintGridLinesRecord extends WritableRecordData {
    private byte[] data;
    private boolean printGridLines;

    public PrintGridLinesRecord(boolean z) {
        super(Type.PRINTGRIDLINES);
        this.printGridLines = z;
        this.data = new byte[2];
        if (this.printGridLines) {
            this.data[0] = 1;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
