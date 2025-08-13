package com.geek.banner.transformer.complex;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public abstract class BasePageTransformer implements ViewPager.PageTransformer {
    public static final float DEFAULT_CENTER = 0.5f;
    protected ViewPager.PageTransformer mPageTransformer = NonPageTransformer.INSTANCE;

    protected abstract void pageTransform(View view, float f);

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f) {
        ViewPager.PageTransformer pageTransformer = this.mPageTransformer;
        if (pageTransformer != null) {
            pageTransformer.transformPage(view, f);
        }
        pageTransform(view, f);
    }
}
