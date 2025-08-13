package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class BackgroundToForegroundTransformer extends ABaseTransformer {
    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        float height = view.getHeight();
        float width = view.getWidth();
        float fMin = min(f >= 0.0f ? Math.abs(1.0f - f) : 1.0f, 0.5f);
        view.setScaleX(fMin);
        view.setScaleY(fMin);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height * 0.5f);
        view.setTranslationX(f < 0.0f ? width * f : (-width) * f * 0.25f);
    }
}
