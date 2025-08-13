package cn.highlight.lib_doodle;

/* loaded from: classes.dex */
public interface IDoodleItemListener {
    public static final int PROPERTY_COLOR = 6;
    public static final int PROPERTY_LOCATION = 7;
    public static final int PROPERTY_PIVOT_X = 3;
    public static final int PROPERTY_PIVOT_Y = 4;
    public static final int PROPERTY_ROTATE = 2;
    public static final int PROPERTY_SCALE = 1;
    public static final int PROPERTY_SIZE = 5;

    void onPropertyChanged(int i);
}
