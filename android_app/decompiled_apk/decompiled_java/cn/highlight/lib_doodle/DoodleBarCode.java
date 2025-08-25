package cn.highlight.lib_doodle;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class DoodleBarCode extends DoodleRotatableItemBase {
    private int bgColor;
    private int fgColor;
    private Bitmap mBitmap;
    private Rect mDstRect;
    private Rect mRect;
    private Rect mSrcRect;
    private String mText;

    public DoodleBarCode(IDoodle iDoodle, Bitmap bitmap, String str, int i, int i2, float f, float f2, float f3) {
        super(iDoodle, -iDoodle.getDoodleRotation(), f2, f3);
        this.mRect = new Rect();
        this.mSrcRect = new Rect();
        this.mDstRect = new Rect();
        setPen(DoodlePen.BARCODE);
        setPivotX(f2);
        setPivotY(f3);
        this.mBitmap = bitmap;
        this.mText = str;
        this.bgColor = i;
        this.fgColor = i2;
        setSize(f);
        setLocation(f2, f3);
    }

    public void setBitmap(Bitmap bitmap, String str, int i, int i2) {
        this.mBitmap = bitmap;
        this.mText = str;
        this.bgColor = i;
        this.fgColor = i2;
        resetBounds(this.mRect);
        setPivotX(getLocation().x + (this.mRect.width() / 2));
        setPivotY(getLocation().y + (this.mRect.height() / 2));
        resetBoundsScaled(getBounds());
        refresh();
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
    }

    public String getText() {
        return this.mText;
    }

    public int getBgColor() {
        return this.bgColor;
    }

    public int getFgColor() {
        return this.fgColor;
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase
    public void resetBounds(Rect rect) {
        if (this.mBitmap == null) {
            return;
        }
        float size = getSize();
        int i = (int) size;
        rect.set(0, 0, i, (int) ((this.mBitmap.getHeight() * size) / this.mBitmap.getWidth()));
        this.mSrcRect.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
        this.mDstRect.set(0, 0, i, ((int) (size * this.mBitmap.getHeight())) / this.mBitmap.getWidth());
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    public void doDraw(Canvas canvas) {
        canvas.drawBitmap(this.mBitmap, this.mSrcRect, this.mDstRect, (Paint) null);
    }
}
