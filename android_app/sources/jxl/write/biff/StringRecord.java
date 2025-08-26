package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class StringRecord extends WritableRecordData {
    private String value;

    public StringRecord(String str) {
        super(Type.STRING);
        this.value = str;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[(this.value.length() * 2) + 3];
        IntegerHelper.getTwoBytes(this.value.length(), bArr, 0);
        bArr[2] = 1;
        StringHelper.getUnicodeBytes(this.value, bArr, 3);
        return bArr;
    }
}
