package jxl.write.biff;

import java.text.DateFormat;
import java.util.Date;
import jxl.DateFormulaCell;
import jxl.biff.FormulaData;

/* loaded from: classes2.dex */
class ReadDateFormulaRecord extends ReadFormulaRecord implements DateFormulaCell {
    public ReadDateFormulaRecord(FormulaData formulaData) {
        super(formulaData);
    }

    @Override // jxl.DateCell
    public Date getDate() {
        return ((DateFormulaCell) getReadFormula()).getDate();
    }

    @Override // jxl.DateCell
    public boolean isTime() {
        return ((DateFormulaCell) getReadFormula()).isTime();
    }

    @Override // jxl.DateCell
    public DateFormat getDateFormat() {
        return ((DateFormulaCell) getReadFormula()).getDateFormat();
    }
}
