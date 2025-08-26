package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class RotateDownTransformer extends ABaseTransformer {
    private static final float ROT_MOD = -15.0f;

    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected boolean isPagingEnabled() {
        return true;
    }

    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        float width = view.getWidth();
        float height = view.getHeight();
        float f2 = f * ROT_MOD * (-1.25f);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height);
        view.setRotation(f2);
    }
}
