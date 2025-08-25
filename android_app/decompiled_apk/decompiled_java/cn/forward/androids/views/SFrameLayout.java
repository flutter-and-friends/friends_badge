package cn.forward.androids.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class SFrameLayout extends FrameLayout {
    public SFrameLayout(Context context) {
        this(context, null);
    }

    public SFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        SelectorAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }
}
