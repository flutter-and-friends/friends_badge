package com.geek.banner.transformer.simple;

import android.view.View;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public abstract class ABaseTransformer implements ViewPager.PageTransformer {
    protected static final float min(float f, float f2) {
        return f < f2 ? f2 : f;
    }

    protected boolean hideOffscreenPages() {
        return true;
    }

    protected boolean isPagingEnabled() {
        return false;
    }

    protected void onPostTransform(View view, float f) {
    }

    protected abstract void onTransform(View view, float f);

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f) {
        onPreTransform(view, f);
        onTransform(view, f);
        onPostTransform(view, f);
    }

    protected void onPreTransform(View view, float f) {
        float width = view.getWidth();
        float f2 = 0.0f;
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setRotation(0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationY(0.0f);
        view.setTranslationX(isPagingEnabled() ? 0.0f : (-width) * f);
        if (hideOffscreenPages()) {
            if (f > -1.0f && f < 1.0f) {
                f2 = 1.0f;
            }
            view.setAlpha(f2);
            return;
        }
        view.setAlpha(1.0f);
    }
}
