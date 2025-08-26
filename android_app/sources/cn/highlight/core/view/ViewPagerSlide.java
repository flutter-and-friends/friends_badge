package cn.highlight.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes.dex */
public class ViewPagerSlide extends ViewPager {
    private boolean isSlide;

    public ViewPagerSlide(Context context) {
        super(context);
        this.isSlide = false;
    }

    public ViewPagerSlide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isSlide = false;
    }

    public void setSlide(boolean z) {
        this.isSlide = z;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.isSlide;
    }
}
