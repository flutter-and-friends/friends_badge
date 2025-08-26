package jxl.biff.formula;

import common.Assert;
import common.Logger;
import jxl.biff.CellReferenceHelper;

/* loaded from: classes2.dex */
class ColumnRange3d extends Area3d {
    static /* synthetic */ Class class$jxl$biff$formula$ColumnRange3d;
    private static Logger logger;
    private int sheet;
    private ExternalSheet workbook;

    static {
        Class clsClass$ = class$jxl$biff$formula$ColumnRange3d;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.ColumnRange3d");
            class$jxl$biff$formula$ColumnRange3d = clsClass$;
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

    ColumnRange3d(ExternalSheet externalSheet) {
        super(externalSheet);
        this.workbook = externalSheet;
    }

    ColumnRange3d(String str, ExternalSheet externalSheet) throws FormulaException {
        super(externalSheet);
        this.workbook = externalSheet;
        int iLastIndexOf = str.lastIndexOf(":");
        Assert.verify(iLastIndexOf != -1);
        str.substring(0, iLastIndexOf);
        String strSubstring = str.substring(iLastIndexOf + 1);
        int iIndexOf = str.indexOf(33);
        int column = CellReferenceHelper.getColumn(str.substring(iIndexOf + 1, iLastIndexOf));
        String strSubstring2 = str.substring(0, iIndexOf);
        strSubstring2.lastIndexOf(93);
        if (strSubstring2.charAt(0) == '\'' && strSubstring2.charAt(strSubstring2.length() - 1) == '\'') {
            strSubstring2 = strSubstring2.substring(1, strSubstring2.length() - 1);
        }
        this.sheet = externalSheet.getExternalSheetIndex(strSubstring2);
        if (this.sheet < 0) {
            throw new FormulaException(FormulaException.SHEET_REF_NOT_FOUND, strSubstring2);
        }
        setRangeData(this.sheet, column, CellReferenceHelper.getColumn(strSubstring), 0, 65535, true, true, true, true);
    }

    @Override // jxl.biff.formula.Area3d, jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        stringBuffer.append('\'');
        stringBuffer.append(this.workbook.getExternalSheetName(this.sheet));
        stringBuffer.append('\'');
        stringBuffer.append('!');
        CellReferenceHelper.getColumnReference(getFirstColumn(), stringBuffer);
        stringBuffer.append(':');
        CellReferenceHelper.getColumnReference(getLastColumn(), stringBuffer);
    }
}
