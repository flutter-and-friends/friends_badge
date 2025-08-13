package jxl.read.biff;

import common.Assert;
import jxl.WorkbookSettings;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.StringHelper;

/* loaded from: classes2.dex */
class SSTRecord extends RecordData {
    private int[] continuationBreaks;
    private String[] strings;
    private int totalStrings;
    private int uniqueStrings;

    private static class ByteArrayHolder {
        public byte[] bytes;

        private ByteArrayHolder() {
        }
    }

    private static class BooleanHolder {
        public boolean value;

        private BooleanHolder() {
        }
    }

    public SSTRecord(Record record, Record[] recordArr, WorkbookSettings workbookSettings) {
        super(record);
        int length = 0;
        for (Record record2 : recordArr) {
            length += record2.getLength();
        }
        byte[] bArr = new byte[length + getRecord().getLength()];
        System.arraycopy(getRecord().getData(), 0, bArr, 0, getRecord().getLength());
        int length2 = getRecord().getLength() + 0;
        this.continuationBreaks = new int[recordArr.length];
        int length3 = length2;
        for (int i = 0; i < recordArr.length; i++) {
            Record record3 = recordArr[i];
            System.arraycopy(record3.getData(), 0, bArr, length3, record3.getLength());
            this.continuationBreaks[i] = length3;
            length3 += record3.getLength();
        }
        this.totalStrings = IntegerHelper.getInt(bArr[0], bArr[1], bArr[2], bArr[3]);
        this.uniqueStrings = IntegerHelper.getInt(bArr[4], bArr[5], bArr[6], bArr[7]);
        this.strings = new String[this.uniqueStrings];
        readStrings(bArr, 8, workbookSettings);
    }

    private void readStrings(byte[] bArr, int i, WorkbookSettings workbookSettings) {
        int i2;
        int i3;
        String unicodeString;
        int i4 = i;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i7 < this.uniqueStrings) {
            int i8 = IntegerHelper.getInt(bArr[i4], bArr[i4 + 1]);
            int i9 = i4 + 2;
            byte b = bArr[i9];
            int i10 = i9 + 1;
            boolean z = (b & 4) != 0;
            boolean z2 = (b & 8) != 0;
            if (z2) {
                i5 = IntegerHelper.getInt(bArr[i10], bArr[i10 + 1]);
                i10 += 2;
            }
            int i11 = i5;
            if (z) {
                i2 = i10 + 4;
                i3 = IntegerHelper.getInt(bArr[i10], bArr[i10 + 1], bArr[i10 + 2], bArr[i10 + 3]);
            } else {
                i2 = i10;
                i3 = i6;
            }
            boolean z3 = (b & 1) == 0;
            ByteArrayHolder byteArrayHolder = new ByteArrayHolder();
            BooleanHolder booleanHolder = new BooleanHolder();
            booleanHolder.value = z3;
            int chars = i2 + getChars(bArr, byteArrayHolder, i2, booleanHolder, i8);
            if (booleanHolder.value) {
                unicodeString = StringHelper.getString(byteArrayHolder.bytes, i8, 0, workbookSettings);
            } else {
                unicodeString = StringHelper.getUnicodeString(byteArrayHolder.bytes, i8, 0);
            }
            this.strings[i7] = unicodeString;
            if (z2) {
                chars += i11 * 4;
            }
            if (z) {
                chars += i3;
            }
            i4 = chars;
            if (i4 > bArr.length) {
                Assert.verify(false, "pos exceeds record length");
            }
            i7++;
            i5 = i11;
            i6 = i3;
        }
    }

    private int getChars(byte[] bArr, ByteArrayHolder byteArrayHolder, int i, BooleanHolder booleanHolder, int i2) {
        if (booleanHolder.value) {
            byteArrayHolder.bytes = new byte[i2];
        } else {
            byteArrayHolder.bytes = new byte[i2 * 2];
        }
        boolean z = false;
        int i3 = 0;
        while (true) {
            int[] iArr = this.continuationBreaks;
            if (i3 >= iArr.length || z) {
                break;
            }
            z = i <= iArr[i3] && byteArrayHolder.bytes.length + i > this.continuationBreaks[i3];
            if (!z) {
                i3++;
            }
        }
        if (!z) {
            System.arraycopy(bArr, i, byteArrayHolder.bytes, 0, byteArrayHolder.bytes.length);
            return byteArrayHolder.bytes.length;
        }
        int i4 = this.continuationBreaks[i3] - i;
        System.arraycopy(bArr, i, byteArrayHolder.bytes, 0, i4);
        return i4 + getContinuedString(bArr, byteArrayHolder, i4, i3, booleanHolder, i2 - (booleanHolder.value ? i4 : i4 / 2));
    }

    private int getContinuedString(byte[] bArr, ByteArrayHolder byteArrayHolder, int i, int i2, BooleanHolder booleanHolder, int i3) {
        int i4;
        int i5 = i;
        int i6 = i2;
        int i7 = this.continuationBreaks[i2];
        int i8 = 0;
        int i9 = i3;
        while (i9 > 0) {
            Assert.verify(i6 < this.continuationBreaks.length, "continuation break index");
            if (booleanHolder.value && bArr[i7] == 0) {
                int[] iArr = this.continuationBreaks;
                int iMin = i6 == iArr.length - 1 ? i9 : Math.min(i9, (iArr[i6 + 1] - i7) - 1);
                System.arraycopy(bArr, i7 + 1, byteArrayHolder.bytes, i5, iMin);
                i5 += iMin;
                i8 += iMin + 1;
                i9 -= iMin;
                booleanHolder.value = true;
            } else if (!booleanHolder.value && bArr[i7] != 0) {
                int[] iArr2 = this.continuationBreaks;
                int iMin2 = i6 == iArr2.length - 1 ? i9 * 2 : Math.min(i9 * 2, (iArr2[i6 + 1] - i7) - 1);
                System.arraycopy(bArr, i7 + 1, byteArrayHolder.bytes, i5, iMin2);
                i5 += iMin2;
                i8 += iMin2 + 1;
                i9 -= iMin2 / 2;
                booleanHolder.value = false;
            } else {
                if (!booleanHolder.value && bArr[i7] == 0) {
                    int[] iArr3 = this.continuationBreaks;
                    int iMin3 = i6 == iArr3.length - 1 ? i9 : Math.min(i9, (iArr3[i6 + 1] - i7) - 1);
                    i4 = i5;
                    for (int i10 = 0; i10 < iMin3; i10++) {
                        byteArrayHolder.bytes[i4] = bArr[i7 + i10 + 1];
                        i4 += 2;
                    }
                    i8 += iMin3 + 1;
                    i9 -= iMin3;
                    booleanHolder.value = false;
                } else {
                    byte[] bArr2 = byteArrayHolder.bytes;
                    int i11 = i5 * 2;
                    int iMin4 = i9 * 2;
                    byteArrayHolder.bytes = new byte[i11 + iMin4];
                    for (int i12 = 0; i12 < i5; i12++) {
                        byteArrayHolder.bytes[i12 * 2] = bArr2[i12];
                    }
                    int[] iArr4 = this.continuationBreaks;
                    if (i6 != iArr4.length - 1) {
                        iMin4 = Math.min(iMin4, (iArr4[i6 + 1] - i7) - 1);
                    }
                    System.arraycopy(bArr, i7 + 1, byteArrayHolder.bytes, i11, iMin4);
                    i4 = i11 + iMin4;
                    i8 += iMin4 + 1;
                    i9 -= iMin4 / 2;
                    booleanHolder.value = false;
                }
                i5 = i4;
            }
            i6++;
            int[] iArr5 = this.continuationBreaks;
            if (i6 < iArr5.length) {
                i7 = iArr5[i6];
            }
        }
        return i8;
    }

    public String getString(int i) {
        Assert.verify(i < this.uniqueStrings);
        return this.strings[i];
    }
}
