package jxl.read.biff;

import common.Logger;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import jxl.CellType;
import jxl.NumberCell;
import jxl.NumberFormulaCell;
import jxl.biff.DoubleHelper;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
class NumberFormulaRecord extends CellValue implements NumberCell, FormulaData, NumberFormulaCell {
    static /* synthetic */ Class class$jxl$read$biff$NumberFormulaRecord;
    private static final DecimalFormat defaultFormat;
    private static Logger logger;
    private byte[] data;
    private ExternalSheet externalSheet;
    private NumberFormat format;
    private String formulaString;
    private WorkbookMethods nameTable;
    private double value;

    static {
        Class clsClass$ = class$jxl$read$biff$NumberFormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.NumberFormulaRecord");
            class$jxl$read$biff$NumberFormulaRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        defaultFormat = new DecimalFormat("#.###");
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    public NumberFormulaRecord(Record record, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl) {
        super(record, formattingRecords, sheetImpl);
        this.externalSheet = externalSheet;
        this.nameTable = workbookMethods;
        this.data = getRecord().getData();
        this.format = formattingRecords.getNumberFormat(getXFIndex());
        if (this.format == null) {
            this.format = defaultFormat;
        }
        this.value = DoubleHelper.getIEEEDouble(this.data, 6);
    }

    @Override // jxl.NumberCell
    public double getValue() {
        return this.value;
    }

    @Override // jxl.Cell
    public String getContents() {
        return !Double.isNaN(this.value) ? this.format.format(this.value) : "";
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.NUMBER_FORMULA;
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

    @Override // jxl.NumberCell
    public NumberFormat getNumberFormat() {
        return this.format;
    }
}
