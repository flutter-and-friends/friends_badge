package jxl.write.biff;

import java.util.List;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;
import jxl.write.Number;

/* loaded from: classes2.dex */
class MulRKRecord extends WritableRecordData {
    private int colFirst;
    private int colLast;
    private int[] rknumbers;
    private int row;
    private int[] xfIndices;

    public MulRKRecord(List list) {
        super(Type.MULRK);
        this.row = ((Number) list.get(0)).getRow();
        this.colFirst = ((Number) list.get(0)).getColumn();
        this.colLast = (this.colFirst + list.size()) - 1;
        this.rknumbers = new int[list.size()];
        this.xfIndices = new int[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.rknumbers[i] = (int) ((Number) list.get(i)).getValue();
            this.xfIndices[i] = ((CellValue) list.get(i)).getXFIndex();
        }
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] bArr = new byte[(this.rknumbers.length * 6) + 6];
        IntegerHelper.getTwoBytes(this.row, bArr, 0);
        IntegerHelper.getTwoBytes(this.colFirst, bArr, 2);
        int i = 4;
        for (int i2 = 0; i2 < this.rknumbers.length; i2++) {
            IntegerHelper.getTwoBytes(this.xfIndices[i2], bArr, i);
            IntegerHelper.getFourBytes((this.rknumbers[i2] << 2) | 2, bArr, i + 2);
            i += 6;
        }
        IntegerHelper.getTwoBytes(this.colLast, bArr, i);
        return bArr;
    }
}
