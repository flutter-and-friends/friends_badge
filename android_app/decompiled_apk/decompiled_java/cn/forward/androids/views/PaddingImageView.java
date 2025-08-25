package cn.forward.androids.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class PaddingImageView extends ImageView {
    public PaddingImageView(Context context) {
        this(context, null);
    }

    public PaddingImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PaddingImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        PaddingViewAttrs.obtainsAttrs(getContext(), this, attributeSet);
    }
}
