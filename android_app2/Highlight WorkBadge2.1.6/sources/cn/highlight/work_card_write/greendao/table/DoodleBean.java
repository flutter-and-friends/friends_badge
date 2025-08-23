package cn.highlight.work_card_write.greendao.table;

/* loaded from: classes.dex */
public class DoodleBean {
    private String YL1;
    private String YL2;
    private String YL3;
    private int bgColor;
    private int effects;
    private int fgColor;
    private int height;
    private Long id;
    private String imageName;
    private byte[] mBitmap;
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
    private String mText;
    private String mText0;
    private int mTextBgColor;
    private int mTextBold;
    private int mTextItalic;
    private String mTextStyle;
    private int mTextUnderline;
    private int shape1;
    private int width;

    public DoodleBean(Long l, String str, int i, float f, int i2, float f2, float f3, float f4, float f5, float f6, boolean z, float f7, String str2, String str3, String str4, int i3, int i4, int i5, int i6, byte[] bArr, int i7, int i8, int i9, int i10, int i11, int i12, String str5, String str6, String str7) {
        this.id = l;
        this.imageName = str;
        this.mIDoodlePen = i;
        this.mSize = f;
        this.mColor = i2;
        this.mLocationX = f2;
        this.mLocationY = f3;
        this.mPivotX = f4;
        this.mPivotY = f5;
        this.mRotate = f6;
        this.mIsNeedClipOutside = z;
        this.mScale = f7;
        this.mText0 = str2;
        this.mText = str3;
        this.mTextStyle = str4;
        this.mTextBgColor = i3;
        this.mTextBold = i4;
        this.mTextItalic = i5;
        this.mTextUnderline = i6;
        this.mBitmap = bArr;
        this.bgColor = i7;
        this.fgColor = i8;
        this.shape1 = i9;
        this.width = i10;
        this.height = i11;
        this.effects = i12;
        this.YL1 = str5;
        this.YL2 = str6;
        this.YL3 = str7;
    }

    public DoodleBean() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public String getImageName() {
        return this.imageName;
    }

    public void setImageName(String str) {
        this.imageName = str;
    }

    public int getMIDoodlePen() {
        return this.mIDoodlePen;
    }

    public void setMIDoodlePen(int i) {
        this.mIDoodlePen = i;
    }

    public float getMSize() {
        return this.mSize;
    }

    public void setMSize(float f) {
        this.mSize = f;
    }

    public int getMColor() {
        return this.mColor;
    }

    public void setMColor(int i) {
        this.mColor = i;
    }

    public float getMLocationX() {
        return this.mLocationX;
    }

    public void setMLocationX(float f) {
        this.mLocationX = f;
    }

    public float getMLocationY() {
        return this.mLocationY;
    }

    public void setMLocationY(float f) {
        this.mLocationY = f;
    }

    public float getMPivotX() {
        return this.mPivotX;
    }

    public void setMPivotX(float f) {
        this.mPivotX = f;
    }

    public float getMPivotY() {
        return this.mPivotY;
    }

    public void setMPivotY(float f) {
        this.mPivotY = f;
    }

    public float getMRotate() {
        return this.mRotate;
    }

    public void setMRotate(float f) {
        this.mRotate = f;
    }

    public boolean getMIsNeedClipOutside() {
        return this.mIsNeedClipOutside;
    }

    public void setMIsNeedClipOutside(boolean z) {
        this.mIsNeedClipOutside = z;
    }

    public float getMScale() {
        return this.mScale;
    }

    public void setMScale(float f) {
        this.mScale = f;
    }

    public String getMText() {
        return this.mText;
    }

    public void setMText(String str) {
        this.mText = str;
    }

    public String getMTextStyle() {
        return this.mTextStyle;
    }

    public void setMTextStyle(String str) {
        this.mTextStyle = str;
    }

    public byte[] getMBitmap() {
        return this.mBitmap;
    }

    public void setMBitmap(byte[] bArr) {
        this.mBitmap = bArr;
    }

    public int getMTextBgColor() {
        return this.mTextBgColor;
    }

    public void setMTextBgColor(int i) {
        this.mTextBgColor = i;
    }

    public String getMText0() {
        return this.mText0;
    }

    public void setMText0(String str) {
        this.mText0 = str;
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

    public int getMTextBold() {
        return this.mTextBold;
    }

    public void setMTextBold(int i) {
        this.mTextBold = i;
    }

    public int getMTextItalic() {
        return this.mTextItalic;
    }

    public void setMTextItalic(int i) {
        this.mTextItalic = i;
    }

    public int getMTextUnderline() {
        return this.mTextUnderline;
    }

    public void setMTextUnderline(int i) {
        this.mTextUnderline = i;
    }

    public String getYL1() {
        return this.YL1;
    }

    public void setYL1(String str) {
        this.YL1 = str;
    }

    public String getYL2() {
        return this.YL2;
    }

    public void setYL2(String str) {
        this.YL2 = str;
    }

    public String getYL3() {
        return this.YL3;
    }

    public void setYL3(String str) {
        this.YL3 = str;
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
