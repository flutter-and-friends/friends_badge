package common;

/* loaded from: classes2.dex */
public class LengthUnit extends BaseUnit {
    private static int count;
    public static LengthUnit POINTS = new LengthUnit();
    public static LengthUnit METRES = new LengthUnit();
    public static LengthUnit CENTIMETRES = new LengthUnit();
    public static LengthUnit INCHES = new LengthUnit();

    /* JADX WARN: Illegal instructions before constructor call */
    private LengthUnit() {
        int i = count;
        count = i + 1;
        super(i);
    }

    public static int getCount() {
        return count;
    }
}
