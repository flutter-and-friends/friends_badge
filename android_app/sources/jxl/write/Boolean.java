package jxl.write;

import jxl.BooleanCell;
import jxl.format.CellFormat;
import jxl.write.biff.BooleanRecord;

/* loaded from: classes2.dex */
public class Boolean extends BooleanRecord implements WritableCell, BooleanCell {
    public Boolean(int i, int i2, boolean z) {
        super(i, i2, z);
    }

    public Boolean(int i, int i2, boolean z, CellFormat cellFormat) {
        super(i, i2, z, cellFormat);
    }

    public Boolean(BooleanCell booleanCell) {
        super(booleanCell);
    }

    protected Boolean(int i, int i2, Boolean r3) {
        super(i, i2, r3);
    }

    @Override // jxl.write.biff.BooleanRecord
    public void setValue(boolean z) {
        super.setValue(z);
    }

    @Override // jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new Boolean(i, i2, this);
    }
}
