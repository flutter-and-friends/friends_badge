package jxl.write;

import jxl.NumberCell;
import jxl.format.CellFormat;
import jxl.write.biff.NumberRecord;

/* loaded from: classes2.dex */
public class Number extends NumberRecord implements WritableCell, NumberCell {
    public Number(int i, int i2, double d) {
        super(i, i2, d);
    }

    public Number(int i, int i2, double d, CellFormat cellFormat) {
        super(i, i2, d, cellFormat);
    }

    public Number(NumberCell numberCell) {
        super(numberCell);
    }

    @Override // jxl.write.biff.NumberRecord
    public void setValue(double d) {
        super.setValue(d);
    }

    protected Number(int i, int i2, Number number) {
        super(i, i2, number);
    }

    @Override // jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new Number(i, i2, this);
    }
}
