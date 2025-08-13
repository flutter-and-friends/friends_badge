package jxl.format;

/* loaded from: classes2.dex */
public class BoldStyle {
    private String string;
    private int value;
    public static final BoldStyle NORMAL = new BoldStyle(400, "Normal");
    public static final BoldStyle BOLD = new BoldStyle(700, "Bold");

    protected BoldStyle(int i, String str) {
        this.value = i;
        this.string = str;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }
}
