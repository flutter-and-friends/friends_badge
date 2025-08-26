package cn.forward.androids.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* loaded from: classes.dex */
public class SRelativeLayout extends RelativeLayout {
    public SRelativeLayout(Context context) {
        this(context, null);
    }

    public SRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        SelectorAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }
}
