package jxl.format;

/* loaded from: classes2.dex */
public class Alignment {
    private String string;
    private int value;
    private static Alignment[] alignments = new Alignment[0];
    public static Alignment GENERAL = new Alignment(0, "general");
    public static Alignment LEFT = new Alignment(1, "left");
    public static Alignment CENTRE = new Alignment(2, "centre");
    public static Alignment RIGHT = new Alignment(3, "right");
    public static Alignment FILL = new Alignment(4, "fill");
    public static Alignment JUSTIFY = new Alignment(5, "justify");

    protected Alignment(int i, String str) {
        this.value = i;
        this.string = str;
        Alignment[] alignmentArr = alignments;
        alignments = new Alignment[alignmentArr.length + 1];
        System.arraycopy(alignmentArr, 0, alignments, 0, alignmentArr.length);
        alignments[alignmentArr.length] = this;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }

    public static Alignment getAlignment(int i) {
        int i2 = 0;
        while (true) {
            Alignment[] alignmentArr = alignments;
            if (i2 < alignmentArr.length) {
                if (alignmentArr[i2].getValue() == i) {
                    return alignments[i2];
                }
                i2++;
            } else {
                return GENERAL;
            }
        }
    }
}
