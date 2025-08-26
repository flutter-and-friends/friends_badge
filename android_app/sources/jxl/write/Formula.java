package jxl.write;

import jxl.format.CellFormat;
import jxl.write.biff.FormulaRecord;

/* loaded from: classes2.dex */
public class Formula extends FormulaRecord implements WritableCell {
    public Formula(int i, int i2, String str) {
        super(i, i2, str);
    }

    public Formula(int i, int i2, String str, CellFormat cellFormat) {
        super(i, i2, str, cellFormat);
    }

    protected Formula(int i, int i2, Formula formula) {
        super(i, i2, formula);
    }

    @Override // jxl.write.biff.FormulaRecord, jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new Formula(i, i2, this);
    }
}
