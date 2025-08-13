package com.geek.banner.transformer.complex;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public class RotateYTransformer extends BasePageTransformer {
    private static final float DEFAULT_MAX_ROTATE = 35.0f;
    private float mMaxRotate;

    public RotateYTransformer() {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
    }

    public RotateYTransformer(float f) {
        this(f, NonPageTransformer.INSTANCE);
    }

    public RotateYTransformer(ViewPager.PageTransformer pageTransformer) {
        this(DEFAULT_MAX_ROTATE, pageTransformer);
    }

    public RotateYTransformer(float f, ViewPager.PageTransformer pageTransformer) {
        this.mMaxRotate = DEFAULT_MAX_ROTATE;
        this.mMaxRotate = f;
        this.mPageTransformer = pageTransformer;
    }

    @Override // com.geek.banner.transformer.complex.BasePageTransformer
    public void pageTransform(View view, float f) {
        view.setPivotY(view.getHeight() / 2);
        if (f < -1.0f) {
            view.setRotationY(this.mMaxRotate * (-1.0f));
            view.setPivotX(view.getWidth());
            return;
        }
        if (f <= 1.0f) {
            view.setRotationY(this.mMaxRotate * f);
            if (f < 0.0f) {
                view.setPivotX(view.getWidth() * (((-f) * 0.5f) + 0.5f));
                view.setPivotX(view.getWidth());
                return;
            } else {
                view.setPivotX(view.getWidth() * 0.5f * (1.0f - f));
                view.setPivotX(0.0f);
                return;
            }
        }
        view.setRotationY(this.mMaxRotate * 1.0f);
        view.setPivotX(0.0f);
    }
}
