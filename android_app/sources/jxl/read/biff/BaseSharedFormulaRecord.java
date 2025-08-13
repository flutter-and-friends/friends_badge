package jxl.read.biff;

import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
public abstract class BaseSharedFormulaRecord extends CellValue implements FormulaData {
    private ExternalSheet externalSheet;
    private int filePos;
    private String formulaString;
    private WorkbookMethods nameTable;
    private byte[] tokens;

    public BaseSharedFormulaRecord(Record record, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl, int i) {
        super(record, formattingRecords, sheetImpl);
        this.externalSheet = externalSheet;
        this.nameTable = workbookMethods;
        this.filePos = i;
    }

    public String getFormula() throws FormulaException {
        if (this.formulaString == null) {
            FormulaParser formulaParser = new FormulaParser(this.tokens, this, this.externalSheet, this.nameTable, getSheet().getWorkbook().getSettings());
            formulaParser.parse();
            this.formulaString = formulaParser.getFormula();
        }
        return this.formulaString;
    }

    void setTokens(byte[] bArr) {
        this.tokens = bArr;
    }

    protected final byte[] getTokens() {
        return this.tokens;
    }

    protected final ExternalSheet getExternalSheet() {
        return this.externalSheet;
    }

    protected final WorkbookMethods getNameTable() {
        return this.nameTable;
    }

    @Override // jxl.biff.RecordData
    public Record getRecord() {
        return super.getRecord();
    }

    final int getFilePos() {
        return this.filePos;
    }
}
