package jxl.write;

import jxl.biff.DisplayFormat;

/* loaded from: classes2.dex */
public final class DateFormats {
    public static final DisplayFormat FORMAT1 = new BuiltInFormat(14, "M/d/yy");
    public static final DisplayFormat DEFAULT = FORMAT1;
    public static final DisplayFormat FORMAT2 = new BuiltInFormat(15, "d-MMM-yy");
    public static final DisplayFormat FORMAT3 = new BuiltInFormat(16, "d-MMM");
    public static final DisplayFormat FORMAT4 = new BuiltInFormat(17, "MMM-yy");
    public static final DisplayFormat FORMAT5 = new BuiltInFormat(18, "h:mm a");
    public static final DisplayFormat FORMAT6 = new BuiltInFormat(19, "h:mm:ss a");
    public static final DisplayFormat FORMAT7 = new BuiltInFormat(20, "H:mm");
    public static final DisplayFormat FORMAT8 = new BuiltInFormat(21, "H:mm:ss");
    public static final DisplayFormat FORMAT9 = new BuiltInFormat(22, "M/d/yy H:mm");
    public static final DisplayFormat FORMAT10 = new BuiltInFormat(45, "mm:ss");
    public static final DisplayFormat FORMAT11 = new BuiltInFormat(46, "H:mm:ss");
    public static final DisplayFormat FORMAT12 = new BuiltInFormat(47, "H:mm:ss");

    private static class BuiltInFormat implements DisplayFormat {
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
