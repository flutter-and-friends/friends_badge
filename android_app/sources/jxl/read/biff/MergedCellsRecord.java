package jxl.read.biff;

import jxl.Range;
import jxl.Sheet;
import jxl.biff.IntegerHelper;
import jxl.biff.RecordData;
import jxl.biff.SheetRangeImpl;

/* loaded from: classes2.dex */
public class MergedCellsRecord extends RecordData {
    private Range[] ranges;

    MergedCellsRecord(Record record, Sheet sheet) {
        super(record);
        byte[] data = getRecord().getData();
        int i = IntegerHelper.getInt(data[0], data[1]);
        this.ranges = new Range[i];
        int i2 = 2;
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = IntegerHelper.getInt(data[i2], data[i2 + 1]);
            int i5 = IntegerHelper.getInt(data[i2 + 2], data[i2 + 3]);
            this.ranges[i3] = new SheetRangeImpl(sheet, IntegerHelper.getInt(data[i2 + 4], data[i2 + 5]), i4, IntegerHelper.getInt(data[i2 + 6], data[i2 + 7]), i5);
            i2 += 8;
        }
    }

    public Range[] getRanges() {
        return this.ranges;
    }
}
