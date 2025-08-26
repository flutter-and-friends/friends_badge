package cn.forward.androids.views;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import cn.forward.androids.C0428R;

/* loaded from: classes.dex */
public class STextView extends PaddingTextView {
    public STextView(Context context) {
        this(context, null);
    }

    public STextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public STextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0428R.styleable.STextView);
        int defaultColor = getTextColors().getDefaultColor();
        setTextColor(createColorStateList(typedArrayObtainStyledAttributes.getColor(C0428R.styleable.STextView_stv_text_color_pressed, typedArrayObtainStyledAttributes.getColor(C0428R.styleable.STextView_mtv_text_color_pressed, defaultColor)), typedArrayObtainStyledAttributes.getColor(C0428R.styleable.STextView_stv_text_color_selected, defaultColor), typedArrayObtainStyledAttributes.getColor(C0428R.styleable.STextView_stv_text_color_disable, typedArrayObtainStyledAttributes.getColor(C0428R.styleable.STextView_mtv_text_color_disable, defaultColor)), defaultColor));
        typedArrayObtainStyledAttributes.recycle();
        SelectorAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }

    private ColorStateList createColorStateList(int i, int i2, int i3, int i4) {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_enabled, R.attr.state_pressed}, new int[]{R.attr.state_enabled, R.attr.state_selected}, new int[]{-16842910}, new int[0]}, new int[]{i, i2, i3, i4});
    }
}
