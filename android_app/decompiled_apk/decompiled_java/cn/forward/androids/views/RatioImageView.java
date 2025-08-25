package cn.forward.androids.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import cn.forward.androids.R;

/* loaded from: classes.dex */
public class RatioImageView extends ImageView {
    private int mDesiredHeight;
    private int mDesiredWidth;
    private float mDrawableSizeRatio;
    private float mHeightRatio;
    private boolean mIsHeightFitDrawableSizeRatio;
    private boolean mIsWidthFitDrawableSizeRatio;
    private int mMaxHeightWhenHeightFixDrawable;
    private int mMaxWidthWhenWidthFixDrawable;
    private float mWidthRatio;

    public RatioImageView(Context context) {
        this(context, null);
    }

    public RatioImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatioImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDrawableSizeRatio = -1.0f;
        this.mMaxWidthWhenWidthFixDrawable = -1;
        this.mMaxHeightWhenHeightFixDrawable = -1;
        this.mWidthRatio = -1.0f;
        this.mHeightRatio = -1.0f;
        this.mDesiredWidth = -1;
        this.mDesiredHeight = -1;
        init(attributeSet);
        if (getDrawable() != null) {
            this.mDrawableSizeRatio = (getDrawable().getIntrinsicWidth() * 1.0f) / getDrawable().getIntrinsicHeight();
        }
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.RatioImageView);
        this.mIsWidthFitDrawableSizeRatio = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RatioImageView_riv_is_width_fix_drawable_size_ratio, this.mIsWidthFitDrawableSizeRatio);
        this.mIsHeightFitDrawableSizeRatio = typedArrayObtainStyledAttributes.getBoolean(R.styleable.RatioImageView_riv_is_height_fix_drawable_size_ratio, this.mIsHeightFitDrawableSizeRatio);
        this.mMaxWidthWhenWidthFixDrawable = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RatioImageView_riv_max_width_when_width_fix_drawable, this.mMaxWidthWhenWidthFixDrawable);
        this.mMaxHeightWhenHeightFixDrawable = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RatioImageView_riv_max_height_when_height_fix_drawable, this.mMaxHeightWhenHeightFixDrawable);
        this.mHeightRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.RatioImageView_riv_height_to_width_ratio, this.mHeightRatio);
        this.mWidthRatio = typedArrayObtainStyledAttributes.getFloat(R.styleable.RatioImageView_riv_width_to_height_ratio, this.mWidthRatio);
        this.mDesiredWidth = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RatioImageView_riv_width, this.mDesiredWidth);
        this.mDesiredHeight = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.RatioImageView_riv_height, this.mDesiredHeight);
        typedArrayObtainStyledAttributes.recycle();
        SelectorAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }

    private void onSetDrawable() {
        if (getDrawable() != null) {
            if (this.mIsWidthFitDrawableSizeRatio || this.mIsHeightFitDrawableSizeRatio) {
                float f = this.mDrawableSizeRatio;
                this.mDrawableSizeRatio = (r0.getIntrinsicWidth() * 1.0f) / r0.getIntrinsicHeight();
                float f2 = this.mDrawableSizeRatio;
                if (f == f2 || f2 <= 0.0f) {
                    return;
                }
                requestLayout();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        onSetDrawable();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        onSetDrawable();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        float f = this.mDrawableSizeRatio;
        if (f > 0.0f) {
            if (this.mIsWidthFitDrawableSizeRatio) {
                this.mWidthRatio = f;
            } else if (this.mIsHeightFitDrawableSizeRatio) {
                this.mHeightRatio = 1.0f / f;
            }
        }
        if (this.mHeightRatio > 0.0f && this.mWidthRatio > 0.0f) {
            throw new RuntimeException("高度和宽度不能同时设置百分比！！");
        }
        if (this.mWidthRatio > 0.0f) {
            int size = this.mDesiredHeight;
            if (size <= 0) {
                size = View.MeasureSpec.getSize(i2);
            }
            if (size <= 0) {
                super.onMeasure(i, i2);
                return;
            }
            float f2 = this.mWidthRatio;
            int i6 = (int) (size * f2);
            if (this.mIsWidthFitDrawableSizeRatio && (i5 = this.mMaxWidthWhenWidthFixDrawable) > 0 && i6 > i5) {
                size = (int) (i5 / f2);
                i6 = i5;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(size, 1073741824));
            return;
        }
        if (this.mHeightRatio > 0.0f) {
            int size2 = this.mDesiredWidth;
            if (size2 <= 0) {
                size2 = View.MeasureSpec.getSize(i);
            }
            if (size2 <= 0) {
                super.onMeasure(i, i2);
                return;
            }
            float f3 = this.mHeightRatio;
            int i7 = (int) (size2 * f3);
            if (this.mIsHeightFitDrawableSizeRatio && (i4 = this.mMaxHeightWhenHeightFixDrawable) > 0 && i7 > i4) {
                size2 = (int) (i4 / f3);
                i7 = i4;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(size2, 1073741824), View.MeasureSpec.makeMeasureSpec(i7, 1073741824));
            return;
        }
        int i8 = this.mDesiredHeight;
        if (i8 > 0 && (i3 = this.mDesiredWidth) > 0) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i8, 1073741824));
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void setIsFitDrawableSizeRatio(boolean z, boolean z2) {
        this.mHeightRatio = -1.0f;
        this.mWidthRatio = -1.0f;
        boolean z3 = this.mIsWidthFitDrawableSizeRatio;
        boolean z4 = this.mIsHeightFitDrawableSizeRatio;
        this.mIsWidthFitDrawableSizeRatio = z;
        this.mIsHeightFitDrawableSizeRatio = z2;
        if (getDrawable() != null) {
            this.mDrawableSizeRatio = (r4.getIntrinsicWidth() * 1.0f) / r4.getIntrinsicHeight();
        } else {
            this.mDrawableSizeRatio = -1.0f;
        }
        if (z3 == this.mIsWidthFitDrawableSizeRatio && z4 == this.mIsHeightFitDrawableSizeRatio) {
            return;
        }
        requestLayout();
    }

    public void setWidthRatio(float f) {
        this.mIsHeightFitDrawableSizeRatio = false;
        this.mIsWidthFitDrawableSizeRatio = false;
        float f2 = this.mHeightRatio;
        this.mHeightRatio = -1.0f;
        this.mWidthRatio = f;
        if (f == f && f2 == this.mHeightRatio) {
            return;
        }
        requestLayout();
    }

    public void setHeightRatio(float f) {
        this.mIsHeightFitDrawableSizeRatio = false;
        this.mIsWidthFitDrawableSizeRatio = false;
        float f2 = this.mWidthRatio;
        this.mWidthRatio = -1.0f;
        this.mHeightRatio = f;
        if (f2 == this.mWidthRatio && f == f) {
            return;
        }
        requestLayout();
    }

    public void setWidthAndHeight(int i, int i2) {
        int i3 = this.mDesiredWidth;
        int i4 = this.mDesiredHeight;
        this.mDesiredWidth = i;
        this.mDesiredHeight = i2;
        if (i3 == this.mDesiredWidth && i4 == this.mDesiredHeight) {
            return;
        }
        requestLayout();
    }

    public boolean isIsWidthFitDrawableSizeRatio() {
        return this.mIsWidthFitDrawableSizeRatio;
    }

    public boolean isIsHeightFitDrawableSizeRatio() {
        return this.mIsHeightFitDrawableSizeRatio;
    }

    public float getWidthRatio() {
        return this.mWidthRatio;
    }

    public float getHeightRatio() {
        return this.mHeightRatio;
    }

    public float getDrawableSizeRatio() {
        return this.mDrawableSizeRatio;
    }
}
