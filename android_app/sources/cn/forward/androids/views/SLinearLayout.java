package cn.forward.androids.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class SLinearLayout extends LinearLayout {
    public SLinearLayout(Context context) {
        this(context, null);
    }

    public SLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        SelectorAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }
}
