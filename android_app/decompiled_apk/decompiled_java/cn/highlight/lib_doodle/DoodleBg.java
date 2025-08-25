package cn.highlight.lib_doodle;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;

/* loaded from: classes.dex */
public class DoodleBg extends DoodleRotatableItemBase {
    private Bitmap mBitmap;
    private Rect mDstRect;
    private Rect mRect;
    private Rect mSrcRect;
    private String text;

    public DoodleBg(IDoodle iDoodle, Bitmap bitmap, String str, float f, float f2, float f3) {
        super(iDoodle, -iDoodle.getDoodleRotation(), f2, f3);
        this.mRect = new Rect();
        this.mSrcRect = new Rect();
        this.mDstRect = new Rect();
        setPen(DoodlePen.BG);
        setPivotX(f2);
        setPivotY(f3);
        this.mBitmap = bitmap;
        this.text = str;
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

    public String getText() {
        return this.text;
    }

    public void setText(String str) {
        this.text = str;
    }

    @Override // cn.highlight.lib_doodle.DoodleSelectableItemBase
    public void resetBounds(Rect rect) {
        if (this.mBitmap == null) {
            return;
        }
        float size = getSize();
        rect.set(0, 0, 0, 0);
        this.mSrcRect.set(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
        this.mDstRect.set(0, 0, (int) size, ((int) (size * this.mBitmap.getHeight())) / this.mBitmap.getWidth());
    }

    @Override // cn.highlight.lib_doodle.DoodleItemBase
    public void doDraw(Canvas canvas) {
        canvas.drawBitmap(this.mBitmap, this.mSrcRect, this.mDstRect, (Paint) null);
    }
}
