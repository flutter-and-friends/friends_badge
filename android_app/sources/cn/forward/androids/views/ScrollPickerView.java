package cn.forward.androids.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import cn.forward.androids.C0428R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ScrollPickerView<T> extends View {
    private static final SlotInterpolator sAutoScrollInterpolator = new SlotInterpolator();
    private ValueAnimator mAutoScrollAnimator;
    private boolean mCanTap;
    private Drawable mCenterItemBackground;
    private int mCenterPoint;
    private int mCenterPosition;
    private int mCenterX;
    private int mCenterY;
    private List<T> mData;
    private boolean mDisallowInterceptTouch;
    private boolean mDisallowTouch;
    private boolean mDrawAllItem;
    private GestureDetector mGestureDetector;
    private boolean mHasCallSelectedListener;
    private boolean mIsAutoScrolling;
    private boolean mIsCirculation;
    private boolean mIsFling;
    private boolean mIsHorizontal;
    private boolean mIsInertiaScroll;
    private boolean mIsMovingCenter;
    private int mItemHeight;
    private int mItemSize;
    private int mItemWidth;
    private float mLastMoveX;
    private float mLastMoveY;
    private int mLastScrollX;
    private int mLastScrollY;
    private OnSelectedListener mListener;
    private float mMoveLength;
    private Paint mPaint;
    private Scroller mScroller;
    private int mSelected;
    private int mSelectedOnTouch;
    private int mVisibleItemCount;

    public interface OnSelectedListener {
        void onSelected(ScrollPickerView scrollPickerView, int i);
    }

    public abstract void drawItem(Canvas canvas, List<T> list, int i, int i2, float f, float f2);

    public ScrollPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrollPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mVisibleItemCount = 3;
        this.mIsInertiaScroll = true;
        this.mIsCirculation = true;
        this.mDisallowInterceptTouch = false;
        this.mItemHeight = 0;
        this.mItemWidth = 0;
        this.mCenterPosition = -1;
        this.mMoveLength = 0.0f;
        this.mLastScrollY = 0;
        this.mLastScrollX = 0;
        this.mDisallowTouch = false;
        this.mCenterItemBackground = null;
        this.mCanTap = true;
        this.mIsHorizontal = false;
        this.mDrawAllItem = false;
        this.mHasCallSelectedListener = false;
        this.mIsAutoScrolling = false;
        this.mGestureDetector = new GestureDetector(getContext(), new FlingOnGestureListener());
        this.mScroller = new Scroller(getContext());
        this.mAutoScrollAnimator = ValueAnimator.ofInt(0, 0);
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0428R.styleable.ScrollPickerView);
            if (typedArrayObtainStyledAttributes.hasValue(C0428R.styleable.ScrollPickerView_spv_center_item_background)) {
                setCenterItemBackground(typedArrayObtainStyledAttributes.getDrawable(C0428R.styleable.ScrollPickerView_spv_center_item_background));
            }
            setVisibleItemCount(typedArrayObtainStyledAttributes.getInt(C0428R.styleable.ScrollPickerView_spv_visible_item_count, getVisibleItemCount()));
            setCenterPosition(typedArrayObtainStyledAttributes.getInt(C0428R.styleable.ScrollPickerView_spv_center_item_position, getCenterPosition()));
            setIsCirculation(typedArrayObtainStyledAttributes.getBoolean(C0428R.styleable.ScrollPickerView_spv_is_circulation, isIsCirculation()));
            setDisallowInterceptTouch(typedArrayObtainStyledAttributes.getBoolean(C0428R.styleable.ScrollPickerView_spv_disallow_intercept_touch, isDisallowInterceptTouch()));
            setHorizontal(typedArrayObtainStyledAttributes.getInt(C0428R.styleable.ScrollPickerView_spv_orientation, this.mIsHorizontal ? 1 : 2) == 1);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        List<T> list = this.mData;
        if (list == null || list.size() <= 0) {
            return;
        }
        Drawable drawable = this.mCenterItemBackground;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        int i = this.mCenterPosition;
        int iMin = Math.min(Math.max(i + 1, this.mVisibleItemCount - i), this.mData.size());
        if (this.mDrawAllItem) {
            iMin = this.mData.size();
        }
        while (iMin >= 1) {
            if (this.mDrawAllItem || iMin <= this.mCenterPosition + 1) {
                int size = this.mSelected;
                if (size - iMin < 0) {
                    size = this.mData.size() + this.mSelected;
                }
                int i2 = size - iMin;
                if (this.mIsCirculation) {
                    float f = this.mMoveLength;
                    drawItem(canvas, this.mData, i2, -iMin, f, (this.mCenterPoint + f) - (this.mItemSize * iMin));
                } else if (this.mSelected - iMin >= 0) {
                    float f2 = this.mMoveLength;
                    drawItem(canvas, this.mData, i2, -iMin, f2, (this.mCenterPoint + f2) - (this.mItemSize * iMin));
                }
            }
            if (this.mDrawAllItem || iMin <= this.mVisibleItemCount - this.mCenterPosition) {
                int size2 = this.mSelected + iMin >= this.mData.size() ? (this.mSelected + iMin) - this.mData.size() : this.mSelected + iMin;
                if (this.mIsCirculation) {
                    List<T> list2 = this.mData;
                    float f3 = this.mMoveLength;
                    drawItem(canvas, list2, size2, iMin, f3, this.mCenterPoint + f3 + (this.mItemSize * iMin));
                } else if (this.mSelected + iMin < this.mData.size()) {
                    List<T> list3 = this.mData;
                    float f4 = this.mMoveLength;
                    drawItem(canvas, list3, size2, iMin, f4, this.mCenterPoint + f4 + (this.mItemSize * iMin));
                }
            }
            iMin--;
        }
        List<T> list4 = this.mData;
        int i3 = this.mSelected;
        float f5 = this.mMoveLength;
        drawItem(canvas, list4, i3, 0, f5, this.mCenterPoint + f5);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        reset();
    }

    private void reset() {
        if (this.mCenterPosition < 0) {
            this.mCenterPosition = this.mVisibleItemCount / 2;
        }
        if (this.mIsHorizontal) {
            this.mItemHeight = getMeasuredHeight();
            this.mItemWidth = getMeasuredWidth() / this.mVisibleItemCount;
            this.mCenterY = 0;
            int i = this.mCenterPosition;
            int i2 = this.mItemWidth;
            this.mCenterX = i * i2;
            this.mItemSize = i2;
            this.mCenterPoint = this.mCenterX;
        } else {
            this.mItemHeight = getMeasuredHeight() / this.mVisibleItemCount;
            this.mItemWidth = getMeasuredWidth();
            int i3 = this.mCenterPosition;
            int i4 = this.mItemHeight;
            this.mCenterY = i3 * i4;
            this.mCenterX = 0;
            this.mItemSize = i4;
            this.mCenterPoint = this.mCenterY;
        }
        Drawable drawable = this.mCenterItemBackground;
        if (drawable != null) {
            int i5 = this.mCenterX;
            int i6 = this.mCenterY;
            drawable.setBounds(i5, i6, this.mItemWidth + i5, this.mItemHeight + i6);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mDisallowTouch) {
            return true;
        }
        if (motionEvent.getActionMasked() == 0) {
            this.mSelectedOnTouch = this.mSelected;
        }
        if (this.mGestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 1) {
            this.mLastMoveY = motionEvent.getY();
            this.mLastMoveX = motionEvent.getX();
            if (this.mMoveLength == 0.0f) {
                if (this.mSelectedOnTouch != this.mSelected) {
                    notifySelected();
                }
            } else {
                moveToCenter();
            }
        } else if (actionMasked == 2) {
            if (this.mIsHorizontal) {
                if (Math.abs(motionEvent.getX() - this.mLastMoveX) < 0.1f) {
                    return true;
                }
                this.mMoveLength += motionEvent.getX() - this.mLastMoveX;
            } else {
                if (Math.abs(motionEvent.getY() - this.mLastMoveY) < 0.1f) {
                    return true;
                }
                this.mMoveLength += motionEvent.getY() - this.mLastMoveY;
            }
            this.mLastMoveY = motionEvent.getY();
            this.mLastMoveX = motionEvent.getX();
            checkCirculation();
            invalidate();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void computeScroll(int i, int i2, float f) {
        if (f < 1.0f) {
            if (this.mIsHorizontal) {
                this.mMoveLength = (this.mMoveLength + i) - this.mLastScrollX;
                this.mLastScrollX = i;
            } else {
                this.mMoveLength = (this.mMoveLength + i) - this.mLastScrollY;
                this.mLastScrollY = i;
            }
            checkCirculation();
            invalidate();
            return;
        }
        this.mIsMovingCenter = false;
        this.mLastScrollY = 0;
        this.mLastScrollX = 0;
        float f2 = this.mMoveLength;
        if (f2 > 0.0f) {
            int i3 = this.mItemSize;
            if (f2 < i3 / 2) {
                this.mMoveLength = 0.0f;
            } else {
                this.mMoveLength = i3;
            }
        } else {
            float f3 = -f2;
            int i4 = this.mItemSize;
            if (f3 < i4 / 2) {
                this.mMoveLength = 0.0f;
            } else {
                this.mMoveLength = -i4;
            }
        }
        checkCirculation();
        notifySelected();
        invalidate();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            if (this.mIsHorizontal) {
                this.mMoveLength = (this.mMoveLength + this.mScroller.getCurrX()) - this.mLastScrollX;
            } else {
                this.mMoveLength = (this.mMoveLength + this.mScroller.getCurrY()) - this.mLastScrollY;
            }
            this.mLastScrollY = this.mScroller.getCurrY();
            this.mLastScrollX = this.mScroller.getCurrX();
            checkCirculation();
            invalidate();
            return;
        }
        if (this.mIsFling) {
            this.mIsFling = false;
            if (this.mMoveLength == 0.0f) {
                notifySelected();
                return;
            } else {
                moveToCenter();
                return;
            }
        }
        if (this.mIsMovingCenter) {
            notifySelected();
        }
    }

    public void cancelScroll() {
        this.mLastScrollY = 0;
        this.mLastScrollX = 0;
        this.mIsMovingCenter = false;
        this.mIsFling = false;
        this.mScroller.abortAnimation();
        stopAutoScroll();
    }

    private void checkCirculation() {
        float f = this.mMoveLength;
        int i = this.mItemSize;
        if (f >= i) {
            this.mSelected -= (int) (f / i);
            if (this.mSelected < 0) {
                if (this.mIsCirculation) {
                    do {
                        this.mSelected = this.mData.size() + this.mSelected;
                    } while (this.mSelected < 0);
                    float f2 = this.mMoveLength;
                    int i2 = this.mItemSize;
                    this.mMoveLength = (f2 - i2) % i2;
                    return;
                }
                this.mSelected = 0;
                this.mMoveLength = i;
                if (this.mIsFling) {
                    this.mScroller.forceFinished(true);
                }
                if (this.mIsMovingCenter) {
                    scroll(this.mMoveLength, 0);
                    return;
                }
                return;
            }
            this.mMoveLength = (f - i) % i;
            return;
        }
        if (f <= (-i)) {
            this.mSelected += (int) ((-f) / i);
            if (this.mSelected >= this.mData.size()) {
                if (this.mIsCirculation) {
                    do {
                        this.mSelected -= this.mData.size();
                    } while (this.mSelected >= this.mData.size());
                    float f3 = this.mMoveLength;
                    int i3 = this.mItemSize;
                    this.mMoveLength = (f3 + i3) % i3;
                    return;
                }
                this.mSelected = this.mData.size() - 1;
                this.mMoveLength = -this.mItemSize;
                if (this.mIsFling) {
                    this.mScroller.forceFinished(true);
                }
                if (this.mIsMovingCenter) {
                    scroll(this.mMoveLength, 0);
                    return;
                }
                return;
            }
            float f4 = this.mMoveLength;
            int i4 = this.mItemSize;
            this.mMoveLength = (f4 + i4) % i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveToCenter() {
        if (!this.mScroller.isFinished() || this.mIsFling || this.mMoveLength == 0.0f) {
            return;
        }
        cancelScroll();
        float f = this.mMoveLength;
        if (f > 0.0f) {
            if (this.mIsHorizontal) {
                int i = this.mItemWidth;
                if (f < i / 2) {
                    scroll(f, 0);
                    return;
                } else {
                    scroll(f, i);
                    return;
                }
            }
            int i2 = this.mItemHeight;
            if (f < i2 / 2) {
                scroll(f, 0);
                return;
            } else {
                scroll(f, i2);
                return;
            }
        }
        if (this.mIsHorizontal) {
            float f2 = -f;
            int i3 = this.mItemWidth;
            if (f2 < i3 / 2) {
                scroll(f, 0);
                return;
            } else {
                scroll(f, -i3);
                return;
            }
        }
        float f3 = -f;
        int i4 = this.mItemHeight;
        if (f3 < i4 / 2) {
            scroll(f, 0);
        } else {
            scroll(f, -i4);
        }
    }

    private void scroll(float f, int i) {
        if (this.mIsHorizontal) {
            int i2 = (int) f;
            this.mLastScrollX = i2;
            this.mIsMovingCenter = true;
            this.mScroller.startScroll(i2, 0, 0, 0);
            this.mScroller.setFinalX(i);
        } else {
            int i3 = (int) f;
            this.mLastScrollY = i3;
            this.mIsMovingCenter = true;
            this.mScroller.startScroll(0, i3, 0, 0);
            this.mScroller.setFinalY(i);
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fling(float f, float f2) {
        if (this.mIsHorizontal) {
            int i = (int) f;
            this.mLastScrollX = i;
            this.mIsFling = true;
            int i2 = this.mItemWidth;
            this.mScroller.fling(i, 0, (int) f2, 0, i2 * (-10), i2 * 10, 0, 0);
        } else {
            int i3 = (int) f;
            this.mLastScrollY = i3;
            this.mIsFling = true;
            int i4 = this.mItemHeight;
            this.mScroller.fling(0, i3, 0, (int) f2, 0, 0, i4 * (-10), i4 * 10);
        }
        invalidate();
    }

    private void notifySelected() {
        this.mMoveLength = 0.0f;
        cancelScroll();
        OnSelectedListener onSelectedListener = this.mListener;
        if (onSelectedListener != null) {
            onSelectedListener.onSelected(this, this.mSelected);
        }
    }

    public void autoScrollFast(int i, long j, float f, Interpolator interpolator) {
        if (this.mIsAutoScrolling || !this.mIsCirculation) {
            return;
        }
        cancelScroll();
        this.mIsAutoScrolling = true;
        int i2 = (int) (f * j);
        int size = (int) (((i2 * 1.0f) / (this.mData.size() * this.mItemSize)) + 0.5f);
        if (size <= 0) {
            size = 1;
        }
        int size2 = size * this.mData.size();
        int i3 = this.mItemSize;
        int i4 = (size2 * i3) + ((this.mSelected - i) * i3);
        final int size3 = (this.mData.size() * this.mItemSize) + i4;
        if (Math.abs(i2 - i4) < Math.abs(i2 - size3)) {
            size3 = i4;
        }
        this.mAutoScrollAnimator.cancel();
        this.mAutoScrollAnimator.setIntValues(0, size3);
        this.mAutoScrollAnimator.setInterpolator(interpolator);
        this.mAutoScrollAnimator.setDuration(j);
        this.mAutoScrollAnimator.removeAllUpdateListeners();
        if (size3 != 0) {
            this.mAutoScrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.forward.androids.views.ScrollPickerView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    ScrollPickerView.this.computeScroll(((Integer) valueAnimator.getAnimatedValue()).intValue(), size3, (valueAnimator.getCurrentPlayTime() * 1.0f) / valueAnimator.getDuration());
                }
            });
            this.mAutoScrollAnimator.removeAllListeners();
            this.mAutoScrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: cn.forward.androids.views.ScrollPickerView.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    ScrollPickerView.this.mIsAutoScrolling = false;
                }
            });
            this.mAutoScrollAnimator.start();
            return;
        }
        computeScroll(size3, size3, 1.0f);
        this.mIsAutoScrolling = false;
    }

    public void autoScrollFast(int i, long j) {
        autoScrollFast(i, j, dip2px(0.6f), sAutoScrollInterpolator);
    }

    public void autoScrollFast(int i, long j, float f) {
        autoScrollFast(i, j, f, sAutoScrollInterpolator);
    }

    public void autoScrollToPosition(int i, long j, Interpolator interpolator) {
        autoScrollTo((this.mSelected - (i % this.mData.size())) * this.mItemHeight, j, interpolator, false);
    }

    public void autoScrollTo(final int i, long j, Interpolator interpolator, boolean z) {
        if (this.mIsAutoScrolling) {
            return;
        }
        final boolean z2 = this.mDisallowTouch;
        this.mDisallowTouch = !z;
        this.mIsAutoScrolling = true;
        this.mAutoScrollAnimator.cancel();
        this.mAutoScrollAnimator.setIntValues(0, i);
        this.mAutoScrollAnimator.setInterpolator(interpolator);
        this.mAutoScrollAnimator.setDuration(j);
        this.mAutoScrollAnimator.removeAllUpdateListeners();
        this.mAutoScrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: cn.forward.androids.views.ScrollPickerView.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScrollPickerView.this.computeScroll(((Integer) valueAnimator.getAnimatedValue()).intValue(), i, (valueAnimator.getCurrentPlayTime() * 1.0f) / valueAnimator.getDuration());
            }
        });
        this.mAutoScrollAnimator.removeAllListeners();
        this.mAutoScrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: cn.forward.androids.views.ScrollPickerView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                ScrollPickerView.this.mIsAutoScrolling = false;
                ScrollPickerView.this.mDisallowTouch = z2;
            }
        });
        this.mAutoScrollAnimator.start();
    }

    public void stopAutoScroll() {
        this.mIsAutoScrolling = false;
        this.mAutoScrollAnimator.cancel();
    }

    private static class SlotInterpolator implements Interpolator {
        private SlotInterpolator() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return ((float) (Math.cos((f + 1.0f) * 3.141592653589793d) / 2.0d)) + 0.5f;
        }
    }

    private class FlingOnGestureListener extends GestureDetector.SimpleOnGestureListener {
        private boolean mIsScrollingLastTime;

        private FlingOnGestureListener() {
            this.mIsScrollingLastTime = false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            ViewParent parent;
            if (ScrollPickerView.this.mDisallowInterceptTouch && (parent = ScrollPickerView.this.getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            this.mIsScrollingLastTime = ScrollPickerView.this.isScrolling();
            ScrollPickerView.this.cancelScroll();
            ScrollPickerView.this.mLastMoveY = motionEvent.getY();
            ScrollPickerView.this.mLastMoveX = motionEvent.getX();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (!ScrollPickerView.this.mIsInertiaScroll) {
                return true;
            }
            ScrollPickerView.this.cancelScroll();
            if (ScrollPickerView.this.mIsHorizontal) {
                ScrollPickerView scrollPickerView = ScrollPickerView.this;
                scrollPickerView.fling(scrollPickerView.mMoveLength, f);
                return true;
            }
            ScrollPickerView scrollPickerView2 = ScrollPickerView.this;
            scrollPickerView2.fling(scrollPickerView2.mMoveLength, f2);
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            float f;
            ScrollPickerView.this.mLastMoveY = motionEvent.getY();
            ScrollPickerView.this.mLastMoveX = motionEvent.getX();
            if (ScrollPickerView.this.isHorizontal()) {
                ScrollPickerView scrollPickerView = ScrollPickerView.this;
                scrollPickerView.mCenterPoint = scrollPickerView.mCenterX;
                f = ScrollPickerView.this.mLastMoveX;
            } else {
                ScrollPickerView scrollPickerView2 = ScrollPickerView.this;
                scrollPickerView2.mCenterPoint = scrollPickerView2.mCenterY;
                f = ScrollPickerView.this.mLastMoveY;
            }
            if (!ScrollPickerView.this.mCanTap || this.mIsScrollingLastTime) {
                ScrollPickerView.this.moveToCenter();
                return true;
            }
            if (f >= ScrollPickerView.this.mCenterPoint && f <= ScrollPickerView.this.mCenterPoint + ScrollPickerView.this.mItemSize) {
                ScrollPickerView.this.performClick();
                return true;
            }
            if (f < ScrollPickerView.this.mCenterPoint) {
                ScrollPickerView.this.autoScrollTo(ScrollPickerView.this.mItemSize, 150L, ScrollPickerView.sAutoScrollInterpolator, false);
                return true;
            }
            ScrollPickerView.this.autoScrollTo(-ScrollPickerView.this.mItemSize, 150L, ScrollPickerView.sAutoScrollInterpolator, false);
            return true;
        }
    }

    public List<T> getData() {
        return this.mData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setData(List<? extends T> list) {
        if (list == 0) {
            this.mData = new ArrayList();
        } else {
            this.mData = list;
        }
        this.mSelected = this.mData.size() / 2;
        invalidate();
    }

    public T getSelectedItem() {
        return this.mData.get(this.mSelected);
    }

    public int getSelectedPosition() {
        return this.mSelected;
    }

    public void setSelectedPosition(int i) {
        if (i < 0 || i > this.mData.size() - 1) {
            return;
        }
        if (i == this.mSelected && this.mHasCallSelectedListener) {
            return;
        }
        this.mHasCallSelectedListener = true;
        this.mSelected = i;
        invalidate();
        notifySelected();
    }

    public void setOnSelectedListener(OnSelectedListener onSelectedListener) {
        this.mListener = onSelectedListener;
    }

    public OnSelectedListener getListener() {
        return this.mListener;
    }

    public boolean isInertiaScroll() {
        return this.mIsInertiaScroll;
    }

    public void setInertiaScroll(boolean z) {
        this.mIsInertiaScroll = z;
    }

    public boolean isIsCirculation() {
        return this.mIsCirculation;
    }

    public void setIsCirculation(boolean z) {
        this.mIsCirculation = z;
    }

    public boolean isDisallowInterceptTouch() {
        return this.mDisallowInterceptTouch;
    }

    public int getVisibleItemCount() {
        return this.mVisibleItemCount;
    }

    public void setVisibleItemCount(int i) {
        this.mVisibleItemCount = i;
        reset();
        invalidate();
    }

    public void setDisallowInterceptTouch(boolean z) {
        this.mDisallowInterceptTouch = z;
    }

    public int getItemHeight() {
        return this.mItemHeight;
    }

    public int getItemWidth() {
        return this.mItemWidth;
    }

    public int getItemSize() {
        return this.mItemSize;
    }

    public int getCenterX() {
        return this.mCenterX;
    }

    public int getCenterY() {
        return this.mCenterY;
    }

    public int getCenterPoint() {
        return this.mCenterPoint;
    }

    public boolean isDisallowTouch() {
        return this.mDisallowTouch;
    }

    public void setDisallowTouch(boolean z) {
        this.mDisallowTouch = z;
    }

    public void setCenterPosition(int i) {
        if (i < 0) {
            this.mCenterPosition = 0;
        } else {
            int i2 = this.mVisibleItemCount;
            if (i >= i2) {
                this.mCenterPosition = i2 - 1;
            } else {
                this.mCenterPosition = i;
            }
        }
        this.mCenterY = this.mCenterPosition * this.mItemHeight;
        invalidate();
    }

    public int getCenterPosition() {
        return this.mCenterPosition;
    }

    public void setCenterItemBackground(Drawable drawable) {
        this.mCenterItemBackground = drawable;
        Drawable drawable2 = this.mCenterItemBackground;
        int i = this.mCenterX;
        int i2 = this.mCenterY;
        drawable2.setBounds(i, i2, this.mItemWidth + i, this.mItemHeight + i2);
        invalidate();
    }

    public void setCenterItemBackground(int i) {
        this.mCenterItemBackground = new ColorDrawable(i);
        Drawable drawable = this.mCenterItemBackground;
        int i2 = this.mCenterX;
        int i3 = this.mCenterY;
        drawable.setBounds(i2, i3, this.mItemWidth + i2, this.mItemHeight + i3);
        invalidate();
    }

    public Drawable getCenterItemBackground() {
        return this.mCenterItemBackground;
    }

    public boolean isScrolling() {
        return this.mIsFling || this.mIsMovingCenter || this.mIsAutoScrolling;
    }

    public boolean isFling() {
        return this.mIsFling;
    }

    public boolean isMovingCenter() {
        return this.mIsMovingCenter;
    }

    public boolean isAutoScrolling() {
        return this.mIsAutoScrolling;
    }

    public boolean isCanTap() {
        return this.mCanTap;
    }

    public void setCanTap(boolean z) {
        this.mCanTap = z;
    }

    public boolean isHorizontal() {
        return this.mIsHorizontal;
    }

    public boolean isVertical() {
        return !this.mIsHorizontal;
    }

    public void setHorizontal(boolean z) {
        if (this.mIsHorizontal == z) {
            return;
        }
        this.mIsHorizontal = z;
        reset();
        if (this.mIsHorizontal) {
            this.mItemSize = this.mItemWidth;
        } else {
            this.mItemSize = this.mItemHeight;
        }
        invalidate();
    }

    public void setVertical(boolean z) {
        if (this.mIsHorizontal == (!z)) {
            return;
        }
        this.mIsHorizontal = !z;
        reset();
        if (this.mIsHorizontal) {
            this.mItemSize = this.mItemWidth;
        } else {
            this.mItemSize = this.mItemHeight;
        }
        invalidate();
    }

    public boolean isDrawAllItem() {
        return this.mDrawAllItem;
    }

    public void setDrawAllItem(boolean z) {
        this.mDrawAllItem = z;
    }

    public int dip2px(float f) {
        return (int) ((f * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            moveToCenter();
        }
    }
}
