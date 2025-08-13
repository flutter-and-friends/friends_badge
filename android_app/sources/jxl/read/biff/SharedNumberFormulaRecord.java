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
import jxl.biff.IntegerHelper;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
public class SharedNumberFormulaRecord extends BaseSharedFormulaRecord implements NumberCell, FormulaData, NumberFormulaCell {
    static /* synthetic */ Class class$jxl$read$biff$SharedNumberFormulaRecord;
    private static DecimalFormat defaultFormat;
    private static Logger logger;
    private NumberFormat format;
    private FormattingRecords formattingRecords;
    private double value;

    static {
        Class clsClass$ = class$jxl$read$biff$SharedNumberFormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.SharedNumberFormulaRecord");
            class$jxl$read$biff$SharedNumberFormulaRecord = clsClass$;
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

    public SharedNumberFormulaRecord(Record record, File file, double d, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl) {
        super(record, formattingRecords, externalSheet, workbookMethods, sheetImpl, file.getPos());
        this.value = d;
        this.format = defaultFormat;
    }

    final void setNumberFormat(NumberFormat numberFormat) {
        if (numberFormat != null) {
            this.format = numberFormat;
        }
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
        FormulaParser formulaParser = new FormulaParser(getTokens(), this, getExternalSheet(), getNameTable(), getSheet().getWorkbook().getSettings());
        formulaParser.parse();
        byte[] bytes = formulaParser.getBytes();
        byte[] bArr = new byte[bytes.length + 22];
        IntegerHelper.getTwoBytes(getRow(), bArr, 0);
        IntegerHelper.getTwoBytes(getColumn(), bArr, 2);
        IntegerHelper.getTwoBytes(getXFIndex(), bArr, 4);
        DoubleHelper.getIEEEBytes(this.value, bArr, 6);
        System.arraycopy(bytes, 0, bArr, 22, bytes.length);
        IntegerHelper.getTwoBytes(bytes.length, bArr, 20);
        byte[] bArr2 = new byte[bArr.length - 6];
        System.arraycopy(bArr, 6, bArr2, 0, bArr.length - 6);
        return bArr2;
    }

    @Override // jxl.NumberCell
    public NumberFormat getNumberFormat() {
        return this.format;
    }
}
