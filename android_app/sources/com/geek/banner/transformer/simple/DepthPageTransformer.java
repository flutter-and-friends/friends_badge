package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class DepthPageTransformer extends ABaseTransformer {
    private static final float MIN_SCALE = 0.75f;

    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected boolean isPagingEnabled() {
        return true;
    }

    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        if (f <= 0.0f) {
            view.setTranslationX(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
        } else if (f <= 1.0f) {
            float fAbs = ((1.0f - Math.abs(f)) * 0.25f) + MIN_SCALE;
            view.setAlpha(1.0f - f);
            view.setPivotY(view.getHeight() * 0.5f);
            view.setTranslationX(view.getWidth() * (-f));
            view.setScaleX(fAbs);
            view.setScaleY(fAbs);
        }
    }
}
