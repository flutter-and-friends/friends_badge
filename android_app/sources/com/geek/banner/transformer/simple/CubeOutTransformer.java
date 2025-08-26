package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class CubeOutTransformer extends ABaseTransformer {
    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        view.setPivotX(f < 0.0f ? view.getWidth() : 0.0f);
        view.setPivotY(view.getHeight() * 0.5f);
        view.setRotationY(f * 90.0f);
    }
}
