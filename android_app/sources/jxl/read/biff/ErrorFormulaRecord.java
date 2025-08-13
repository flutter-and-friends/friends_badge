package jxl.read.biff;

import common.Assert;
import jxl.CellType;
import jxl.ErrorCell;
import jxl.ErrorFormulaCell;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaErrorCode;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
class ErrorFormulaRecord extends CellValue implements ErrorCell, FormulaData, ErrorFormulaCell {
    private byte[] data;
    private FormulaErrorCode error;
    private int errorCode;
    private ExternalSheet externalSheet;
    private String formulaString;
    private WorkbookMethods nameTable;

    public ErrorFormulaRecord(Record record, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl) {
        super(record, formattingRecords, sheetImpl);
        this.externalSheet = externalSheet;
        this.nameTable = workbookMethods;
        this.data = getRecord().getData();
        Assert.verify(this.data[6] == 2);
        this.errorCode = this.data[8];
    }

    @Override // jxl.ErrorCell
    public int getErrorCode() {
        return this.errorCode;
    }

    @Override // jxl.Cell
    public String getContents() {
        if (this.error == null) {
            this.error = FormulaErrorCode.getErrorCode(this.errorCode);
        }
        if (this.error != FormulaErrorCode.UNKNOWN) {
            return this.error.getDescription();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ERROR ");
        stringBuffer.append(this.errorCode);
        return stringBuffer.toString();
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.FORMULA_ERROR;
    }

    @Override // jxl.biff.FormulaData
    public byte[] getFormulaData() throws FormulaException {
        if (!getSheet().getWorkbookBof().isBiff8()) {
            throw new FormulaException(FormulaException.BIFF8_SUPPORTED);
        }
        byte[] bArr = this.data;
        byte[] bArr2 = new byte[bArr.length - 6];
        System.arraycopy(bArr, 6, bArr2, 0, bArr.length - 6);
        return bArr2;
    }

    @Override // jxl.FormulaCell
    public String getFormula() throws FormulaException {
        if (this.formulaString == null) {
            byte[] bArr = this.data;
            byte[] bArr2 = new byte[bArr.length - 22];
            System.arraycopy(bArr, 22, bArr2, 0, bArr2.length);
            FormulaParser formulaParser = new FormulaParser(bArr2, this, this.externalSheet, this.nameTable, getSheet().getWorkbook().getSettings());
            formulaParser.parse();
            this.formulaString = formulaParser.getFormula();
        }
        return this.formulaString;
    }
}
