package com.geek.banner.transformer.simple;

import android.view.View;

/* loaded from: classes.dex */
public class StackTransformer extends ABaseTransformer {
    @Override // com.geek.banner.transformer.simple.ABaseTransformer
    protected void onTransform(View view, float f) {
        view.setTranslationX(f >= 0.0f ? (-view.getWidth()) * f : 0.0f);
    }
}
