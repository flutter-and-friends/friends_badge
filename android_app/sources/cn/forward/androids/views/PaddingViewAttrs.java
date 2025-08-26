package cn.forward.androids.views;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import cn.forward.androids.C0428R;

/* loaded from: classes.dex */
public class PaddingViewAttrs {
    public static void obtainsAttrs(Context context, View view, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.layout_width, R.attr.layout_height});
        TypedValue typedValue = new TypedValue();
        typedArrayObtainStyledAttributes.getValue(0, typedValue);
        if (typedValue.type != 5) {
            return;
        }
        typedArrayObtainStyledAttributes.getValue(1, typedValue);
        if (typedValue.type != 5) {
            return;
        }
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        if (dimensionPixelOffset <= 0 || dimensionPixelOffset2 <= 0) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C0428R.styleable.PaddingViewAttrs);
        int dimensionPixelOffset3 = typedArrayObtainStyledAttributes2.getDimensionPixelOffset(C0428R.styleable.PaddingViewAttrs_vp_content_width, 0);
        int dimensionPixelOffset4 = typedArrayObtainStyledAttributes2.getDimensionPixelOffset(C0428R.styleable.PaddingViewAttrs_vp_content_height, 0);
        int dimensionPixelOffset5 = typedArrayObtainStyledAttributes2.getDimensionPixelOffset(C0428R.styleable.PaddingViewAttrs_vp_content_padding_left, -1);
        int dimensionPixelOffset6 = typedArrayObtainStyledAttributes2.getDimensionPixelOffset(C0428R.styleable.PaddingViewAttrs_vp_content_padding_top, -1);
        int dimensionPixelOffset7 = typedArrayObtainStyledAttributes2.getDimensionPixelOffset(C0428R.styleable.PaddingViewAttrs_vp_content_padding_right, -1);
        int dimensionPixelOffset8 = typedArrayObtainStyledAttributes2.getDimensionPixelOffset(C0428R.styleable.PaddingViewAttrs_vp_content_padding_bottom, -1);
        typedArrayObtainStyledAttributes2.recycle();
        if (dimensionPixelOffset3 <= 0 || dimensionPixelOffset4 <= 0 || dimensionPixelOffset3 > dimensionPixelOffset || dimensionPixelOffset4 > dimensionPixelOffset2) {
            return;
        }
        int i = (int) (((dimensionPixelOffset - dimensionPixelOffset3) / 2.0f) + 0.5f);
        int i2 = (int) (((dimensionPixelOffset2 - dimensionPixelOffset4) / 2.0f) + 0.5f);
        if (dimensionPixelOffset5 >= 0) {
            dimensionPixelOffset7 = (i + i) - dimensionPixelOffset5;
        } else if (dimensionPixelOffset7 >= 0) {
            dimensionPixelOffset5 = (i + i) - dimensionPixelOffset7;
        } else {
            dimensionPixelOffset5 = i;
            dimensionPixelOffset7 = dimensionPixelOffset5;
        }
        if (dimensionPixelOffset6 >= 0) {
            dimensionPixelOffset8 = (i2 + i2) - dimensionPixelOffset6;
        } else if (dimensionPixelOffset8 >= 0) {
            dimensionPixelOffset6 = (i2 + i2) - dimensionPixelOffset8;
        } else {
            dimensionPixelOffset8 = i2;
            dimensionPixelOffset6 = dimensionPixelOffset8;
        }
        if (dimensionPixelOffset5 == view.getPaddingLeft() && dimensionPixelOffset6 == view.getPaddingTop() && dimensionPixelOffset7 == view.getPaddingRight() && dimensionPixelOffset8 == view.getPaddingBottom()) {
            return;
        }
        view.setPadding(dimensionPixelOffset5, dimensionPixelOffset6, dimensionPixelOffset7, dimensionPixelOffset8);
    }
}
