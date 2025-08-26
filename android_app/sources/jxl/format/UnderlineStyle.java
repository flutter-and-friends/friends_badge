package jxl.format;

/* loaded from: classes2.dex */
public final class UnderlineStyle {
    private String string;
    private int value;
    private static UnderlineStyle[] styles = new UnderlineStyle[0];
    public static final UnderlineStyle NO_UNDERLINE = new UnderlineStyle(0, "none");
    public static final UnderlineStyle SINGLE = new UnderlineStyle(1, "single");
    public static final UnderlineStyle DOUBLE = new UnderlineStyle(2, "double");
    public static final UnderlineStyle SINGLE_ACCOUNTING = new UnderlineStyle(33, "single accounting");
    public static final UnderlineStyle DOUBLE_ACCOUNTING = new UnderlineStyle(34, "double accounting");

    protected UnderlineStyle(int i, String str) {
        this.value = i;
        this.string = str;
        UnderlineStyle[] underlineStyleArr = styles;
        styles = new UnderlineStyle[underlineStyleArr.length + 1];
        System.arraycopy(underlineStyleArr, 0, styles, 0, underlineStyleArr.length);
        styles[underlineStyleArr.length] = this;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }

    public static UnderlineStyle getStyle(int i) {
        int i2 = 0;
        while (true) {
            UnderlineStyle[] underlineStyleArr = styles;
            if (i2 < underlineStyleArr.length) {
                if (underlineStyleArr[i2].getValue() == i) {
                    return styles[i2];
                }
                i2++;
            } else {
                return NO_UNDERLINE;
            }
        }
    }
}
