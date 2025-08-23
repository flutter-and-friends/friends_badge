package cn.highlight.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import cn.highlight.core.R;

/* loaded from: classes.dex */
public class CenterShowHorizontalScrollView extends HorizontalScrollView {
    private LinearLayout mShowLinear;

    public CenterShowHorizontalScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mShowLinear = new LinearLayout(context);
        this.mShowLinear.setOrientation(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        this.mShowLinear.setGravity(16);
        addView(this.mShowLinear, layoutParams);
    }

    public void onClicked(View view) {
        if (view.getTag(R.id.item_position) != null) {
            View childAt = this.mShowLinear.getChildAt(((Integer) view.getTag(R.id.item_position)).intValue());
            int width = childAt.getWidth();
            smoothScrollTo(childAt.getLeft() - ((getWidth() / 2) - (width / 2)), 0);
        }
    }

    public void setItemCenter(int i) {
        View childAt = this.mShowLinear.getChildAt(i);
        int width = childAt.getWidth();
        smoothScrollTo(childAt.getLeft() - ((getWidth() / 2) - (width / 2)), 0);
    }

    public LinearLayout getLinear() {
        return this.mShowLinear;
    }

    public void addItemView(View view, int i) {
        view.setTag(R.id.item_position, Integer.valueOf(i));
        this.mShowLinear.addView(view);
    }
}
