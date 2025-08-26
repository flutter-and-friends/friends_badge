package jxl.read.biff;

import common.Logger;
import jxl.BooleanCell;
import jxl.BooleanFormulaCell;
import jxl.CellType;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.IntegerHelper;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
public class SharedBooleanFormulaRecord extends BaseSharedFormulaRecord implements BooleanCell, FormulaData, BooleanFormulaCell {
    static /* synthetic */ Class class$jxl$read$biff$SharedBooleanFormulaRecord;
    private static Logger logger;
    private boolean value;

    static {
        Class clsClass$ = class$jxl$read$biff$SharedBooleanFormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.SharedBooleanFormulaRecord");
            class$jxl$read$biff$SharedBooleanFormulaRecord = clsClass$;
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

    public SharedBooleanFormulaRecord(Record record, File file, boolean z, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl) {
        super(record, formattingRecords, externalSheet, workbookMethods, sheetImpl, file.getPos());
        this.value = z;
    }

    @Override // jxl.BooleanCell
    public boolean getValue() {
        return this.value;
    }

    @Override // jxl.Cell
    public String getContents() {
        return new Boolean(this.value).toString();
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.BOOLEAN_FORMULA;
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
        bArr[6] = 1;
        bArr[8] = (byte) (!this.value ? 0 : 1);
        bArr[12] = -1;
        bArr[13] = -1;
        System.arraycopy(bytes, 0, bArr, 22, bytes.length);
        IntegerHelper.getTwoBytes(bytes.length, bArr, 20);
        byte[] bArr2 = new byte[bArr.length - 6];
        System.arraycopy(bArr, 6, bArr2, 0, bArr.length - 6);
        return bArr2;
    }
}
