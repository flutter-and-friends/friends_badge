package jxl.write.biff;

import java.util.ArrayList;
import jxl.Cell;
import jxl.Range;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WritableRecordData;

/* loaded from: classes2.dex */
public class MergedCellsRecord extends WritableRecordData {
    private ArrayList ranges;

    protected MergedCellsRecord(ArrayList arrayList) {
        super(Type.MERGEDCELLS);
        this.ranges = arrayList;
    }

    @Override // jxl.biff.WritableRecordData
    public byte[] getData() {
        int i = 2;
        byte[] bArr = new byte[(this.ranges.size() * 8) + 2];
        IntegerHelper.getTwoBytes(this.ranges.size(), bArr, 0);
        for (int i2 = 0; i2 < this.ranges.size(); i2++) {
            Range range = (Range) this.ranges.get(i2);
            Cell topLeft = range.getTopLeft();
            Cell bottomRight = range.getBottomRight();
            IntegerHelper.getTwoBytes(topLeft.getRow(), bArr, i);
            IntegerHelper.getTwoBytes(bottomRight.getRow(), bArr, i + 2);
            IntegerHelper.getTwoBytes(topLeft.getColumn(), bArr, i + 4);
            IntegerHelper.getTwoBytes(bottomRight.getColumn(), bArr, i + 6);
            i += 8;
        }
        return bArr;
    }
}
