package jxl.read.biff;

import java.text.NumberFormat;
import jxl.CellType;
import jxl.DateCell;
import jxl.DateFormulaCell;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
class DateFormulaRecord extends DateRecord implements DateCell, FormulaData, DateFormulaCell {
    private byte[] data;
    private ExternalSheet externalSheet;
    private String formulaString;
    private WorkbookMethods nameTable;

    public NumberFormat getNumberFormat() {
        return null;
    }

    public double getValue() {
        return 0.0d;
    }

    public DateFormulaRecord(NumberFormulaRecord numberFormulaRecord, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, boolean z, SheetImpl sheetImpl) throws FormulaException {
        super(numberFormulaRecord, numberFormulaRecord.getXFIndex(), formattingRecords, z, sheetImpl);
        this.externalSheet = externalSheet;
        this.nameTable = workbookMethods;
        this.data = numberFormulaRecord.getFormulaData();
    }

    @Override // jxl.read.biff.DateRecord, jxl.Cell
    public CellType getType() {
        return CellType.DATE_FORMULA;
    }

    @Override // jxl.biff.FormulaData
    public byte[] getFormulaData() throws FormulaException {
        if (!getSheet().getWorkbookBof().isBiff8()) {
            throw new FormulaException(FormulaException.BIFF8_SUPPORTED);
        }
        return this.data;
    }

    @Override // jxl.FormulaCell
    public String getFormula() throws FormulaException {
        if (this.formulaString == null) {
            byte[] bArr = this.data;
            byte[] bArr2 = new byte[bArr.length - 16];
            System.arraycopy(bArr, 16, bArr2, 0, bArr2.length);
            FormulaParser formulaParser = new FormulaParser(bArr2, this, this.externalSheet, this.nameTable, getSheet().getWorkbook().getSettings());
            formulaParser.parse();
            this.formulaString = formulaParser.getFormula();
        }
        return this.formulaString;
    }
}
