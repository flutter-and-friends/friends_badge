package cn.highlight.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class ObservableScrollView extends ScrollView {
    private int _calCount;
    private OnScrollBottomListener _listener;
    private int downX;
    private int downY;
    private int mTouchSlop;
    private ScrollViewListener scrollViewListener;

    public interface OnScrollBottomListener {
        void srollToBottom();
    }

    public interface ScrollViewListener {
        void onScrollChanged(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4);
    }

    public ObservableScrollView(Context context) {
        super(context);
        this.scrollViewListener = null;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.scrollViewListener = null;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public ObservableScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.scrollViewListener = null;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public void registerOnScrollViewScrollToBottom(OnScrollBottomListener onScrollBottomListener) {
        this._listener = onScrollBottomListener;
    }

    public void unRegisterOnScrollViewScrollToBottom() {
        this._listener = null;
    }

    public void setScrollViewListener(ScrollViewListener scrollViewListener) {
        this.scrollViewListener = scrollViewListener;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        OnScrollBottomListener onScrollBottomListener;
        super.onScrollChanged(i, i2, i3, i4);
        if (getHeight() + getScrollY() == getChildAt(0).getHeight()) {
            this._calCount++;
            if (this._calCount == 1 && (onScrollBottomListener = this._listener) != null) {
                onScrollBottomListener.srollToBottom();
            }
        } else {
            this._calCount = 0;
        }
        ScrollViewListener scrollViewListener = this.scrollViewListener;
        if (scrollViewListener != null) {
            scrollViewListener.onScrollChanged(this, i, i2, i3, i4);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.downX = (int) motionEvent.getRawX();
            this.downY = (int) motionEvent.getRawY();
        } else if (action == 2 && Math.abs(((int) motionEvent.getRawY()) - this.downY) > this.mTouchSlop) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
