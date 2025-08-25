package cn.highlight.core.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class CustomScrollView extends ScrollView {
    private static final int size = 4;
    private View mRoot;
    private Rect normal;
    private float y;

    public CustomScrollView(Context context) {
        super(context);
        this.normal = new Rect();
    }

    public CustomScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.normal = new Rect();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getChildCount() > 0) {
            this.mRoot = getChildAt(0);
        }
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mRoot == null) {
            return super.onTouchEvent(motionEvent);
        }
        commOnTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    public void commOnTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.y = motionEvent.getY();
            return;
        }
        if (action == 1) {
            if (isNeedAnimation()) {
                animation();
            }
        } else {
            if (action != 2) {
                return;
            }
            float f = this.y;
            float y = motionEvent.getY();
            int i = ((int) (f - y)) / 4;
            this.y = y;
            if (isNeedMove()) {
                if (this.normal.isEmpty()) {
                    this.normal.set(this.mRoot.getLeft(), this.mRoot.getTop(), this.mRoot.getRight(), this.mRoot.getBottom());
                    return;
                }
                int top2 = this.mRoot.getTop() - i;
                View view = this.mRoot;
                view.layout(view.getLeft(), top2, this.mRoot.getRight(), this.mRoot.getBottom() - i);
            }
        }
    }

    public void animation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, this.mRoot.getTop() - this.normal.top, 0.0f);
        translateAnimation.setDuration(200L);
        this.mRoot.startAnimation(translateAnimation);
        this.mRoot.layout(this.normal.left, this.normal.top, this.normal.right, this.normal.bottom);
        this.normal.setEmpty();
    }

    public boolean isNeedAnimation() {
        return !this.normal.isEmpty();
    }

    public boolean isNeedMove() {
        int measuredHeight = this.mRoot.getMeasuredHeight() - getHeight();
        int scrollY = getScrollY();
        return scrollY == 0 || scrollY == measuredHeight;
    }
}
