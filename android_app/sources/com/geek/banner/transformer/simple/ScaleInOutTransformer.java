package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class ScaleInOutTransformer extends ABaseTransformer {
    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        view.setPivotX(f >= 0.0f ? view.getWidth() : 0.0f);
        view.setPivotY(view.getHeight() / 2.0f);
        float f2 = f < 0.0f ? f + 1.0f : 1.0f - f;
        view.setScaleX(f2);
        view.setScaleY(f2);
    }
}
