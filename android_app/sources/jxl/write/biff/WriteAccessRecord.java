package jxl.write.biff;

import jxl.Workbook;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class WriteAccessRecord extends WritableRecordData {
    private static final String authorString = "Java Excel API";
    private byte[] data;

    public WriteAccessRecord() {
        super(Type.WRITEACCESS);
        this.data = new byte[112];
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Java Excel API v");
        stringBuffer.append(Workbook.getVersion());
        String string = stringBuffer.toString();
        StringHelper.getBytes(string, this.data, 0);
        int length = string.length();
        while (true) {
            byte[] bArr = this.data;
            if (length >= bArr.length) {
                return;
            }
            bArr[length] = 32;
            length++;
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        return this.data;
    }
}
