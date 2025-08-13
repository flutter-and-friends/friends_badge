package jxl.write.biff;

import common.Assert;
import common.Logger;
import jxl.CellReferenceHelper;
import jxl.CellType;
import jxl.FormulaCell;
import jxl.Sheet;
import jxl.WorkbookSettings;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.IntegerHelper;
import jxl.biff.Type;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;
import jxl.write.WritableCell;

/* loaded from: classes2.dex */
class ReadFormulaRecord extends CellValue implements FormulaData {
    static /* synthetic */ Class class$jxl$write$biff$ReadFormulaRecord;
    private static Logger logger;
    private FormulaData formula;
    private FormulaParser parser;

    static {
        Class clsClass$ = class$jxl$write$biff$ReadFormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.ReadFormulaRecord");
            class$jxl$write$biff$ReadFormulaRecord = clsClass$;
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

    protected ReadFormulaRecord(FormulaData formulaData) {
        super(Type.FORMULA, formulaData);
        this.formula = formulaData;
    }

    protected final byte[] getCellData() {
        return super.getData();
    }

    protected byte[] handleFormulaException() {
        byte[] data = super.getData();
        WritableWorkbookImpl workbook = getSheet().getWorkbook();
        this.parser = new FormulaParser(getContents(), workbook, workbook, workbook.getSettings());
        try {
            this.parser.parse();
        } catch (FormulaException e) {
            logger.warn(e.getMessage());
            this.parser = new FormulaParser("\"ERROR\"", workbook, workbook, workbook.getSettings());
            try {
                this.parser.parse();
            } catch (FormulaException unused) {
                Assert.verify(false);
            }
        }
        byte[] bytes = this.parser.getBytes();
        byte[] bArr = new byte[bytes.length + 16];
        IntegerHelper.getTwoBytes(bytes.length, bArr, 14);
        System.arraycopy(bytes, 0, bArr, 16, bytes.length);
        bArr[8] = (byte) (bArr[8] | 2);
        byte[] bArr2 = new byte[data.length + bArr.length];
        System.arraycopy(data, 0, bArr2, 0, data.length);
        System.arraycopy(bArr, 0, bArr2, data.length, bArr.length);
        return bArr2;
    }

    @Override // jxl.write.biff.CellValue, jxl.biff.WritableRecordData
    public byte[] getData() {
        byte[] formulaData;
        byte[] data = super.getData();
        try {
            if (this.parser == null) {
                formulaData = this.formula.getFormulaData();
            } else {
                byte[] bytes = this.parser.getBytes();
                byte[] bArr = new byte[bytes.length + 16];
                IntegerHelper.getTwoBytes(bytes.length, bArr, 14);
                System.arraycopy(bytes, 0, bArr, 16, bytes.length);
                formulaData = bArr;
            }
            formulaData[8] = (byte) (formulaData[8] | 2);
            byte[] bArr2 = new byte[data.length + formulaData.length];
            System.arraycopy(data, 0, bArr2, 0, data.length);
            System.arraycopy(formulaData, 0, bArr2, data.length, formulaData.length);
            return bArr2;
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(CellReferenceHelper.getCellReference(getColumn(), getRow()));
            stringBuffer.append(" ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
            return handleFormulaException();
        }
    }

    @Override // jxl.Cell
    public CellType getType() {
        return this.formula.getType();
    }

    @Override // jxl.Cell
    public String getContents() {
        return this.formula.getContents();
    }

    @Override // jxl.biff.FormulaData
    public byte[] getFormulaData() throws FormulaException {
        byte[] formulaData = this.formula.getFormulaData();
        byte[] bArr = new byte[formulaData.length];
        System.arraycopy(formulaData, 0, bArr, 0, formulaData.length);
        bArr[8] = (byte) (bArr[8] | 2);
        return bArr;
    }

    @Override // jxl.write.WritableCell
    public WritableCell copyTo(int i, int i2) {
        return new FormulaRecord(i, i2, this);
    }

    @Override // jxl.write.biff.CellValue
    void setCellDetails(FormattingRecords formattingRecords, SharedStrings sharedStrings, WritableSheetImpl writableSheetImpl) {
        super.setCellDetails(formattingRecords, sharedStrings, writableSheetImpl);
        writableSheetImpl.getWorkbook().addRCIRCell(this);
    }

    @Override // jxl.write.biff.CellValue
    void columnInserted(Sheet sheet, int i, int i2) {
        try {
            if (this.parser == null) {
                byte[] formulaData = this.formula.getFormulaData();
                byte[] bArr = new byte[formulaData.length - 16];
                System.arraycopy(formulaData, 16, bArr, 0, bArr.length);
                this.parser = new FormulaParser(bArr, this, getSheet().getWorkbook(), getSheet().getWorkbook(), getSheet().getWorkbookSettings());
                this.parser.parse();
            }
            this.parser.columnInserted(i, i2, sheet == getSheet());
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("cannot insert column within formula:  ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
        }
    }

    @Override // jxl.write.biff.CellValue
    void columnRemoved(Sheet sheet, int i, int i2) {
        try {
            if (this.parser == null) {
                byte[] formulaData = this.formula.getFormulaData();
                byte[] bArr = new byte[formulaData.length - 16];
                System.arraycopy(formulaData, 16, bArr, 0, bArr.length);
                this.parser = new FormulaParser(bArr, this, getSheet().getWorkbook(), getSheet().getWorkbook(), getSheet().getWorkbookSettings());
                this.parser.parse();
            }
            this.parser.columnRemoved(i, i2, sheet == getSheet());
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("cannot remove column within formula:  ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
        }
    }

    @Override // jxl.write.biff.CellValue
    void rowInserted(Sheet sheet, int i, int i2) {
        try {
            if (this.parser == null) {
                byte[] formulaData = this.formula.getFormulaData();
                byte[] bArr = new byte[formulaData.length - 16];
                System.arraycopy(formulaData, 16, bArr, 0, bArr.length);
                this.parser = new FormulaParser(bArr, this, getSheet().getWorkbook(), getSheet().getWorkbook(), getSheet().getWorkbookSettings());
                this.parser.parse();
            }
            this.parser.rowInserted(i, i2, sheet == getSheet());
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("cannot insert row within formula:  ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
        }
    }

    @Override // jxl.write.biff.CellValue
    void rowRemoved(Sheet sheet, int i, int i2) {
        try {
            if (this.parser == null) {
                byte[] formulaData = this.formula.getFormulaData();
                byte[] bArr = new byte[formulaData.length - 16];
                System.arraycopy(formulaData, 16, bArr, 0, bArr.length);
                this.parser = new FormulaParser(bArr, this, getSheet().getWorkbook(), getSheet().getWorkbook(), getSheet().getWorkbookSettings());
                this.parser.parse();
            }
            this.parser.rowRemoved(i, i2, sheet == getSheet());
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("cannot remove row within formula:  ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
        }
    }

    protected FormulaData getReadFormula() {
        return this.formula;
    }

    public String getFormula() throws FormulaException {
        return ((FormulaCell) this.formula).getFormula();
    }

    public boolean handleImportedCellReferences(ExternalSheet externalSheet, WorkbookMethods workbookMethods, WorkbookSettings workbookSettings) {
        try {
            if (this.parser == null) {
                byte[] formulaData = this.formula.getFormulaData();
                byte[] bArr = new byte[formulaData.length - 16];
                System.arraycopy(formulaData, 16, bArr, 0, bArr.length);
                this.parser = new FormulaParser(bArr, this, externalSheet, workbookMethods, workbookSettings);
                this.parser.parse();
            }
            return this.parser.handleImportedCellReferences();
        } catch (FormulaException e) {
            Logger logger2 = logger;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("cannot import formula:  ");
            stringBuffer.append(e.getMessage());
            logger2.warn(stringBuffer.toString());
            return false;
        }
    }
}
