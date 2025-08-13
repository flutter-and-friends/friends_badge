package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class ZoomOutTranformer extends ABaseTransformer {
    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        float fAbs = Math.abs(f) + 1.0f;
        view.setScaleX(fAbs);
        view.setScaleY(fAbs);
        view.setPivotX(view.getWidth() * 0.5f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setAlpha((f < -1.0f || f > 1.0f) ? 0.0f : 1.0f - (fAbs - 1.0f));
        if (f == -1.0f) {
            view.setTranslationX(view.getWidth() * (-1));
        }
    }
}
