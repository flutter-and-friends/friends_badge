package cn.forward.androids.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ListView;

/* loaded from: classes.dex */
public class DragListView extends ListView {
    private int mAutoScrollDownY;
    private int mAutoScrollUpY;
    private Bitmap mBitmap;
    private int mCurrentPosition;
    private int mDownX;
    private int mDownY;
    private DragItemListener mDragItemListener;
    private int mDragViewOffset;
    private boolean mHasStart;
    private View mItemView;
    private int mLastPosition;
    private long mLastScrollTime;
    private int mLastX;
    private int mLastY;
    private float mMoveY;
    private Runnable mScrollRunnable;
    private boolean mScrolling;
    private int mTouchSlop;

    public interface DragItemListener {
        Bitmap afterDrawingCache(View view, Bitmap bitmap);

        void beforeDrawingCache(View view);

        boolean canDrag(View view, int i, int i2);

        boolean canExchange(int i, int i2);

        void onExchange(int i, int i2, View view, View view2);

        void onRelease(int i, View view, int i2, int i3, int i4);

        void startDrag(int i, View view);
    }

    public DragListView(Context context) {
        this(context, null);
    }

    public DragListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DragListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHasStart = false;
        this.mScrolling = false;
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(1, null);
        }
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.mScrollRunnable = new Runnable() { // from class: cn.forward.androids.views.DragListView.1
            @Override // java.lang.Runnable
            public void run() {
                DragListView.this.mScrolling = false;
                if (DragListView.this.mBitmap != null) {
                    DragListView.this.mLastScrollTime = System.currentTimeMillis();
                    DragListView dragListView = DragListView.this;
                    dragListView.onMove((int) dragListView.mMoveY);
                    DragListView.this.invalidate();
                }
            }
        };
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.forward.androids.views.DragListView.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Bitmap bitmap = this.mBitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        canvas.drawBitmap(this.mBitmap, 0.0f, this.mLastY - this.mDragViewOffset, (Paint) null);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mAutoScrollUpY = dp2px(getContext(), 80.0f);
        this.mAutoScrollDownY = i2 - this.mAutoScrollUpY;
    }

    public void onMove(int i) {
        int firstVisiblePosition;
        int iPointToPosition = pointToPosition(getWidth() / 2, i);
        if (iPointToPosition == -1) {
            checkScroller(i);
            return;
        }
        int i2 = this.mLastPosition > iPointToPosition ? -1 : 1;
        int i3 = this.mLastPosition;
        while (true) {
            if (i2 > 0) {
                if (i3 > iPointToPosition) {
                    break;
                }
                firstVisiblePosition = i3 - getFirstVisiblePosition();
                if (firstVisiblePosition >= getChildCount() && firstVisiblePosition >= 0) {
                    int top2 = getChildAt(firstVisiblePosition).getTop();
                    int iPointToPosition2 = pointToPosition(0, top2);
                    if (iPointToPosition2 != -1) {
                        this.mCurrentPosition = iPointToPosition2;
                    }
                    if (top2 < getChildAt(0).getTop()) {
                        this.mCurrentPosition = 0;
                    } else if (top2 > getChildAt(getChildCount() - 1).getBottom()) {
                        this.mCurrentPosition = getAdapter().getCount() - 1;
                    }
                    checkExchange(top2);
                }
                i3 += i2;
            } else {
                if (i3 < iPointToPosition) {
                    break;
                }
                firstVisiblePosition = i3 - getFirstVisiblePosition();
                if (firstVisiblePosition >= getChildCount()) {
                }
                i3 += i2;
            }
        }
        checkScroller(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkScroller(int r6) {
        /*
            r5 = this;
            int r0 = r5.mAutoScrollUpY
            r1 = 1086324736(0x40c00000, float:6.0)
            if (r6 >= r0) goto L16
            int r0 = r5.mDownY
            int r2 = r5.mTouchSlop
            int r0 = r0 - r2
            if (r6 > r0) goto L2b
            android.content.Context r6 = r5.getContext()
            int r6 = r5.dp2px(r6, r1)
            goto L2c
        L16:
            int r0 = r5.mAutoScrollDownY
            if (r6 <= r0) goto L2b
            int r0 = r5.mDownY
            int r2 = r5.mTouchSlop
            int r0 = r0 + r2
            if (r6 < r0) goto L2b
            android.content.Context r6 = r5.getContext()
            int r6 = r5.dp2px(r6, r1)
            int r6 = -r6
            goto L2c
        L2b:
            r6 = 0
        L2c:
            if (r6 == 0) goto L60
            int r0 = r5.mCurrentPosition
            int r1 = r5.getFirstVisiblePosition()
            int r0 = r0 - r1
            android.view.View r0 = r5.getChildAt(r0)
            if (r0 == 0) goto L60
            int r1 = r5.mCurrentPosition
            int r0 = r0.getTop()
            int r0 = r0 + r6
            r5.setSelectionFromTop(r1, r0)
            boolean r6 = r5.mScrolling
            if (r6 != 0) goto L60
            r6 = 1
            r5.mScrolling = r6
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = r5.mLastScrollTime
            long r0 = r0 - r2
            java.lang.Runnable r6 = r5.mScrollRunnable
            r2 = 15
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L5c
            goto L5d
        L5c:
            long r2 = r2 - r0
        L5d:
            r5.postDelayed(r6, r2)
        L60:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.forward.androids.views.DragListView.checkScroller(int):void");
    }

    public void stopDrag() {
        Bitmap bitmap = this.mBitmap;
        if (bitmap != null) {
            bitmap.recycle();
            this.mBitmap = null;
            DragItemListener dragItemListener = this.mDragItemListener;
            if (dragItemListener != null) {
                int i = this.mCurrentPosition;
                View view = this.mItemView;
                int i2 = this.mLastY;
                dragItemListener.onRelease(i, view, i2 - this.mDragViewOffset, this.mLastX, i2);
            }
        }
        if (this.mItemView != null) {
            this.mItemView = null;
        }
        this.mScrolling = false;
        removeCallbacks(this.mScrollRunnable);
    }

    private void checkExchange(int i) {
        DragItemListener dragItemListener;
        int i2 = this.mCurrentPosition;
        int i3 = this.mLastPosition;
        if (i2 == i3 || (dragItemListener = this.mDragItemListener) == null || !dragItemListener.canExchange(i3, i2)) {
            return;
        }
        View view = this.mItemView;
        this.mItemView = getChildAt(this.mCurrentPosition - getFirstVisiblePosition());
        this.mDragItemListener.onExchange(this.mLastPosition, this.mCurrentPosition, view, this.mItemView);
        this.mLastPosition = this.mCurrentPosition;
    }

    public void setDragItemListener(DragItemListener dragItemListener) {
        this.mDragItemListener = dragItemListener;
    }

    public DragItemListener getDragListener() {
        return this.mDragItemListener;
    }

    public static abstract class SimpleAnimationDragItemListener implements DragItemListener {
        @Override // cn.forward.androids.views.DragListView.DragItemListener
        public void onRelease(int i, View view, int i2, int i3, int i4) {
            view.setVisibility(0);
            if (view == null || Math.abs(i2 - view.getTop()) <= view.getHeight() / 5) {
                return;
            }
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
            alphaAnimation.setDuration(150L);
            view.clearAnimation();
            view.startAnimation(alphaAnimation);
        }

        @Override // cn.forward.androids.views.DragListView.DragItemListener
        public void startDrag(int i, View view) {
            if (view != null) {
                view.setVisibility(4);
            }
        }

        @Override // cn.forward.androids.views.DragListView.DragItemListener
        public void onExchange(int i, int i2, View view, View view2) {
            if (view != null) {
                TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i > i2 ? -view.getHeight() : view.getHeight(), 0.0f);
                translateAnimation.setDuration(200L);
                view.clearAnimation();
                view.startAnimation(translateAnimation);
                view.setVisibility(0);
            }
            if (view2 != null) {
                view2.setVisibility(4);
            }
        }
    }

    public int dp2px(Context context, float f) {
        return (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
    }
}
