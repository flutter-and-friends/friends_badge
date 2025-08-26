package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class ZoomOutSlideTransformer extends ABaseTransformer {
    private static final float MIN_ALPHA = 0.5f;
    private static final float MIN_SCALE = 0.85f;

    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        if (f >= -1.0f || f <= 1.0f) {
            float height = view.getHeight();
            float width = view.getWidth();
            float fMax = Math.max(MIN_SCALE, 1.0f - Math.abs(f));
            float f2 = 1.0f - fMax;
            float f3 = (height * f2) / 2.0f;
            float f4 = (f2 * width) / 2.0f;
            view.setPivotY(height * 0.5f);
            view.setPivotX(width * 0.5f);
            if (f < 0.0f) {
                view.setTranslationX(f4 - (f3 / 2.0f));
            } else {
                view.setTranslationX((-f4) + (f3 / 2.0f));
            }
            view.setScaleX(fMax);
            view.setScaleY(fMax);
            view.setAlpha((((fMax - MIN_SCALE) / 0.14999998f) * 0.5f) + 0.5f);
        }
    }
}
