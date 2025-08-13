package jxl.write.biff;

import common.Assert;
import common.Logger;
import jxl.StringFormulaCell;
import jxl.biff.FormulaData;
import jxl.biff.IntegerHelper;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
class ReadStringFormulaRecord extends ReadFormulaRecord implements StringFormulaCell {
    static /* synthetic */ Class class$jxl$write$biff$ReadFormulaRecord;
    private static Logger logger;

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

    public ReadStringFormulaRecord(FormulaData formulaData) {
        super(formulaData);
    }

    @Override // jxl.LabelCell
    public String getString() {
        return ((StringFormulaCell) getReadFormula()).getString();
    }

    @Override // jxl.write.biff.ReadFormulaRecord
    protected byte[] handleFormulaException() {
        byte[] cellData = super.getCellData();
        WritableWorkbookImpl workbook = getSheet().getWorkbook();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("\"");
        stringBuffer.append(getContents());
        stringBuffer.append("\"");
        FormulaParser formulaParser = new FormulaParser(stringBuffer.toString(), workbook, workbook, workbook.getSettings());
        try {
            formulaParser.parse();
        } catch (FormulaException e) {
            logger.warn(e.getMessage());
            formulaParser = new FormulaParser("\"ERROR\"", workbook, workbook, workbook.getSettings());
            try {
                formulaParser.parse();
            } catch (FormulaException unused) {
                Assert.verify(false);
            }
        }
        byte[] bytes = formulaParser.getBytes();
        byte[] bArr = new byte[bytes.length + 16];
        IntegerHelper.getTwoBytes(bytes.length, bArr, 14);
        System.arraycopy(bytes, 0, bArr, 16, bytes.length);
        bArr[8] = (byte) (bArr[8] | 2);
        byte[] bArr2 = new byte[cellData.length + bArr.length];
        System.arraycopy(cellData, 0, bArr2, 0, cellData.length);
        System.arraycopy(bArr, 0, bArr2, cellData.length, bArr.length);
        bArr2[6] = 0;
        bArr2[12] = -1;
        bArr2[13] = -1;
        return bArr2;
    }
}
