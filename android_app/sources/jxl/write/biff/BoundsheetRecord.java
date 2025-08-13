package jxl.write.biff;

import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class BoundsheetRecord extends WritableRecordData {
    private boolean chartOnly;
    private byte[] data;
    private boolean hidden;
    private String name;

    public BoundsheetRecord(String str) {
        super(Type.BOUNDSHEET);
        this.name = str;
        this.hidden = false;
        this.chartOnly = false;
    }

    void setHidden() {
        this.hidden = true;
    }

    void setChartOnly() {
        this.chartOnly = true;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        this.data = new byte[(this.name.length() * 2) + 8];
        if (this.chartOnly) {
            this.data[5] = 2;
        } else {
            this.data[5] = 0;
        }
        if (this.hidden) {
            byte[] bArr = this.data;
            bArr[4] = 1;
            bArr[5] = 0;
        }
        this.data[6] = (byte) this.name.length();
        byte[] bArr2 = this.data;
        bArr2[7] = 1;
        StringHelper.getUnicodeBytes(this.name, bArr2, 8);
        return this.data;
    }
}
