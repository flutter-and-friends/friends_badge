package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class CubeInTransformer extends ABaseTransformer {
    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        view.setPivotX(f > 0.0f ? 0.0f : view.getWidth());
        view.setPivotY(0.0f);
        view.setRotationY(f * (-90.0f));
    }
}
