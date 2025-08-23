package cn.highlight.lib_doodle;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public class DoodleRecord {
    private int bgColor;
    private IDoodleItem doodleItem;
    private int effects;
    private int fgColor;
    private int height;
    private int identity;
    private Bitmap mBitmap;
    private int mColor;
    private int mIDoodlePen;
    private boolean mIsNeedClipOutside;
    private float mLocationX;
    private float mLocationY;
    private float mPivotX;
    private float mPivotY;
    private float mRotate;
    private float mScale;
    private float mSize;
    private String mText0;
    private String mText1;
    private int mTextBgColor;
    private int mTextBold;
    private int mTextItalic;
    private String mTextStyle;
    private int mTextUnderline;
    private int shape1;
    private int type;
    private int width;

    public int getIdentity() {
        return this.identity;
    }

    public void setIdentity(int i) {
        this.identity = i;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int i) {
        this.type = i;
    }

    public IDoodleItem getDoodleItem() {
        return this.doodleItem;
    }

    public void setDoodleItem(IDoodleItem iDoodleItem) {
        this.doodleItem = iDoodleItem;
    }

    public int getmIDoodlePen() {
        return this.mIDoodlePen;
    }

    public void setmIDoodlePen(int i) {
        this.mIDoodlePen = i;
    }

    public float getmSize() {
        return this.mSize;
    }

    public void setmSize(float f) {
        this.mSize = f;
    }

    public int getmColor() {
        return this.mColor;
    }

    public void setmColor(int i) {
        this.mColor = i;
    }

    public float getmLocationX() {
        return this.mLocationX;
    }

    public void setmLocationX(float f) {
        this.mLocationX = f;
    }

    public float getmLocationY() {
        return this.mLocationY;
    }

    public void setmLocationY(float f) {
        this.mLocationY = f;
    }

    public float getmPivotX() {
        return this.mPivotX;
    }

    public void setmPivotX(float f) {
        this.mPivotX = f;
    }

    public float getmPivotY() {
        return this.mPivotY;
    }

    public void setmPivotY(float f) {
        this.mPivotY = f;
    }

    public float getmRotate() {
        return this.mRotate;
    }

    public void setmRotate(float f) {
        this.mRotate = f;
    }

    public boolean ismIsNeedClipOutside() {
        return this.mIsNeedClipOutside;
    }

    public void setmIsNeedClipOutside(boolean z) {
        this.mIsNeedClipOutside = z;
    }

    public float getmScale() {
        return this.mScale;
    }

    public void setmScale(float f) {
        this.mScale = f;
    }

    public String getmText0() {
        return this.mText0;
    }

    public void setmText0(String str) {
        this.mText0 = str;
    }

    public String getmText1() {
        return this.mText1;
    }

    public void setmText1(String str) {
        this.mText1 = str;
    }

    public String getmTextStyle() {
        return this.mTextStyle;
    }

    public void setmTextStyle(String str) {
        this.mTextStyle = str;
    }

    public int getmTextBgColor() {
        return this.mTextBgColor;
    }

    public void setmTextBgColor(int i) {
        this.mTextBgColor = i;
    }

    public int getmTextBold() {
        return this.mTextBold;
    }

    public void setmTextBold(int i) {
        this.mTextBold = i;
    }

    public int getmTextItalic() {
        return this.mTextItalic;
    }

    public void setmTextItalic(int i) {
        this.mTextItalic = i;
    }

    public int getmTextUnderline() {
        return this.mTextUnderline;
    }

    public void setmTextUnderline(int i) {
        this.mTextUnderline = i;
    }

    public Bitmap getmBitmap() {
        return this.mBitmap;
    }

    public void setmBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    public int getBgColor() {
        return this.bgColor;
    }

    public void setBgColor(int i) {
        this.bgColor = i;
    }

    public int getFgColor() {
        return this.fgColor;
    }

    public void setFgColor(int i) {
        this.fgColor = i;
    }

    public int getShape1() {
        return this.shape1;
    }

    public void setShape1(int i) {
        this.shape1 = i;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    public int getEffects() {
        return this.effects;
    }

    public void setEffects(int i) {
        this.effects = i;
    }
}
