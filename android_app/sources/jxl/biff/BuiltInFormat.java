package jxl.biff;

import jxl.format.Format;

/* loaded from: classes2.dex */
final class BuiltInFormat implements Format, DisplayFormat {
    public static BuiltInFormat[] builtIns = new BuiltInFormat[50];
    private int formatIndex;
    private String formatString;

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

    private BuiltInFormat(String str, int i) {
        this.formatIndex = i;
        this.formatString = str;
    }

    @Override // jxl.format.Format
    public String getFormatString() {
        return this.formatString;
    }

    @Override // jxl.biff.DisplayFormat
    public int getFormatIndex() {
        return this.formatIndex;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof BuiltInFormat) && this.formatIndex == ((BuiltInFormat) obj).formatIndex;
    }

    static {
        builtIns[0] = new BuiltInFormat("", 0);
        builtIns[1] = new BuiltInFormat("0", 1);
        builtIns[2] = new BuiltInFormat("0.00", 2);
        builtIns[3] = new BuiltInFormat("#,##0", 3);
        builtIns[4] = new BuiltInFormat("#,##0.00", 4);
        builtIns[5] = new BuiltInFormat("($#,##0_);($#,##0)", 5);
        builtIns[6] = new BuiltInFormat("($#,##0_);[Red]($#,##0)", 6);
        builtIns[7] = new BuiltInFormat("($#,##0_);[Red]($#,##0)", 7);
        builtIns[8] = new BuiltInFormat("($#,##0.00_);[Red]($#,##0.00)", 8);
        builtIns[9] = new BuiltInFormat("0%", 9);
        builtIns[10] = new BuiltInFormat("0.00%", 10);
        builtIns[11] = new BuiltInFormat("0.00E+00", 11);
        builtIns[12] = new BuiltInFormat("# ?/?", 12);
        builtIns[13] = new BuiltInFormat("# ??/??", 13);
        builtIns[14] = new BuiltInFormat("dd/mm/yyyy", 14);
        builtIns[15] = new BuiltInFormat("d-mmm-yy", 15);
        builtIns[16] = new BuiltInFormat("d-mmm", 16);
        builtIns[17] = new BuiltInFormat("mmm-yy", 17);
        builtIns[18] = new BuiltInFormat("h:mm AM/PM", 18);
        builtIns[19] = new BuiltInFormat("h:mm:ss AM/PM", 19);
        builtIns[20] = new BuiltInFormat("h:mm", 20);
        builtIns[21] = new BuiltInFormat("h:mm:ss", 21);
        builtIns[22] = new BuiltInFormat("m/d/yy h:mm", 22);
        builtIns[37] = new BuiltInFormat("(#,##0_);(#,##0)", 37);
        builtIns[38] = new BuiltInFormat("(#,##0_);[Red](#,##0)", 38);
        builtIns[39] = new BuiltInFormat("(#,##0.00_);(#,##0.00)", 39);
        builtIns[40] = new BuiltInFormat("(#,##0.00_);[Red](#,##0.00)", 40);
        builtIns[41] = new BuiltInFormat("_(*#,##0_);_(*(#,##0);_(*\"-\"_);(@_)", 41);
        builtIns[42] = new BuiltInFormat("_($*#,##0_);_($*(#,##0);_($*\"-\"_);(@_)", 42);
        builtIns[43] = new BuiltInFormat("_(* #,##0.00_);_(* (#,##0.00);_(* \"-\"??_);(@_)", 43);
        builtIns[44] = new BuiltInFormat("_($* #,##0.00_);_($* (#,##0.00);_($* \"-\"??_);(@_)", 44);
        builtIns[45] = new BuiltInFormat("mm:ss", 45);
        builtIns[46] = new BuiltInFormat("[h]mm:ss", 46);
        builtIns[47] = new BuiltInFormat("mm:ss.0", 47);
        builtIns[48] = new BuiltInFormat("##0.0E+0", 48);
        builtIns[49] = new BuiltInFormat("@", 49);
    }
}
