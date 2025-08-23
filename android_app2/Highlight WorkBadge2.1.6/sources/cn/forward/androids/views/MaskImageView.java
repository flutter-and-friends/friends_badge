package cn.forward.androids.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.util.AttributeSet;
import androidx.core.view.ViewCompat;
import cn.forward.androids.R;

/* loaded from: classes.dex */
public class MaskImageView extends PaddingImageView {
    public static final int MASK_LEVEL_BACKGROUND = 1;
    public static final int MASK_LEVEL_FOREGROUND = 2;
    private ColorFilter mColorFilter;
    private ColorMatrix mColorMatrix;
    private boolean mIsIgnoreAlpha;
    private boolean mIsShowMaskOnClick;
    private ColorFilter mLastColorFilter;
    private int mMaskColor;
    private int mMaskLevel;
    private float mPressedAlpha;

    public MaskImageView(Context context) {
        this(context, null);
    }

    public MaskImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaskImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsIgnoreAlpha = true;
        this.mIsShowMaskOnClick = true;
        this.mMaskColor = ViewCompat.MEASURED_SIZE_MASK;
        this.mPressedAlpha = 1.0f;
        this.mMaskLevel = 2;
        this.mColorMatrix = new ColorMatrix();
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MaskImageView);
        this.mIsIgnoreAlpha = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaskImageView_miv_is_ignore_alpha, this.mIsIgnoreAlpha);
        this.mIsShowMaskOnClick = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MaskImageView_miv_is_show_mask_on_click, this.mIsShowMaskOnClick);
        this.mMaskColor = typedArrayObtainStyledAttributes.getColor(R.styleable.MaskImageView_miv_mask_color, this.mMaskColor);
        this.mMaskLevel = typedArrayObtainStyledAttributes.getInt(R.styleable.MaskImageView_miv_mask_level, this.mMaskLevel);
        this.mPressedAlpha = typedArrayObtainStyledAttributes.getFloat(R.styleable.MaskImageView_miv_pressed_alpha, this.mPressedAlpha);
        setMaskColor(this.mMaskColor);
        typedArrayObtainStyledAttributes.recycle();
        SelectorAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }

    private void setColorMatrix(float[] fArr) {
        this.mColorMatrix.set(fArr);
        this.mColorFilter = new ColorMatrixColorFilter(this.mColorMatrix);
    }

    private void setDrawableColorFilter(ColorFilter colorFilter) {
        int i = this.mMaskLevel;
        if (i == 1) {
            if (getBackground() != null) {
                if (this.mLastColorFilter == colorFilter) {
                    return;
                }
                getBackground().mutate();
                getBackground().setColorFilter(colorFilter);
            }
        } else if (i == 2 && getDrawable() != null) {
            if (this.mLastColorFilter == colorFilter) {
                return;
            }
            getDrawable().mutate();
            getDrawable().setColorFilter(colorFilter);
        }
        this.mLastColorFilter = colorFilter;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mIsIgnoreAlpha) {
            if (this.mIsShowMaskOnClick && isPressed()) {
                setDrawableColorFilter(this.mColorFilter);
            } else {
                setDrawableColorFilter(null);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.mIsIgnoreAlpha) {
            setDrawableColorFilter(null);
            if (this.mMaskLevel == 1) {
                if (this.mIsShowMaskOnClick && isPressed()) {
                    canvas.drawColor(this.mMaskColor);
                }
                super.onDraw(canvas);
                return;
            }
            super.onDraw(canvas);
            if (this.mIsShowMaskOnClick && isPressed()) {
                canvas.drawColor(this.mMaskColor);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        super.setPressed(z);
        if (z) {
            setAlpha(this.mPressedAlpha);
        } else {
            setAlpha(1.0f);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public boolean isIsIgnoreAlpha() {
        return this.mIsIgnoreAlpha;
    }

    public void setIsIgnoreAlpha(boolean z) {
        this.mIsIgnoreAlpha = z;
        invalidate();
    }

    public boolean isIsShowMaskOnClick() {
        return this.mIsShowMaskOnClick;
    }

    public void setIsShowMaskOnClick(boolean z) {
        this.mIsShowMaskOnClick = z;
        invalidate();
    }

    public int getShadeColor() {
        return getMaskColor();
    }

    public void setShadeColor(int i) {
        setMaskColor(i);
    }

    public int getMaskColor() {
        return this.mMaskColor;
    }

    public void setMaskColor(int i) {
        this.mMaskColor = i;
        float fAlpha = Color.alpha(i) / 255.0f;
        float f = fAlpha - ((1.0f - fAlpha) * 0.15f);
        float f2 = (1.0f - f) * 1.15f;
        setColorMatrix(new float[]{f2, 0.0f, 0.0f, 0.0f, Color.red(i) * f, 0.0f, f2, 0.0f, 0.0f, Color.green(i) * f, 0.0f, 0.0f, f2, 0.0f, Color.blue(i) * f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
        invalidate();
    }

    public int getMaskLevel() {
        return this.mMaskLevel;
    }

    public void setMaskLevel(int i) {
        this.mMaskLevel = i;
        invalidate();
    }

    public void setPressedAlpha(float f) {
        this.mPressedAlpha = f;
        invalidate();
    }
}
