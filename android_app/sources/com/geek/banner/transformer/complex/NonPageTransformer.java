package com.geek.banner.transformer.complex;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public class NonPageTransformer implements ViewPager.PageTransformer {
    public static final ViewPager.PageTransformer INSTANCE = new NonPageTransformer();

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f) {
        view.setScaleX(0.999f);
    }
}
