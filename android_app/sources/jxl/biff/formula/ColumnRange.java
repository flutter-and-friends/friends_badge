package jxl.biff.formula;

import common.Assert;
import common.Logger;
import jxl.biff.CellReferenceHelper;

/* loaded from: classes2.dex */
class ColumnRange extends Area {
    static /* synthetic */ Class class$jxl$biff$formula$ColumnRange;
    private static Logger logger;

    static {
        Class clsClass$ = class$jxl$biff$formula$ColumnRange;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.biff.formula.ColumnRange");
            class$jxl$biff$formula$ColumnRange = clsClass$;
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

    ColumnRange() {
    }

    ColumnRange(String str) {
        int iIndexOf = str.indexOf(":");
        Assert.verify(iIndexOf != -1);
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        setRangeData(CellReferenceHelper.getColumn(strSubstring), CellReferenceHelper.getColumn(strSubstring2), 0, 65535, CellReferenceHelper.isColumnRelative(strSubstring), CellReferenceHelper.isColumnRelative(strSubstring2), false, false);
    }

    @Override // jxl.biff.formula.Area, jxl.biff.formula.ParseItem
    public void getString(StringBuffer stringBuffer) {
        CellReferenceHelper.getColumnReference(getFirstColumn(), stringBuffer);
        stringBuffer.append(':');
        CellReferenceHelper.getColumnReference(getLastColumn(), stringBuffer);
    }
}
