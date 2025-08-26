package cn.highlight.lib_doodle;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class DoodleBitmap extends DoodleRotatableItemBase {
    private Bitmap mBitmap;
    private Rect mDstRect;
    private Rect mRect;
    private Rect mSrcRect;

    public DoodleBitmap(IDoodle iDoodle, Bitmap bitmap, float f, float f2, float f3) {
        super(iDoodle, -iDoodle.getDoodleRotation(), f2, f3);
        this.mRect = new Rect();
        this.mSrcRect = new Rect();
        this.mDstRect = new Rect();
        setPen(DoodlePen.BITMAP);
        setPivotX(f2);
        setPivotY(f3);
        this.mBitmap = bitmap;
        setSize(f);
        setLocation(f2, f3);
    }

    public void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
        resetBounds(this.mRect);
        setPivotX(getLocation().x + (this.mRect.width() / 2));
        setPivotY(getLocation().y + (this.mRect.height() / 2));
        resetBoundsScaled(getBounds());
        refresh();
    }

    public Bitmap getBitmap() {
        return this.mBitmap;
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
