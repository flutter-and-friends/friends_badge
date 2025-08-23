package cn.highlight.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class MyRecyclerView extends RecyclerView {
    private View mCurrentView;
    private OnItemScrollChangeListener mItemScrollChangeListener;

    public interface OnItemScrollChangeListener {
        void onChange(View view, int i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i) {
    }

    public MyRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setOnItemScrollChangeListener(OnItemScrollChangeListener onItemScrollChangeListener) {
        this.mItemScrollChangeListener = onItemScrollChangeListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mCurrentView = getChildAt(0);
        OnItemScrollChangeListener onItemScrollChangeListener = this.mItemScrollChangeListener;
        if (onItemScrollChangeListener != null) {
            View view = this.mCurrentView;
            onItemScrollChangeListener.onChange(view, getChildPosition(view));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrolled(int i, int i2) {
        View childAt = getChildAt(0);
        OnItemScrollChangeListener onItemScrollChangeListener = this.mItemScrollChangeListener;
        if (onItemScrollChangeListener == null || childAt == null || childAt == this.mCurrentView) {
            return;
        }
        this.mCurrentView = childAt;
        View view = this.mCurrentView;
        onItemScrollChangeListener.onChange(view, getChildPosition(view));
    }
}
