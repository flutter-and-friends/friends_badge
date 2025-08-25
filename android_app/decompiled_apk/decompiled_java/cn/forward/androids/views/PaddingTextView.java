package cn.forward.androids.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: classes.dex */
public class PaddingTextView extends TextView {
    public PaddingTextView(Context context) {
        this(context, null);
    }

    public PaddingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PaddingTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        PaddingViewAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }
}
