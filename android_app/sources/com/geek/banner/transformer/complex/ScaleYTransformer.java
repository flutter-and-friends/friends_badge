package com.geek.banner.transformer.complex;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public class ScaleYTransformer implements ViewPager.PageTransformer {
    private static final float MIN_SCALE = 0.9f;

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f) {
        if (f < -1.0f) {
            view.setScaleY(MIN_SCALE);
        } else if (f <= 1.0f) {
            view.setScaleY(Math.max(MIN_SCALE, 1.0f - Math.abs(f)));
        } else {
            view.setScaleY(MIN_SCALE);
        }
    }
}
