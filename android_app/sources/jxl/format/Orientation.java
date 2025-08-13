package jxl.format;

/* loaded from: classes2.dex */
public final class Orientation {
    private String string;
    private int value;
    private static Orientation[] orientations = new Orientation[0];
    public static Orientation HORIZONTAL = new Orientation(0, "horizontal");
    public static Orientation VERTICAL = new Orientation(255, "vertical");
    public static Orientation PLUS_90 = new Orientation(90, "up 90");
    public static Orientation MINUS_90 = new Orientation(180, "down 90");
    public static Orientation PLUS_45 = new Orientation(45, "up 45");
    public static Orientation MINUS_45 = new Orientation(135, "down 45");
    public static Orientation STACKED = new Orientation(255, "stacked");

    protected Orientation(int i, String str) {
        this.value = i;
        this.string = str;
        Orientation[] orientationArr = orientations;
        orientations = new Orientation[orientationArr.length + 1];
        System.arraycopy(orientationArr, 0, orientations, 0, orientationArr.length);
        orientations[orientationArr.length] = this;
    }

    public int getValue() {
        return this.value;
    }

    public String getDescription() {
        return this.string;
    }

    public static Orientation getOrientation(int i) {
        int i2 = 0;
        while (true) {
            Orientation[] orientationArr = orientations;
            if (i2 < orientationArr.length) {
                if (orientationArr[i2].getValue() == i) {
                    return orientations[i2];
                }
                i2++;
            } else {
                return HORIZONTAL;
            }
        }
    }
}
