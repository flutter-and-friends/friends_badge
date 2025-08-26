package jxl.write.biff;

import jxl.BooleanFormulaCell;
import jxl.biff.FormulaData;

/* loaded from: classes2.dex */
class ReadBooleanFormulaRecord extends ReadFormulaRecord implements BooleanFormulaCell {
    public ReadBooleanFormulaRecord(FormulaData formulaData) {
        super(formulaData);
    }

    @Override // jxl.BooleanCell
    public boolean getValue() {
        return ((BooleanFormulaCell) getReadFormula()).getValue();
    }
}
