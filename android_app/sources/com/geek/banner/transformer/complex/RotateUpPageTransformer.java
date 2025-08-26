package com.geek.banner.transformer.complex;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public class RotateUpPageTransformer extends BasePageTransformer {
    private static final float DEFAULT_MAX_ROTATE = 15.0f;
    private float mMaxRotate;

    public RotateUpPageTransformer() {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
    }

    public RotateUpPageTransformer(float f) {
        this(f, NonPageTransformer.INSTANCE);
    }

    public RotateUpPageTransformer(ViewPager.PageTransformer pageTransformer) {
        this(DEFAULT_MAX_ROTATE, pageTransformer);
    }

    public RotateUpPageTransformer(float f, ViewPager.PageTransformer pageTransformer) {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
        this.mMaxRotate = f;
        this.mPageTransformer = pageTransformer;
    }

    @Override // com.geek.banner.transformer.complex.BasePageTransformer
    public void pageTransform(View view, float f) {
        if (f < -1.0f) {
            view.setRotation(this.mMaxRotate);
            view.setPivotX(view.getWidth());
            view.setPivotY(0.0f);
        } else if (f > 1.0f) {
            view.setRotation(-this.mMaxRotate);
            view.setPivotX(0.0f);
            view.setPivotY(0.0f);
        } else if (f < 0.0f) {
            view.setPivotX(view.getWidth() * (((-f) * 0.5f) + 0.5f));
            view.setPivotY(0.0f);
            view.setRotation((-this.mMaxRotate) * f);
        } else {
            view.setPivotX(view.getWidth() * 0.5f * (1.0f - f));
            view.setPivotY(0.0f);
            view.setRotation((-this.mMaxRotate) * f);
        }
    }
}
