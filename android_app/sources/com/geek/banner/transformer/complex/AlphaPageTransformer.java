package com.geek.banner.transformer.complex;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public class AlphaPageTransformer extends BasePageTransformer {
    private static final float DEFAULT_MIN_ALPHA = 0.5f;
    private float mMinAlpha;

    public AlphaPageTransformer() {
        this.mMinAlpha = 0.5f;
    }

    public AlphaPageTransformer(float f) {
        this(f, NonPageTransformer.INSTANCE);
    }

    public AlphaPageTransformer(ViewPager.PageTransformer pageTransformer) {
        this(0.5f, pageTransformer);
    }

    public AlphaPageTransformer(float f, ViewPager.PageTransformer pageTransformer) {
        this.mMinAlpha = 0.5f;
        this.mMinAlpha = f;
        this.mPageTransformer = pageTransformer;
    }

    @Override // com.geek.banner.transformer.complex.BasePageTransformer
    public void pageTransform(View view, float f) {
        view.setScaleX(0.999f);
        if (f < -1.0f) {
            view.setAlpha(this.mMinAlpha);
            return;
        }
        if (f > 1.0f) {
            view.setAlpha(this.mMinAlpha);
        } else if (f < 0.0f) {
            float f2 = this.mMinAlpha;
            view.setAlpha(f2 + ((1.0f - f2) * (f + 1.0f)));
        } else {
            float f3 = this.mMinAlpha;
            view.setAlpha(f3 + ((1.0f - f3) * (1.0f - f)));
        }
    }
}
