package jxl.read.biff;

import java.text.DateFormat;
import java.util.Date;
import jxl.CellType;
import jxl.DateCell;
import jxl.DateFormulaCell;
import jxl.biff.DoubleHelper;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.IntegerHelper;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
public class SharedDateFormulaRecord extends BaseSharedFormulaRecord implements DateCell, FormulaData, DateFormulaCell {
    private DateRecord dateRecord;
    private double value;

    public SharedDateFormulaRecord(SharedNumberFormulaRecord sharedNumberFormulaRecord, FormattingRecords formattingRecords, boolean z, SheetImpl sheetImpl, int i) {
        super(sharedNumberFormulaRecord.getRecord(), formattingRecords, sharedNumberFormulaRecord.getExternalSheet(), sharedNumberFormulaRecord.getNameTable(), sheetImpl, i);
        this.dateRecord = new DateRecord(sharedNumberFormulaRecord, sharedNumberFormulaRecord.getXFIndex(), formattingRecords, z, sheetImpl);
        this.value = sharedNumberFormulaRecord.getValue();
    }

    public double getValue() {
        return this.value;
    }

    @Override // jxl.Cell
    public String getContents() {
        return this.dateRecord.getContents();
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.DATE_FORMULA;
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

    @Override // jxl.DateCell
    public Date getDate() {
        return this.dateRecord.getDate();
    }

    @Override // jxl.DateCell
    public boolean isTime() {
        return this.dateRecord.isTime();
    }

    @Override // jxl.DateCell
    public DateFormat getDateFormat() {
        return this.dateRecord.getDateFormat();
    }
}
