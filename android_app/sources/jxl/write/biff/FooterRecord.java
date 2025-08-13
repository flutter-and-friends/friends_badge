package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class FooterRecord extends WritableRecordData {
    private byte[] data;
    private String footer;

    public FooterRecord(String str) {
        super(Type.FOOTER);
        this.footer = str;
    }

    public FooterRecord(FooterRecord footerRecord) {
        super(Type.FOOTER);
        this.footer = footerRecord.footer;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        String str = this.footer;
        if (str == null || str.length() == 0) {
            this.data = new byte[0];
            return this.data;
        }
        this.data = new byte[(this.footer.length() * 2) + 3];
        IntegerHelper.getTwoBytes(this.footer.length(), this.data, 0);
        byte[] bArr = this.data;
        bArr[2] = 1;
        StringHelper.getUnicodeBytes(this.footer, bArr, 3);
        return this.data;
    }
}
