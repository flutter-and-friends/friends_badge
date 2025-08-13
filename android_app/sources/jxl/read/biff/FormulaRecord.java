package jxl.read.biff;

import common.Assert;
import common.Logger;
import jxl.CellType;
import jxl.WorkbookSettings;
import jxl.biff.DoubleHelper;
import jxl.biff.FormattingRecords;
import jxl.biff.IntegerHelper;
import jxl.biff.WorkbookMethods;
import jxl.biff.formula.ExternalSheet;

/* loaded from: classes2.dex */
class FormulaRecord extends CellValue {
    static /* synthetic */ Class class$jxl$read$biff$FormulaRecord;
    public static final IgnoreSharedFormula ignoreSharedFormula;
    private static Logger logger;
    private CellValue formula;
    private boolean shared;

    static {
        Class clsClass$ = class$jxl$read$biff$FormulaRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.read.biff.FormulaRecord");
            class$jxl$read$biff$FormulaRecord = clsClass$;
        }
        logger = Logger.getLogger(clsClass$);
        ignoreSharedFormula = new IgnoreSharedFormula();
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class IgnoreSharedFormula {
        private IgnoreSharedFormula() {
        }
    }

    public FormulaRecord(Record record, File file, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, SheetImpl sheetImpl, WorkbookSettings workbookSettings) {
        super(record, formattingRecords, sheetImpl);
        byte[] data = getRecord().getData();
        this.shared = false;
        if ((IntegerHelper.getInt(data[14], data[15]) & 8) != 0) {
            this.shared = true;
            if (data[6] == 0 && data[12] == -1 && data[13] == -1) {
                this.formula = new SharedStringFormulaRecord(record, file, formattingRecords, externalSheet, workbookMethods, sheetImpl, workbookSettings);
                return;
            }
            if (data[6] == 3 && data[12] == -1 && data[13] == -1) {
                this.formula = new SharedStringFormulaRecord(record, file, formattingRecords, externalSheet, workbookMethods, sheetImpl, SharedStringFormulaRecord.EMPTY_STRING);
                return;
            }
            if (data[6] == 2 && data[12] == -1 && data[13] == -1) {
                this.formula = new SharedErrorFormulaRecord(record, file, data[8], formattingRecords, externalSheet, workbookMethods, sheetImpl);
                return;
            }
            if (data[6] == 1 && data[12] == -1 && data[13] == -1) {
                this.formula = new SharedBooleanFormulaRecord(record, file, data[8] == 1, formattingRecords, externalSheet, workbookMethods, sheetImpl);
                return;
            }
            SharedNumberFormulaRecord sharedNumberFormulaRecord = new SharedNumberFormulaRecord(record, file, DoubleHelper.getIEEEDouble(data, 6), formattingRecords, externalSheet, workbookMethods, sheetImpl);
            sharedNumberFormulaRecord.setNumberFormat(formattingRecords.getNumberFormat(getXFIndex()));
            this.formula = sharedNumberFormulaRecord;
            return;
        }
        if (data[6] == 0 && data[12] == -1 && data[13] == -1) {
            this.formula = new StringFormulaRecord(record, file, formattingRecords, externalSheet, workbookMethods, sheetImpl, workbookSettings);
            return;
        }
        if (data[6] == 1 && data[12] == -1 && data[13] == -1) {
            this.formula = new BooleanFormulaRecord(record, formattingRecords, externalSheet, workbookMethods, sheetImpl);
            return;
        }
        if (data[6] == 2 && data[12] == -1 && data[13] == -1) {
            this.formula = new ErrorFormulaRecord(record, formattingRecords, externalSheet, workbookMethods, sheetImpl);
        } else if (data[6] == 3 && data[12] == -1 && data[13] == -1) {
            this.formula = new StringFormulaRecord(record, formattingRecords, externalSheet, workbookMethods, sheetImpl);
        } else {
            this.formula = new NumberFormulaRecord(record, formattingRecords, externalSheet, workbookMethods, sheetImpl);
        }
    }

    public FormulaRecord(Record record, File file, FormattingRecords formattingRecords, ExternalSheet externalSheet, WorkbookMethods workbookMethods, IgnoreSharedFormula ignoreSharedFormula2, SheetImpl sheetImpl, WorkbookSettings workbookSettings) {
        super(record, formattingRecords, sheetImpl);
        byte[] data = getRecord().getData();
        this.shared = false;
        if (data[6] == 0 && data[12] == -1 && data[13] == -1) {
            this.formula = new StringFormulaRecord(record, file, formattingRecords, externalSheet, workbookMethods, sheetImpl, workbookSettings);
            return;
        }
        if (data[6] == 1 && data[12] == -1 && data[13] == -1) {
            this.formula = new BooleanFormulaRecord(record, formattingRecords, externalSheet, workbookMethods, sheetImpl);
        } else if (data[6] == 2 && data[12] == -1 && data[13] == -1) {
            this.formula = new ErrorFormulaRecord(record, formattingRecords, externalSheet, workbookMethods, sheetImpl);
        } else {
            this.formula = new NumberFormulaRecord(record, formattingRecords, externalSheet, workbookMethods, sheetImpl);
        }
    }

    @Override // jxl.Cell
    public String getContents() {
        Assert.verify(false);
        return "";
    }

    @Override // jxl.Cell
    public CellType getType() {
        Assert.verify(false);
        return CellType.EMPTY;
    }

    final CellValue getFormula() {
        return this.formula;
    }

    final boolean isShared() {
        return this.shared;
    }
}
