package jxl.write.biff;

import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class SortRecord extends WritableRecordData {
    private String column1Name;
    private String column2Name;
    private String column3Name;
    private boolean sortCaseSensitive;
    private boolean sortColumns;
    private boolean sortKey1Desc;
    private boolean sortKey2Desc;
    private boolean sortKey3Desc;

    public SortRecord(String str, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        super(Type.SORT);
        this.column1Name = str;
        this.column2Name = str2;
        this.column3Name = str3;
        this.sortColumns = z;
        this.sortKey1Desc = z2;
        this.sortKey2Desc = z3;
        this.sortKey3Desc = z4;
        this.sortCaseSensitive = z5;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        int length = (this.column1Name.length() * 2) + 5 + 1;
        if (this.column2Name.length() > 0) {
            length += (this.column2Name.length() * 2) + 1;
        }
        if (this.column3Name.length() > 0) {
            length += (this.column3Name.length() * 2) + 1;
        }
        byte[] bArr = new byte[length + 1];
        int i = this.sortColumns ? 1 : 0;
        if (this.sortKey1Desc) {
            i |= 2;
        }
        if (this.sortKey2Desc) {
            i |= 4;
        }
        if (this.sortKey3Desc) {
            i |= 8;
        }
        if (this.sortCaseSensitive) {
            i |= 16;
        }
        bArr[0] = (byte) i;
        bArr[2] = (byte) this.column1Name.length();
        bArr[3] = (byte) this.column2Name.length();
        bArr[4] = (byte) this.column3Name.length();
        bArr[5] = 1;
        StringHelper.getUnicodeBytes(this.column1Name, bArr, 6);
        int length2 = (this.column1Name.length() * 2) + 6;
        if (this.column2Name.length() > 0) {
            int i2 = length2 + 1;
            bArr[length2] = 1;
            StringHelper.getUnicodeBytes(this.column2Name, bArr, i2);
            length2 = (this.column2Name.length() * 2) + i2;
        }
        if (this.column3Name.length() > 0) {
            bArr[length2] = 1;
            StringHelper.getUnicodeBytes(this.column3Name, bArr, length2 + 1);
            this.column3Name.length();
        }
        return bArr;
    }
}
