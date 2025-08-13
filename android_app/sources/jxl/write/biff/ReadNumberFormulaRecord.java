package jxl.write.biff;

import common.Logger;
import java.text.NumberFormat;
import jxl.NumberFormulaCell;
import jxl.biff.DoubleHelper;
import jxl.biff.FormulaData;
import jxl.biff.IntegerHelper;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
class ReadNumberFormulaRecord extends ReadFormulaRecord implements NumberFormulaCell {
    static /* synthetic */ Class class$jxl$write$biff$ReadNumberFormulaRecord;
    private static Logger logger;

    static {
        Class clsClass$ = class$jxl$write$biff$ReadNumberFormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.ReadNumberFormulaRecord");
            class$jxl$write$biff$ReadNumberFormulaRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public ReadNumberFormulaRecord(FormulaData formulaData) {
        super(formulaData);
    }

    @Override // jxl.NumberCell
    public double getValue() {
        return ((NumberFormulaCell) getReadFormula()).getValue();
    }

    @Override // jxl.NumberCell
    public NumberFormat getNumberFormat() {
        return ((NumberFormulaCell) getReadFormula()).getNumberFormat();
    }

    @Override // jxl.write.biff.ReadFormulaRecord
    protected byte[] handleFormulaException() {
        byte[] cellData = super.getCellData();
        WritableWorkbookImpl workbook = getSheet().getWorkbook();
        FormulaParser formulaParser = new FormulaParser(Double.toString(getValue()), workbook, workbook, workbook.getSettings());
        try {
            formulaParser.parse();
        } catch (FormulaException e) {
            logger.warn(e.getMessage());
        }
        byte[] bytes = formulaParser.getBytes();
        byte[] bArr = new byte[bytes.length + 16];
        IntegerHelper.getTwoBytes(bytes.length, bArr, 14);
        System.arraycopy(bytes, 0, bArr, 16, bytes.length);
        bArr[8] = (byte) (bArr[8] | 2);
        byte[] bArr2 = new byte[cellData.length + bArr.length];
        System.arraycopy(cellData, 0, bArr2, 0, cellData.length);
        System.arraycopy(bArr, 0, bArr2, cellData.length, bArr.length);
        DoubleHelper.getIEEEBytes(getValue(), bArr2, 6);
        return bArr2;
    }
}
