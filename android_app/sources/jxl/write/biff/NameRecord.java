package jxl.write.biff;

import jxl.biff.BuiltInName;
import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.read.biff.NameRecord;

/* loaded from: classes2.dex */
class NameRecord extends WritableRecordData {
    private static final int areaReference = 59;
    private static final int cellReference = 58;
    private static final int subExpression = 41;
    private static final int union = 16;
    private BuiltInName builtInName;
    private byte[] data;
    private int index;
    private String name;
    private NameRange[] ranges;
    private int sheetRef;

    class NameRange {
        private int columnFirst;
        private int columnLast;
        private int externalSheet;
        private int rowFirst;
        private int rowLast;

        NameRange(NameRecord.NameRange nameRange) {
            this.columnFirst = nameRange.getFirstColumn();
            this.rowFirst = nameRange.getFirstRow();
            this.columnLast = nameRange.getLastColumn();
            this.rowLast = nameRange.getLastRow();
            this.externalSheet = nameRange.getExternalSheet();
        }

        NameRange(int i, int i2, int i3, int i4, int i5) {
            this.columnFirst = i4;
            this.rowFirst = i2;
            this.columnLast = i5;
            this.rowLast = i3;
            this.externalSheet = i;
        }

        int getFirstColumn() {
            return this.columnFirst;
        }

        int getFirstRow() {
            return this.rowFirst;
        }

        int getLastColumn() {
            return this.columnLast;
        }

        int getLastRow() {
            return this.rowLast;
        }

        int getExternalSheet() {
            return this.externalSheet;
        }

        byte[] getData() {
            byte[] bArr = new byte[10];
            IntegerHelper.getTwoBytes(this.externalSheet, bArr, 0);
            IntegerHelper.getTwoBytes(this.rowFirst, bArr, 2);
            IntegerHelper.getTwoBytes(this.rowLast, bArr, 4);
            IntegerHelper.getTwoBytes(this.columnFirst & 255, bArr, 6);
            IntegerHelper.getTwoBytes(this.columnLast & 255, bArr, 8);
            return bArr;
        }
    }

    public NameRecord(jxl.read.biff.NameRecord nameRecord, int i) {
        super(Type.NAME);
        int i2 = 0;
        this.sheetRef = 0;
        this.data = nameRecord.getData();
        this.name = nameRecord.getName();
        this.sheetRef = nameRecord.getSheetRef();
        this.index = i;
        NameRecord.NameRange[] ranges = nameRecord.getRanges();
        this.ranges = new NameRange[ranges.length];
        while (true) {
            NameRange[] nameRangeArr = this.ranges;
            if (i2 >= nameRangeArr.length) {
                return;
            }
            nameRangeArr[i2] = new NameRange(ranges[i2]);
            i2++;
        }
    }

    NameRecord(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(Type.NAME);
        this.sheetRef = 0;
        this.name = str;
        this.index = i;
        this.sheetRef = z ? 0 : this.index + 1;
        this.ranges = new NameRange[1];
        this.ranges[0] = new NameRange(i2, i3, i4, i5, i6);
    }

    NameRecord(BuiltInName builtInName, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(Type.NAME);
        this.sheetRef = 0;
        this.builtInName = builtInName;
        this.index = i;
        this.sheetRef = z ? 0 : this.index + 1;
        this.ranges = new NameRange[1];
        this.ranges[0] = new NameRange(i2, i3, i4, i5, i6);
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = this.data;
        if (bArr != null) {
            return bArr;
        }
        this.data = new byte[(this.builtInName != null ? 1 : this.name.length()) + 26];
        IntegerHelper.getTwoBytes(this.builtInName != null ? 32 : 0, this.data, 0);
        byte[] bArr2 = this.data;
        bArr2[2] = 0;
        if (this.builtInName != null) {
            bArr2[3] = 1;
        } else {
            bArr2[3] = (byte) this.name.length();
        }
        IntegerHelper.getTwoBytes(11, this.data, 4);
        IntegerHelper.getTwoBytes(this.sheetRef, this.data, 6);
        IntegerHelper.getTwoBytes(this.sheetRef, this.data, 8);
        BuiltInName builtInName = this.builtInName;
        if (builtInName != null) {
            this.data[15] = (byte) builtInName.getValue();
        } else {
            StringHelper.getBytes(this.name, this.data, 15);
        }
        int length = this.builtInName != null ? 16 : this.name.length() + 15;
        this.data[length] = 59;
        byte[] data = this.ranges[0].getData();
        System.arraycopy(data, 0, this.data, length + 1, data.length);
        return this.data;
    }

    public String getName() {
        return this.name;
    }

    public int getIndex() {
        return this.index;
    }

    public int getSheetRef() {
        return this.sheetRef;
    }

    public void setSheetRef(int i) {
        this.sheetRef = i;
        IntegerHelper.getTwoBytes(this.sheetRef, this.data, 8);
    }

    public NameRange[] getRanges() {
        return this.ranges;
    }
}
