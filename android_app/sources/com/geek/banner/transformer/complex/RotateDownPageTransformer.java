package com.geek.banner.transformer.complex;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public class RotateDownPageTransformer extends BasePageTransformer {
    private static final float DEFAULT_MAX_ROTATE = 15.0f;
    private float mMaxRotate;

    public RotateDownPageTransformer() {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
    }

    public RotateDownPageTransformer(float f) {
        this(f, NonPageTransformer.INSTANCE);
    }

    public RotateDownPageTransformer(ViewPager.PageTransformer pageTransformer) {
        this(DEFAULT_MAX_ROTATE, pageTransformer);
    }

    public RotateDownPageTransformer(float f, ViewPager.PageTransformer pageTransformer) {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
        this.mPageTransformer = pageTransformer;
        this.mMaxRotate = f;
    }

    @Override // com.geek.banner.transformer.complex.BasePageTransformer
    public void pageTransform(View view, float f) {
        if (f < -1.0f) {
            view.setRotation(this.mMaxRotate * (-1.0f));
            view.setPivotX(view.getWidth());
            view.setPivotY(view.getHeight());
        } else if (f > 1.0f) {
            view.setRotation(this.mMaxRotate);
            view.setPivotX(view.getWidth() * 0);
            view.setPivotY(view.getHeight());
        } else if (f < 0.0f) {
            view.setPivotX(view.getWidth() * (((-f) * 0.5f) + 0.5f));
            view.setPivotY(view.getHeight());
            view.setRotation(this.mMaxRotate * f);
        } else {
            view.setPivotX(view.getWidth() * 0.5f * (1.0f - f));
            view.setPivotY(view.getHeight());
            view.setRotation(this.mMaxRotate * f);
        }
    }
}
