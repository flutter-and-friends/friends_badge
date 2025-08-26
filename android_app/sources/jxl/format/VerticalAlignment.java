package jxl.format;

/* loaded from: classes2.dex */
public class VerticalAlignment {
    private String string;
    private int value;
    private static VerticalAlignment[] alignments = new VerticalAlignment[0];
    public static VerticalAlignment TOP = new VerticalAlignment(0, "top");
    public static VerticalAlignment CENTRE = new VerticalAlignment(1, "centre");
    public static VerticalAlignment BOTTOM = new VerticalAlignment(2, "bottom");
    public static VerticalAlignment JUSTIFY = new VerticalAlignment(3, "Justify");

    protected VerticalAlignment(int i, String str) {
        this.value = i;
        this.string = str;
        VerticalAlignment[] verticalAlignmentArr = alignments;
        alignments = new VerticalAlignment[verticalAlignmentArr.length + 1];
        System.arraycopy(verticalAlignmentArr, 0, alignments, 0, verticalAlignmentArr.length);
        alignments[verticalAlignmentArr.length] = this;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }

    public static VerticalAlignment getAlignment(int i) {
        int i2 = 0;
        while (true) {
            VerticalAlignment[] verticalAlignmentArr = alignments;
            if (i2 < verticalAlignmentArr.length) {
                if (verticalAlignmentArr[i2].getValue() == i) {
                    return alignments[i2];
                }
                i2++;
            } else {
                return BOTTOM;
            }
        }
    }
}
