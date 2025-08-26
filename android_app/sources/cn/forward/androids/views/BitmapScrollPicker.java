package cn.forward.androids.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import cn.forward.androids.C0428R;
import java.util.List;

/* loaded from: classes.dex */
public class BitmapScrollPicker extends ScrollPickerView<Bitmap> {
    public static final int DRAW_MODE_CENTER = 2;
    public static final int DRAW_MODE_FULL = 1;
    public static final int DRAW_MODE_SPECIFIED_SIZE = 3;
    private int mDrawMode;
    private float mMaxScale;
    private int mMeasureHeight;
    private int mMeasureWidth;
    private float mMinScale;
    private Rect mRect1;
    private Rect mRect2;
    private Rect mRectTemp;
    private int mSpecifiedSizeHeight;
    private Rect mSpecifiedSizeRect;
    private int mSpecifiedSizeWidth;

    public BitmapScrollPicker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BitmapScrollPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDrawMode = 2;
        this.mMinScale = 1.0f;
        this.mMaxScale = 1.0f;
        this.mSpecifiedSizeWidth = -1;
        this.mSpecifiedSizeHeight = -1;
        this.mRect1 = new Rect();
        this.mRect2 = new Rect();
        this.mSpecifiedSizeRect = new Rect();
        this.mRectTemp = new Rect();
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0428R.styleable.BitmapScrollPicker);
            this.mDrawMode = typedArrayObtainStyledAttributes.getInt(C0428R.styleable.BitmapScrollPicker_spv_draw_bitmap_mode, this.mDrawMode);
            this.mSpecifiedSizeWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0428R.styleable.BitmapScrollPicker_spv_draw_bitmap_width, this.mSpecifiedSizeWidth);
            this.mSpecifiedSizeHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(C0428R.styleable.BitmapScrollPicker_spv_draw_bitmap_height, this.mSpecifiedSizeHeight);
            this.mMinScale = typedArrayObtainStyledAttributes.getFloat(C0428R.styleable.BitmapScrollPicker_spv_min_scale, this.mMinScale);
            this.mMaxScale = typedArrayObtainStyledAttributes.getFloat(C0428R.styleable.BitmapScrollPicker_spv_max_scale, this.mMaxScale);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // cn.forward.androids.views.ScrollPickerView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int iMin;
        super.onSizeChanged(i, i2, i3, i4);
        this.mMeasureWidth = getMeasuredWidth();
        this.mMeasureHeight = getMeasuredHeight();
        int i5 = this.mDrawMode;
        if (i5 == 1) {
            if (isHorizontal()) {
                Rect rect = this.mRect2;
                rect.top = 0;
                rect.bottom = this.mMeasureHeight;
                return;
            } else {
                Rect rect2 = this.mRect2;
                rect2.left = 0;
                rect2.right = this.mMeasureWidth;
                return;
            }
        }
        if (i5 == 3) {
            if (this.mSpecifiedSizeWidth == -1) {
                this.mSpecifiedSizeWidth = this.mMeasureWidth;
                this.mSpecifiedSizeHeight = this.mMeasureHeight;
            }
            setDrawModeSpecifiedSize(this.mSpecifiedSizeWidth, this.mSpecifiedSizeHeight);
            return;
        }
        if (isHorizontal()) {
            iMin = Math.min(this.mMeasureHeight, getItemWidth());
        } else {
            iMin = Math.min(this.mMeasureWidth, getItemHeight());
        }
        if (isHorizontal()) {
            Rect rect3 = this.mRect2;
            int i6 = this.mMeasureHeight;
            int i7 = iMin / 2;
            rect3.top = (i6 / 2) - i7;
            rect3.bottom = (i6 / 2) + i7;
            return;
        }
        Rect rect4 = this.mRect2;
        int i8 = this.mMeasureWidth;
        int i9 = iMin / 2;
        rect4.left = (i8 / 2) - i9;
        rect4.right = (i8 / 2) + i9;
    }

    @Override // cn.forward.androids.views.ScrollPickerView
    public void drawItem(Canvas canvas, List<Bitmap> list, int i, int i2, float f, float f2) {
        float fWidth;
        float f3;
        int height;
        int itemSize = getItemSize();
        Bitmap bitmap = list.get(i);
        this.mRect1.right = bitmap.getWidth();
        this.mRect1.bottom = bitmap.getHeight();
        int i3 = this.mDrawMode;
        if (i3 == 1) {
            if (isHorizontal()) {
                Rect rect = this.mRect2;
                rect.left = ((int) f2) + 0;
                rect.right = (int) ((f2 + itemSize) - 0);
            } else {
                Rect rect2 = this.mRect2;
                rect2.top = ((int) f2) + 0;
                rect2.bottom = (int) ((f2 + itemSize) - 0);
            }
            this.mRectTemp.set(this.mRect2);
            scale(this.mRectTemp, i2, itemSize, f);
            canvas.drawBitmap(bitmap, this.mRect1, this.mRectTemp, (Paint) null);
            return;
        }
        if (i3 == 3) {
            if (isHorizontal()) {
                int i4 = this.mSpecifiedSizeWidth;
                Rect rect3 = this.mSpecifiedSizeRect;
                int i5 = ((int) f2) + ((itemSize - i4) / 2);
                rect3.left = i5;
                rect3.right = i5 + i4;
            } else {
                int i6 = this.mSpecifiedSizeHeight;
                Rect rect4 = this.mSpecifiedSizeRect;
                int i7 = ((int) f2) + ((itemSize - i6) / 2);
                rect4.top = i7;
                rect4.bottom = i7 + i6;
            }
            this.mRectTemp.set(this.mSpecifiedSizeRect);
            scale(this.mRectTemp, i2, itemSize, f);
            canvas.drawBitmap(bitmap, this.mRect1, this.mRectTemp, (Paint) null);
            return;
        }
        if (isHorizontal()) {
            fWidth = (this.mRect2.height() * 1.0f) / bitmap.getHeight();
            f3 = itemSize;
            height = bitmap.getWidth();
        } else {
            fWidth = (this.mRect2.width() * 1.0f) / bitmap.getWidth();
            f3 = itemSize;
            height = bitmap.getHeight();
        }
        int i8 = (int) ((f3 - (height * fWidth)) / 2.0f);
        if (isHorizontal()) {
            Rect rect5 = this.mRect2;
            float f4 = i8;
            rect5.left = (int) (f2 + f4);
            rect5.right = (int) ((f2 + itemSize) - f4);
        } else {
            Rect rect6 = this.mRect2;
            float f5 = i8;
            rect6.top = (int) (f2 + f5);
            rect6.bottom = (int) ((f2 + itemSize) - f5);
        }
        this.mRectTemp.set(this.mRect2);
        scale(this.mRectTemp, i2, itemSize, f);
        canvas.drawBitmap(bitmap, this.mRect1, this.mRectTemp, (Paint) null);
    }

    private void scale(Rect rect, int i, int i2, float f) {
        float fHeight;
        float fWidth;
        float fHeight2;
        float f2;
        int iHeight;
        if (this.mMinScale == 1.0f && this.mMaxScale == 1.0f) {
            return;
        }
        if (this.mMinScale == this.mMaxScale) {
            float fWidth2 = (rect.width() - (this.mMinScale * rect.width())) / 2.0f;
            float fHeight3 = (rect.height() - (this.mMinScale * rect.height())) / 2.0f;
            rect.left = (int) (rect.left + fWidth2);
            rect.right = (int) (rect.right - fWidth2);
            rect.top = (int) (rect.top + fHeight3);
            rect.bottom = (int) (rect.bottom - fHeight3);
            return;
        }
        if (i == -1 || i == 1) {
            if ((i == -1 && f < 0.0f) || (i == 1 && f > 0.0f)) {
                fWidth = (rect.width() - (this.mMinScale * rect.width())) / 2.0f;
                fHeight2 = rect.height();
                f2 = this.mMinScale;
                iHeight = rect.height();
                fHeight = (fHeight2 - (f2 * iHeight)) / 2.0f;
            } else {
                float fAbs = Math.abs(f) / i2;
                float fWidth3 = rect.width();
                float f3 = this.mMinScale;
                float fWidth4 = (fWidth3 - ((f3 + ((this.mMaxScale - f3) * fAbs)) * rect.width())) / 2.0f;
                float fHeight4 = rect.height();
                float f4 = this.mMinScale;
                fHeight = (fHeight4 - ((f4 + ((this.mMaxScale - f4) * fAbs)) * rect.height())) / 2.0f;
                fWidth = fWidth4;
            }
        } else if (i == 0) {
            float f5 = i2;
            float fAbs2 = (f5 - Math.abs(f)) / f5;
            float fWidth5 = rect.width();
            float f6 = this.mMinScale;
            fWidth = (fWidth5 - ((f6 + ((this.mMaxScale - f6) * fAbs2)) * rect.width())) / 2.0f;
            float fHeight5 = rect.height();
            float f7 = this.mMinScale;
            fHeight = (fHeight5 - ((f7 + ((this.mMaxScale - f7) * fAbs2)) * rect.height())) / 2.0f;
        } else {
            fWidth = (rect.width() - (this.mMinScale * rect.width())) / 2.0f;
            fHeight2 = rect.height();
            f2 = this.mMinScale;
            iHeight = rect.height();
            fHeight = (fHeight2 - (f2 * iHeight)) / 2.0f;
        }
        rect.left = (int) (rect.left + fWidth);
        rect.right = (int) (rect.right - fWidth);
        rect.top = (int) (rect.top + fHeight);
        rect.bottom = (int) (rect.bottom - fHeight);
    }

    public void setDrawMode(int i) {
        int iMin;
        if (isHorizontal()) {
            iMin = Math.min(this.mMeasureHeight, getItemWidth());
        } else {
            iMin = Math.min(this.mMeasureWidth, getItemHeight());
        }
        this.mDrawMode = i;
        int i2 = this.mDrawMode;
        if (i2 == 1) {
            if (isHorizontal()) {
                Rect rect = this.mRect2;
                rect.top = 0;
                rect.bottom = this.mMeasureHeight;
            } else {
                Rect rect2 = this.mRect2;
                rect2.left = 0;
                rect2.right = this.mMeasureWidth;
            }
        } else if (i2 != 3) {
            if (isHorizontal()) {
                Rect rect3 = this.mRect2;
                int i3 = this.mMeasureHeight;
                int i4 = iMin / 2;
                rect3.top = (i3 / 2) - i4;
                rect3.bottom = (i3 / 2) + i4;
            } else {
                Rect rect4 = this.mRect2;
                int i5 = this.mMeasureWidth;
                int i6 = iMin / 2;
                rect4.left = (i5 / 2) - i6;
                rect4.right = (i5 / 2) + i6;
            }
        }
        invalidate();
    }

    public void setDrawModeSpecifiedSize(int i, int i2) {
        if (isHorizontal()) {
            Rect rect = this.mSpecifiedSizeRect;
            int i3 = this.mMeasureHeight;
            rect.top = (i3 - i2) / 2;
            rect.bottom = ((i3 - i2) / 2) + i2;
        } else {
            Rect rect2 = this.mSpecifiedSizeRect;
            int i4 = this.mMeasureWidth;
            rect2.left = (i4 - i) / 2;
            rect2.right = ((i4 - i) / 2) + i;
        }
        this.mSpecifiedSizeWidth = i;
        this.mSpecifiedSizeHeight = i2;
        invalidate();
    }

    public int getDrawMode() {
        return this.mDrawMode;
    }

    public void setItemScale(float f, float f2) {
        this.mMinScale = f;
        this.mMaxScale = f2;
        invalidate();
    }

    public float getMinScale() {
        return this.mMinScale;
    }

    public float getMaxScale() {
        return this.mMaxScale;
    }
}
