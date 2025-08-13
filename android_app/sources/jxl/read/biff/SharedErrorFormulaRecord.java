package jxl.read.biff;

import common.Logger;
import jxl.CellType;
import jxl.ErrorCell;
import jxl.ErrorFormulaCell;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.IntegerHelper;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaErrorCode;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
public class SharedErrorFormulaRecord extends BaseSharedFormulaRecord implements ErrorCell, FormulaData, ErrorFormulaCell {
    static /* synthetic */ Class class$jxl$read$biff$SharedErrorFormulaRecord;
    private static Logger logger;
    private byte[] data;
    private FormulaErrorCode error;
    private int errorCode;

    static {
        Class clsClass$ = class$jxl$read$biff$SharedErrorFormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.SharedErrorFormulaRecord");
            class$jxl$read$biff$SharedErrorFormulaRecord = clsClass$;
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

    public SharedErrorFormulaRecord(Record record, File file, int i, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl) {
        super(record, formattingRecords, externalSheet, workbookMethods, sheetImpl, file.getPos());
        this.errorCode = i;
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
        FormulaParser formulaParser = new FormulaParser(getTokens(), this, getExternalSheet(), getNameTable(), getSheet().getWorkbook().getSettings());
        formulaParser.parse();
        byte[] bytes = formulaParser.getBytes();
        byte[] bArr = new byte[bytes.length + 22];
        IntegerHelper.getTwoBytes(getRow(), bArr, 0);
        IntegerHelper.getTwoBytes(getColumn(), bArr, 2);
        IntegerHelper.getTwoBytes(getXFIndex(), bArr, 4);
        bArr[6] = 2;
        bArr[8] = (byte) this.errorCode;
        bArr[12] = -1;
        bArr[13] = -1;
        System.arraycopy(bytes, 0, bArr, 22, bytes.length);
        IntegerHelper.getTwoBytes(bytes.length, bArr, 20);
        byte[] bArr2 = new byte[bArr.length - 6];
        System.arraycopy(bArr, 6, bArr2, 0, bArr.length - 6);
        return bArr2;
    }
}
