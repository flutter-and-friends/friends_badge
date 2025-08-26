package jxl.format;

/* loaded from: classes2.dex */
public final class ScriptStyle {
    private String string;
    private int value;
    private static ScriptStyle[] styles = new ScriptStyle[0];
    public static final ScriptStyle NORMAL_SCRIPT = new ScriptStyle(0, "normal");
    public static final ScriptStyle SUPERSCRIPT = new ScriptStyle(1, "super");
    public static final ScriptStyle SUBSCRIPT = new ScriptStyle(2, "sub");

    protected ScriptStyle(int i, String str) {
        this.value = i;
        this.string = str;
        ScriptStyle[] scriptStyleArr = styles;
        styles = new ScriptStyle[scriptStyleArr.length + 1];
        System.arraycopy(scriptStyleArr, 0, styles, 0, scriptStyleArr.length);
        styles[scriptStyleArr.length] = this;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }

    public static ScriptStyle getStyle(int i) {
        int i2 = 0;
        while (true) {
            ScriptStyle[] scriptStyleArr = styles;
            if (i2 < scriptStyleArr.length) {
                if (scriptStyleArr[i2].getValue() == i) {
                    return styles[i2];
                }
                i2++;
            } else {
                return NORMAL_SCRIPT;
            }
        }
    }
}
