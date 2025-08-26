package jxl.read.biff;

import common.Assert;
import common.Logger;
import jxl.CellType;
import jxl.LabelCell;
import jxl.StringFormulaCell;
import jxl.WorkbookSettings;
import jxl.biff.FormattingRecords;
import jxl.biff.FormulaData;
import jxl.biff.IntegerHelper;
import jxl.biff.StringHelper;
import jxl.biff.Type;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;
import jxl.biff.formula.FormulaException;
import jxl.biff.formula.FormulaParser;

/* loaded from: classes2.dex */
class StringFormulaRecord extends CellValue implements LabelCell, FormulaData, StringFormulaCell {
    static /* synthetic */ Class class$jxl$read$biff$StringFormulaRecord;
    private static Logger logger;
    private byte[] data;
    private ExternalSheet externalSheet;
    private String formulaString;
    private WorkbookMethods nameTable;
    private String value;

    static {
        Class clsClass$ = class$jxl$read$biff$StringFormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.StringFormulaRecord");
            class$jxl$read$biff$StringFormulaRecord = clsClass$;
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

    public StringFormulaRecord(Record record, File file, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl, WorkbookSettings workbookSettings) {
        super(record, formattingRecords, sheetImpl);
        this.externalSheet = externalSheet;
        this.nameTable = workbookMethods;
        this.data = getRecord().getData();
        int pos = file.getPos();
        Record next = file.next();
        int i = 0;
        while (next.getType() != Type.STRING && i < 4) {
            next = file.next();
            i++;
        }
        boolean z = i < 4;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" @ ");
        stringBuffer.append(pos);
        Assert.verify(z, stringBuffer.toString());
        readString(next.getData(), workbookSettings);
    }

    public StringFormulaRecord(Record record, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl) {
        super(record, formattingRecords, sheetImpl);
        this.externalSheet = externalSheet;
        this.nameTable = workbookMethods;
        this.data = getRecord().getData();
        this.value = "";
    }

    private void readString(byte[] bArr, WorkbookSettings workbookSettings) {
        int i = IntegerHelper.getInt(bArr[0], bArr[1]);
        if (i == 0) {
            this.value = "";
            return;
        }
        int i2 = 2;
        byte b = bArr[2];
        if ((b & 15) != b) {
            i = IntegerHelper.getInt(bArr[0], (byte) 0);
            b = bArr[1];
        } else {
            i2 = 3;
        }
        boolean z = (b & 4) != 0;
        if ((b & 8) != 0) {
            i2 += 2;
        }
        if (z) {
            i2 += 4;
        }
        if ((b & 1) == 0) {
            this.value = StringHelper.getString(bArr, i, i2, workbookSettings);
        } else {
            this.value = StringHelper.getUnicodeString(bArr, i, i2);
        }
    }

    @Override // jxl.Cell
    public String getContents() {
        return this.value;
    }

    @Override // jxl.LabelCell
    public String getString() {
        return this.value;
    }

    @Override // jxl.Cell
    public CellType getType() {
        return CellType.STRING_FORMULA;
    }

    @Override // jxl.biff.FormulaData
    public byte[] getFormulaData() throws FormulaException {
        if (!getSheet().getWorkbook().getWorkbookBof().isBiff8()) {
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
