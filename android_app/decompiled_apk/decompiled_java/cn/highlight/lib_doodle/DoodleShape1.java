package cn.highlight.lib_doodle;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* loaded from: classes.dex */
public class DoodleShape1 extends DoodleRotatableItemBase {
    public static int DEFAULT_BITMAP_SIZE = 970;
    private int effects;
    private int fgColor;
    private int height;
    private Bitmap mBitmap;
    private Rect mDstRect;
    private final Paint mPaint;
    private Rect mRect;
    private Rect mSrcRect;
    private int shape1;
    private int width;

    public DoodleShape1(IDoodle iDoodle, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, float f, float f2) {
        super(iDoodle, -iDoodle.getDoodleRotation(), f, f2);
        this.mRect = new Rect();
        this.mSrcRect = new Rect();
        this.mDstRect = new Rect();
        this.mPaint = new Paint();
        setPen(DoodlePen.SHAPE);
        setPivotX(f);
        setPivotY(f2);
        this.mBitmap = bitmap;
        this.fgColor = i;
        this.mPaint.setColor(i);
        this.shape1 = i2;
        this.width = i3;
        this.height = i4;
        this.effects = i5;
        if (i2 == DoodleShape.LINE.ordinal()) {
            setSize((((i3 + 5) * 2) / 100.0f) * DEFAULT_BITMAP_SIZE);
        } else {
            setSize(((i3 + 5) / 100.0f) * DEFAULT_BITMAP_SIZE);
        }
        setLocation(f, f2);
    }

    public void setBitmap(Bitmap bitmap, int i, int i2, int i3, int i4, int i5) {
        this.mBitmap = bitmap;
        this.fgColor = i;
        this.mPaint.setColor(i);
        this.shape1 = i2;
        this.width = i3;
        this.height = i4;
        this.effects = i5;
        if (i2 == DoodleShape.LINE.ordinal()) {
            setSize((((i3 + 5) * 2) / 100.0f) * DEFAULT_BITMAP_SIZE);
        } else {
            setSize(((i3 + 5) / 100.0f) * DEFAULT_BITMAP_SIZE);
        }
        resetBounds(this.mRect);
        setPivotX(getLocation().x + (this.mRect.width() / 2));
        setPivotY(getLocation().y + (this.mRect.height() / 2));
        resetBoundsScaled(getBounds());
        refresh();
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public Paint getmPaint() {
        return this.mPaint;
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

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase
    protected void resetBounds(Rect rect) {
        if (this.mBitmap == null) {
            return;
        }
        float size = getSize();
        if (this.shape1 == DoodleShape.LINE.ordinal()) {
            int i = (int) size;
            float f = size / 2.0f;
            rect.set(0, 0, i, (int) ((this.mBitmap.getHeight() * f) / this.mBitmap.getWidth()));
            this.mSrcRect.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
            this.mDstRect.set(0, 0, i, ((int) (f * this.mBitmap.getHeight())) / this.mBitmap.getWidth());
            return;
        }
        int i2 = (int) size;
        rect.set(0, 0, i2, (int) ((this.mBitmap.getHeight() * size) / this.mBitmap.getWidth()));
        this.mSrcRect.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
        this.mDstRect.set(0, 0, i2, ((int) (size * this.mBitmap.getHeight())) / this.mBitmap.getWidth());
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    protected void doDraw(Canvas canvas) {
        canvas.drawBitmap(this.mBitmap, this.mSrcRect, this.mDstRect, (Paint) null);
    }

    public void drawOval(Canvas canvas) {
        canvas.drawOval(new RectF(this.mRect), this.mPaint);
    }
}
