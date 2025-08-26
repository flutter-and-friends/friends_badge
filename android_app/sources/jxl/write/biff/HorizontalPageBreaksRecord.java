package jxl.write.biff;

import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
class HorizontalPageBreaksRecord extends WritableRecordData {
    private int[] rowBreaks;

    public HorizontalPageBreaksRecord(int[] iArr) {
        super(Type.HORIZONTALPAGEBREAKS);
        this.rowBreaks = iArr;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        int[] iArr = this.rowBreaks;
        int i = 2;
        byte[] bArr = new byte[(iArr.length * 6) + 2];
        int i2 = 0;
        IntegerHelper.getTwoBytes(iArr.length, bArr, 0);
        while (true) {
            int[] iArr2 = this.rowBreaks;
            if (i2 >= iArr2.length) {
                return bArr;
            }
            IntegerHelper.getTwoBytes(iArr2[i2], bArr, i);
            IntegerHelper.getTwoBytes(255, bArr, i + 4);
            i += 6;
            i2++;
        }
    }
}
