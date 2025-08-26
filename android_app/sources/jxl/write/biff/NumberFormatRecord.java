package jxl.write.biff;

import common.Logger;
import jxl.biff.FormatRecord;

/* loaded from: classes2.dex */
public class NumberFormatRecord extends FormatRecord {
    static /* synthetic */ Class class$jxl$write$biff$NumberFormatRecord;
    private static Logger logger;

    /* JADX INFO: Access modifiers changed from: protected */
    public static class NonValidatingFormat {
    }

    static {
        Class clsClass$ = class$jxl$write$biff$NumberFormatRecord;
        if (clsClass$ == null) {
            clsClass$ = class$("jxl.write.biff.NumberFormatRecord");
            class$jxl$write$biff$NumberFormatRecord = clsClass$;
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

    protected NumberFormatRecord(String str) {
        setFormatString(trimInvalidChars(replace(str, "E0", "E+0")));
    }

    protected NumberFormatRecord(String str, NonValidatingFormat nonValidatingFormat) {
        setFormatString(replace(str, "E0", "E+0"));
    }

    private String trimInvalidChars(String str) {
        int iIndexOf = str.indexOf(35);
        int iIndexOf2 = str.indexOf(48);
        if (iIndexOf == -1 && iIndexOf2 == -1) {
            return "#.###";
        }
        if (iIndexOf != 0 && iIndexOf2 != 0 && iIndexOf != 1 && iIndexOf2 != 1) {
            if (iIndexOf == -1) {
                iIndexOf = Integer.MAX_VALUE;
            }
            if (iIndexOf2 == -1) {
                iIndexOf2 = Integer.MAX_VALUE;
            }
            int iMin = Math.min(iIndexOf, iIndexOf2);
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(str.charAt(0));
            stringBuffer.append(str.substring(iMin));
            str = stringBuffer.toString();
        }
        int iLastIndexOf = str.lastIndexOf(35);
        int iLastIndexOf2 = str.lastIndexOf(48);
        if (iLastIndexOf == str.length() || iLastIndexOf2 == str.length()) {
            return str;
        }
        int iMax = Math.max(iLastIndexOf, iLastIndexOf2);
        while (true) {
            iMax++;
            if (str.length() <= iMax || (str.charAt(iMax) != ')' && str.charAt(iMax) != '%')) {
                break;
            }
        }
        return str.substring(0, iMax);
    }
}
