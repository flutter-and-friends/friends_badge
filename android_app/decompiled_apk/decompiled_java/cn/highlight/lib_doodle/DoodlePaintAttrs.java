package cn.highlight.lib_doodle;

/* loaded from: classes.dex */
public class DoodlePaintAttrs {
    private IDoodleColor mColor;
    private IDoodlePen mPen;
    private IDoodleShape mShape;
    private float mSize;

    public IDoodlePen pen() {
        return this.mPen;
    }

    public DoodlePaintAttrs pen(IDoodlePen iDoodlePen) {
        this.mPen = iDoodlePen;
        return this;
    }

    public IDoodleShape shape() {
        return this.mShape;
    }

    public DoodlePaintAttrs shape(IDoodleShape iDoodleShape) {
        this.mShape = iDoodleShape;
        return this;
    }

    public float size() {
        return this.mSize;
    }

    public DoodlePaintAttrs size(float f) {
        this.mSize = f;
        return this;
    }

    public IDoodleColor color() {
        return this.mColor;
    }

    public DoodlePaintAttrs color(IDoodleColor iDoodleColor) {
        this.mColor = iDoodleColor;
        return this;
    }

    public static DoodlePaintAttrs create() {
        return new DoodlePaintAttrs();
    }
}
