package jxl.write;

import jxl.biff.DisplayFormat;
import jxl.format.Format;

/* loaded from: classes2.dex */
public final class NumberFormats {
    public static final DisplayFormat DEFAULT = new BuiltInFormat(0, "#");
    public static final DisplayFormat INTEGER = new BuiltInFormat(1, "0");
    public static final DisplayFormat FLOAT = new BuiltInFormat(2, "0.00");
    public static final DisplayFormat THOUSANDS_INTEGER = new BuiltInFormat(3, "#,##0");
    public static final DisplayFormat THOUSANDS_FLOAT = new BuiltInFormat(4, "#,##0.00");
    public static final DisplayFormat ACCOUNTING_INTEGER = new BuiltInFormat(5, "$#,##0;($#,##0)");
    public static final DisplayFormat ACCOUNTING_RED_INTEGER = new BuiltInFormat(6, "$#,##0;($#,##0)");
    public static final DisplayFormat ACCOUNTING_FLOAT = new BuiltInFormat(7, "$#,##0;($#,##0)");
    public static final DisplayFormat ACCOUNTING_RED_FLOAT = new BuiltInFormat(8, "$#,##0;($#,##0)");
    public static final DisplayFormat PERCENT_INTEGER = new BuiltInFormat(9, "0%");
    public static final DisplayFormat PERCENT_FLOAT = new BuiltInFormat(10, "0.00%");
    public static final DisplayFormat EXPONENTIAL = new BuiltInFormat(11, "0.00E00");
    public static final DisplayFormat FRACTION_ONE_DIGIT = new BuiltInFormat(12, "?/?");
    public static final DisplayFormat FRACTION_TWO_DIGITS = new BuiltInFormat(13, "??/??");
    public static final DisplayFormat FORMAT1 = new BuiltInFormat(37, "#,##0;(#,##0)");
    public static final DisplayFormat FORMAT2 = new BuiltInFormat(38, "#,##0;(#,##0)");
    public static final DisplayFormat FORMAT3 = new BuiltInFormat(39, "#,##0.00;(#,##0.00)");
    public static final DisplayFormat FORMAT4 = new BuiltInFormat(40, "#,##0.00;(#,##0.00)");
    public static final DisplayFormat FORMAT5 = new BuiltInFormat(41, "#,##0;(#,##0)");
    public static final DisplayFormat FORMAT6 = new BuiltInFormat(42, "#,##0;(#,##0)");
    public static final DisplayFormat FORMAT7 = new BuiltInFormat(43, "#,##0.00;(#,##0.00)");
    public static final DisplayFormat FORMAT8 = new BuiltInFormat(44, "#,##0.00;(#,##0.00)");
    public static final DisplayFormat FORMAT9 = new BuiltInFormat(46, "#,##0.00;(#,##0.00)");
    public static final DisplayFormat FORMAT10 = new BuiltInFormat(48, "##0.0E0");
    public static final DisplayFormat TEXT = new BuiltInFormat(49, "@");

    private static class BuiltInFormat implements DisplayFormat, Format {
        private String formatString;
        private int index;

        @Override // jxl.biff.DisplayFormat
        public void initialize(int i) {
        }

        @Override // jxl.biff.DisplayFormat
        public boolean isBuiltIn() {
            return true;
        }

        @Override // jxl.biff.DisplayFormat
        public boolean isInitialized() {
            return true;
        }

        public BuiltInFormat(int i, String str) {
            this.index = i;
            this.formatString = str;
        }

        @Override // jxl.biff.DisplayFormat
        public int getFormatIndex() {
            return this.index;
        }

        @Override // jxl.format.Format
        public String getFormatString() {
            return this.formatString;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof BuiltInFormat) && this.index == ((BuiltInFormat) obj).index;
        }

        public int hashCode() {
            return this.index;
        }
    }
}
