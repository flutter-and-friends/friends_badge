package jxl.format;

/* loaded from: classes2.dex */
public class BorderLineStyle {
    private String string;
    private int value;
    private static BorderLineStyle[] styles = new BorderLineStyle[0];
    public static final BorderLineStyle NONE = new BorderLineStyle(0, "none");
    public static final BorderLineStyle THIN = new BorderLineStyle(1, "thin");
    public static final BorderLineStyle MEDIUM = new BorderLineStyle(2, "medium");
    public static final BorderLineStyle DASHED = new BorderLineStyle(3, "dashed");
    public static final BorderLineStyle DOTTED = new BorderLineStyle(4, "dotted");
    public static final BorderLineStyle THICK = new BorderLineStyle(5, "thick");
    public static final BorderLineStyle DOUBLE = new BorderLineStyle(6, "double");
    public static final BorderLineStyle HAIR = new BorderLineStyle(7, "hair");
    public static final BorderLineStyle MEDIUM_DASHED = new BorderLineStyle(8, "medium dashed");
    public static final BorderLineStyle DASH_DOT = new BorderLineStyle(9, "dash dot");
    public static final BorderLineStyle MEDIUM_DASH_DOT = new BorderLineStyle(10, "medium dash dot");
    public static final BorderLineStyle DASH_DOT_DOT = new BorderLineStyle(11, "Dash dot dot");
    public static final BorderLineStyle MEDIUM_DASH_DOT_DOT = new BorderLineStyle(12, "Medium dash dot dot");
    public static final BorderLineStyle SLANTED_DASH_DOT = new BorderLineStyle(13, "Slanted dash dot");

    protected BorderLineStyle(int i, String str) {
        this.value = i;
        this.string = str;
        BorderLineStyle[] borderLineStyleArr = styles;
        styles = new BorderLineStyle[borderLineStyleArr.length + 1];
        System.arraycopy(borderLineStyleArr, 0, styles, 0, borderLineStyleArr.length);
        styles[borderLineStyleArr.length] = this;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }

    public static BorderLineStyle getStyle(int i) {
        int i2 = 0;
        while (true) {
            BorderLineStyle[] borderLineStyleArr = styles;
            if (i2 < borderLineStyleArr.length) {
                if (borderLineStyleArr[i2].getValue() == i) {
                    return styles[i2];
                }
                i2++;
            } else {
                return NONE;
            }
        }
    }
}
