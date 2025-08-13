package jxl.write;

import jxl.Cell;
import jxl.format.CellFormat;
import jxl.write.biff.BlankRecord;

/* loaded from: classes2.dex */
public class Blank extends BlankRecord implements WritableCell {
    public Blank(int i, int i2) {
        super(i, i2);
    }

    public Blank(int i, int i2, CellFormat cellFormat) {
        super(i, i2, cellFormat);
    }

    public Blank(Cell cell) {
        super(cell);
    }

    protected Blank(int i, int i2, Blank blank) {
        super(i, i2, blank);
    }

    @Override // jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new Blank(i, i2, this);
    }
}
