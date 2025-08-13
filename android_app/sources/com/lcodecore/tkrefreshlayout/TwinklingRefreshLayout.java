package com.lcodecore.tkrefreshlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import com.lcodecore.tkrefreshlayout.footer.BallPulseView;
import com.lcodecore.tkrefreshlayout.header.GoogleDotView;
import com.lcodecore.tkrefreshlayout.processor.AnimProcessor;
import com.lcodecore.tkrefreshlayout.processor.IDecorator;
import com.lcodecore.tkrefreshlayout.processor.OverScrollDecorator;
import com.lcodecore.tkrefreshlayout.processor.RefreshProcessor;
import com.lcodecore.tkrefreshlayout.utils.DensityUtil;

/* loaded from: classes.dex */
public class TwinklingRefreshLayout extends RelativeLayout implements PullListener, NestedScrollingChild {
    private static String FOOTER_CLASS_NAME = "";
    private static String HEADER_CLASS_NAME = "";
    protected boolean autoLoadMore;

    /* renamed from: cp */
    private CoContext f408cp;
    private IDecorator decorator;
    protected boolean enableKeepIView;
    protected boolean enableLoadmore;
    protected boolean enableOverScroll;
    protected boolean enableRefresh;
    protected boolean floatRefresh;
    protected boolean isLoadingMore;
    protected boolean isLoadingVisible;
    protected boolean isOverScrollBottomShow;
    protected boolean isOverScrollTopShow;
    protected boolean isPureScrollModeOn;
    protected boolean isRefreshVisible;
    protected boolean isRefreshing;
    private OnGestureListener listener;
    private int mActivePointerId;
    private boolean mAlwaysInTapRegion;
    private float mBottomHeight;
    private FrameLayout mBottomLayout;
    private IBottomView mBottomView;
    private final NestedScrollingChildHelper mChildHelper;
    private View mChildView;
    private MotionEvent mCurrentDownEvent;
    private float mDownFocusX;
    private float mDownFocusY;
    private int mExHeadHeight;
    private FrameLayout mExtraHeadLayout;
    protected float mHeadHeight;
    protected FrameLayout mHeadLayout;
    private IHeaderView mHeadView;
    private boolean mIsBeingDragged;
    private float mLastFocusX;
    private float mLastFocusY;
    private int mLastTouchX;
    private int mLastTouchY;
    protected float mMaxBottomHeight;
    protected float mMaxHeadHeight;
    private int mMaximumFlingVelocity;
    private int mMinimumFlingVelocity;
    private final int[] mNestedOffsets;
    protected float mOverScrollHeight;
    private final int[] mScrollConsumed;
    private final int[] mScrollOffset;
    private final int mTouchSlop;
    private int mTouchSlopSquare;
    private VelocityTracker mVelocityTracker;
    private PullListener pullListener;
    private RefreshListenerAdapter refreshListener;
    protected boolean showLoadingWhenOverScroll;
    protected boolean showRefreshingWhenOverScroll;

    /* renamed from: vx */
    private float f409vx;

    /* renamed from: vy */
    private float f410vy;

    public TwinklingRefreshLayout(Context context) {
        this(context, null, 0);
    }

    public TwinklingRefreshLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TwinklingRefreshLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mExHeadHeight = 0;
        this.isRefreshVisible = false;
        this.isLoadingVisible = false;
        this.isRefreshing = false;
        this.isLoadingMore = false;
        this.enableLoadmore = true;
        this.enableRefresh = true;
        this.isOverScrollTopShow = true;
        this.isOverScrollBottomShow = true;
        this.isPureScrollModeOn = false;
        this.autoLoadMore = false;
        this.floatRefresh = false;
        this.enableOverScroll = true;
        this.enableKeepIView = true;
        this.showRefreshingWhenOverScroll = true;
        this.showLoadingWhenOverScroll = true;
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.pullListener = this;
        this.mMaximumFlingVelocity = ViewConfiguration.getMaximumFlingVelocity();
        this.mMinimumFlingVelocity = ViewConfiguration.getMinimumFlingVelocity();
        int i2 = this.mTouchSlop;
        this.mTouchSlopSquare = i2 * i2;
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        this.mNestedOffsets = new int[2];
        this.mActivePointerId = -1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1259R.styleable.TwinklingRefreshLayout, i, 0);
        try {
            this.mMaxHeadHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1259R.styleable.TwinklingRefreshLayout_tr_max_head_height, DensityUtil.dp2px(context, 120.0f));
            this.mHeadHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1259R.styleable.TwinklingRefreshLayout_tr_head_height, DensityUtil.dp2px(context, 80.0f));
            this.mMaxBottomHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1259R.styleable.TwinklingRefreshLayout_tr_max_bottom_height, DensityUtil.dp2px(context, 120.0f));
            this.mBottomHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1259R.styleable.TwinklingRefreshLayout_tr_bottom_height, DensityUtil.dp2px(context, 60.0f));
            this.mOverScrollHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1259R.styleable.TwinklingRefreshLayout_tr_overscroll_height, (int) this.mHeadHeight);
            this.enableRefresh = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_enable_refresh, true);
            this.enableLoadmore = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_enable_loadmore, true);
            this.isPureScrollModeOn = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_pureScrollMode_on, false);
            this.isOverScrollTopShow = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_overscroll_top_show, true);
            this.isOverScrollBottomShow = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_overscroll_bottom_show, true);
            this.enableOverScroll = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_enable_overscroll, true);
            this.floatRefresh = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_floatRefresh, false);
            this.autoLoadMore = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_autoLoadMore, false);
            this.enableKeepIView = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_enable_keepIView, true);
            this.showRefreshingWhenOverScroll = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_showRefreshingWhenOverScroll, true);
            this.showLoadingWhenOverScroll = typedArrayObtainStyledAttributes.getBoolean(C1259R.styleable.TwinklingRefreshLayout_tr_showLoadingWhenOverScroll, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f408cp = new CoContext();
            addHeader();
            addFooter();
            setFloatRefresh(this.floatRefresh);
            setAutoLoadMore(this.autoLoadMore);
            setEnableRefresh(this.enableRefresh);
            setEnableLoadmore(this.enableLoadmore);
            this.mChildHelper = new NestedScrollingChildHelper(this);
            setNestedScrollingEnabled(true);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void addHeader() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 0);
        layoutParams.addRule(10);
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        frameLayout2.setId(C1259R.id.ex_header);
        addView(frameLayout2, new RelativeLayout.LayoutParams(-1, -2));
        addView(frameLayout, layoutParams);
        this.mExtraHeadLayout = frameLayout2;
        this.mHeadLayout = frameLayout;
        if (this.mHeadView == null) {
            if (!TextUtils.isEmpty(HEADER_CLASS_NAME)) {
                try {
                    setHeaderView((IHeaderView) Class.forName(HEADER_CLASS_NAME).getDeclaredConstructor(Context.class).newInstance(getContext()));
                    return;
                } catch (Exception e) {
                    Log.e("TwinklingRefreshLayout:", "setDefaultHeader classname=" + e.getMessage());
                    setHeaderView(new GoogleDotView(getContext()));
                    return;
                }
            }
            setHeaderView(new GoogleDotView(getContext()));
        }
    }

    private void addFooter() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, 0);
        layoutParams.addRule(12);
        frameLayout.setLayoutParams(layoutParams);
        this.mBottomLayout = frameLayout;
        addView(this.mBottomLayout);
        if (this.mBottomView == null) {
            if (!TextUtils.isEmpty(FOOTER_CLASS_NAME)) {
                try {
                    setBottomView((IBottomView) Class.forName(FOOTER_CLASS_NAME).getDeclaredConstructor(Context.class).newInstance(getContext()));
                    return;
                } catch (Exception e) {
                    Log.e("TwinklingRefreshLayout:", "setDefaultFooter classname=" + e.getMessage());
                    setBottomView(new BallPulseView(getContext()));
                    return;
                }
            }
            setBottomView(new BallPulseView(getContext()));
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mChildView = getChildAt(3);
        this.f408cp.init();
        CoContext coContext = this.f408cp;
        this.decorator = new OverScrollDecorator(coContext, new RefreshProcessor(coContext));
        initGestureDetector();
    }

    private void initGestureDetector() {
        this.listener = new OnGestureListener() { // from class: com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout.1
            @Override // com.lcodecore.tkrefreshlayout.OnGestureListener
            public void onDown(MotionEvent motionEvent) {
                TwinklingRefreshLayout.this.decorator.onFingerDown(motionEvent);
            }

            @Override // com.lcodecore.tkrefreshlayout.OnGestureListener
            public void onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                TwinklingRefreshLayout.this.decorator.onFingerScroll(motionEvent, motionEvent2, f, f2, TwinklingRefreshLayout.this.f409vx, TwinklingRefreshLayout.this.f410vy);
            }

            @Override // com.lcodecore.tkrefreshlayout.OnGestureListener
            public void onUp(MotionEvent motionEvent, boolean z) {
                TwinklingRefreshLayout.this.decorator.onFingerUp(motionEvent, z);
            }

            @Override // com.lcodecore.tkrefreshlayout.OnGestureListener
            public void onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                TwinklingRefreshLayout.this.decorator.onFingerFling(motionEvent, motionEvent2, f, f2);
            }
        };
    }

    private void detectGesture(MotionEvent motionEvent, OnGestureListener onGestureListener) {
        int action = motionEvent.getAction();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i = action & 255;
        boolean z = true;
        boolean z2 = i == 6;
        int actionIndex = z2 ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        float x = 0.0f;
        float y = 0.0f;
        for (int i2 = 0; i2 < pointerCount; i2++) {
            if (actionIndex != i2) {
                x += motionEvent.getX(i2);
                y += motionEvent.getY(i2);
            }
        }
        float f = z2 ? pointerCount - 1 : pointerCount;
        float f2 = x / f;
        float f3 = y / f;
        if (i == 0) {
            this.mLastFocusX = f2;
            this.mDownFocusX = f2;
            this.mLastFocusY = f3;
            this.mDownFocusY = f3;
            MotionEvent motionEvent2 = this.mCurrentDownEvent;
            if (motionEvent2 != null) {
                motionEvent2.recycle();
            }
            this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
            this.mAlwaysInTapRegion = true;
            onGestureListener.onDown(motionEvent);
            return;
        }
        if (i == 1) {
            int pointerId = motionEvent.getPointerId(0);
            this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
            this.f410vy = this.mVelocityTracker.getYVelocity(pointerId);
            this.f409vx = this.mVelocityTracker.getXVelocity(pointerId);
            if (Math.abs(this.f410vy) > this.mMinimumFlingVelocity || Math.abs(this.f409vx) > this.mMinimumFlingVelocity) {
                onGestureListener.onFling(this.mCurrentDownEvent, motionEvent, this.f409vx, this.f410vy);
            } else {
                z = false;
            }
            onGestureListener.onUp(motionEvent, z);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.mVelocityTracker = null;
                return;
            }
            return;
        }
        if (i == 2) {
            float f4 = this.mLastFocusX - f2;
            float f5 = this.mLastFocusY - f3;
            if (!this.mAlwaysInTapRegion) {
                if (Math.abs(f4) >= 1.0f || Math.abs(f5) >= 1.0f) {
                    onGestureListener.onScroll(this.mCurrentDownEvent, motionEvent, f4, f5);
                    this.mLastFocusX = f2;
                    this.mLastFocusY = f3;
                    return;
                }
                return;
            }
            int i3 = (int) (f2 - this.mDownFocusX);
            int i4 = (int) (f3 - this.mDownFocusY);
            if ((i3 * i3) + (i4 * i4) > this.mTouchSlopSquare) {
                onGestureListener.onScroll(this.mCurrentDownEvent, motionEvent, f4, f5);
                this.mLastFocusX = f2;
                this.mLastFocusY = f3;
                this.mAlwaysInTapRegion = false;
                return;
            }
            return;
        }
        if (i == 3) {
            this.mAlwaysInTapRegion = false;
            VelocityTracker velocityTracker2 = this.mVelocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.mVelocityTracker = null;
                return;
            }
            return;
        }
        if (i == 5) {
            this.mLastFocusX = f2;
            this.mDownFocusX = f2;
            this.mLastFocusY = f3;
            this.mDownFocusY = f3;
            return;
        }
        if (i != 6) {
            return;
        }
        this.mLastFocusX = f2;
        this.mDownFocusX = f2;
        this.mLastFocusY = f3;
        this.mDownFocusY = f3;
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
        int actionIndex2 = motionEvent.getActionIndex();
        int pointerId2 = motionEvent.getPointerId(actionIndex2);
        float xVelocity = this.mVelocityTracker.getXVelocity(pointerId2);
        float yVelocity = this.mVelocityTracker.getYVelocity(pointerId2);
        for (int i5 = 0; i5 < pointerCount; i5++) {
            if (i5 != actionIndex2) {
                int pointerId3 = motionEvent.getPointerId(i5);
                if ((this.mVelocityTracker.getXVelocity(pointerId3) * xVelocity) + (this.mVelocityTracker.getYVelocity(pointerId3) * yVelocity) < 0.0f) {
                    this.mVelocityTracker.clear();
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean zDispatchTouchEvent = this.decorator.dispatchTouchEvent(motionEvent);
        detectGesture(motionEvent, this.listener);
        detectNestedScroll(motionEvent);
        return zDispatchTouchEvent;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.decorator.interceptTouchEvent(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.decorator.dealTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean detectNestedScroll(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout.detectNestedScroll(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        this.mChildHelper.setNestedScrollingEnabled(z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return this.mChildHelper.startNestedScroll(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.mChildHelper.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.mChildHelper.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.mChildHelper.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.mChildHelper.dispatchNestedPreFling(f, f2);
    }

    public static void setDefaultHeader(String str) {
        HEADER_CLASS_NAME = str;
    }

    public static void setDefaultFooter(String str) {
        FOOTER_CLASS_NAME = str;
    }

    public void startRefresh() {
        this.f408cp.startRefresh();
    }

    public void startLoadMore() {
        this.f408cp.startLoadMore();
    }

    public void finishRefreshing() {
        this.f408cp.finishRefreshing();
    }

    public void finishLoadmore() {
        this.f408cp.finishLoadmore();
    }

    public void setTargetView(View view) {
        if (view != null) {
            this.mChildView = view;
        }
    }

    public void setDecorator(IDecorator iDecorator) {
        if (iDecorator != null) {
            this.decorator = iDecorator;
        }
    }

    public void setHeaderView(IHeaderView iHeaderView) {
        if (iHeaderView != null) {
            this.mHeadLayout.removeAllViewsInLayout();
            this.mHeadLayout.addView(iHeaderView.getView());
            this.mHeadView = iHeaderView;
        }
    }

    @Deprecated
    public void addFixedExHeader(View view) {
        FrameLayout frameLayout;
        if (view == null || (frameLayout = this.mExtraHeadLayout) == null) {
            return;
        }
        frameLayout.addView(view);
        this.mExtraHeadLayout.bringToFront();
        if (this.floatRefresh) {
            this.mHeadLayout.bringToFront();
        }
        this.f408cp.onAddExHead();
        this.f408cp.setExHeadFixed();
    }

    public View getExtraHeaderView() {
        return this.mExtraHeadLayout;
    }

    public void setBottomView(IBottomView iBottomView) {
        if (iBottomView != null) {
            this.mBottomLayout.removeAllViewsInLayout();
            this.mBottomLayout.addView(iBottomView.getView());
            this.mBottomView = iBottomView;
        }
    }

    public void setFloatRefresh(boolean z) {
        this.floatRefresh = z;
        if (this.floatRefresh) {
            post(new Runnable() { // from class: com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    if (TwinklingRefreshLayout.this.mHeadLayout != null) {
                        TwinklingRefreshLayout.this.mHeadLayout.bringToFront();
                    }
                }
            });
        }
    }

    public void setMaxHeadHeight(float f) {
        this.mMaxHeadHeight = DensityUtil.dp2px(getContext(), f);
    }

    public void setHeaderHeight(float f) {
        this.mHeadHeight = DensityUtil.dp2px(getContext(), f);
    }

    public void setMaxBottomHeight(float f) {
        this.mMaxBottomHeight = DensityUtil.dp2px(getContext(), f);
    }

    public void setBottomHeight(float f) {
        this.mBottomHeight = DensityUtil.dp2px(getContext(), f);
    }

    public void setEnableLoadmore(boolean z) {
        this.enableLoadmore = z;
        IBottomView iBottomView = this.mBottomView;
        if (iBottomView != null) {
            if (this.enableLoadmore) {
                iBottomView.getView().setVisibility(0);
            } else {
                iBottomView.getView().setVisibility(8);
            }
        }
    }

    public void setEnableRefresh(boolean z) {
        this.enableRefresh = z;
        IHeaderView iHeaderView = this.mHeadView;
        if (iHeaderView != null) {
            if (this.enableRefresh) {
                iHeaderView.getView().setVisibility(0);
            } else {
                iHeaderView.getView().setVisibility(8);
            }
        }
    }

    public void setOverScrollTopShow(boolean z) {
        this.isOverScrollTopShow = z;
    }

    public void setOverScrollBottomShow(boolean z) {
        this.isOverScrollBottomShow = z;
    }

    public void setOverScrollRefreshShow(boolean z) {
        this.isOverScrollTopShow = z;
        this.isOverScrollBottomShow = z;
    }

    public void setEnableOverScroll(boolean z) {
        this.enableOverScroll = z;
    }

    public void setPureScrollModeOn() {
        this.isPureScrollModeOn = true;
        this.isOverScrollTopShow = false;
        this.isOverScrollBottomShow = false;
        setMaxHeadHeight(this.mOverScrollHeight);
        setHeaderHeight(this.mOverScrollHeight);
        setMaxBottomHeight(this.mOverScrollHeight);
        setBottomHeight(this.mOverScrollHeight);
    }

    public void setOverScrollHeight(float f) {
        this.mOverScrollHeight = DensityUtil.dp2px(getContext(), f);
    }

    public void setAutoLoadMore(boolean z) {
        this.autoLoadMore = z;
        if (this.autoLoadMore) {
            setEnableLoadmore(true);
        }
    }

    public void showRefreshingWhenOverScroll(boolean z) {
        this.showRefreshingWhenOverScroll = z;
    }

    public void showLoadingWhenOverScroll(boolean z) {
        this.showLoadingWhenOverScroll = z;
    }

    public void setEnableKeepIView(boolean z) {
        this.enableKeepIView = z;
    }

    public void setOnRefreshListener(RefreshListenerAdapter refreshListenerAdapter) {
        if (refreshListenerAdapter != null) {
            this.refreshListener = refreshListenerAdapter;
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onPullingDown(TwinklingRefreshLayout twinklingRefreshLayout, float f) {
        RefreshListenerAdapter refreshListenerAdapter;
        this.mHeadView.onPullingDown(f, this.mMaxHeadHeight, this.mHeadHeight);
        if (this.enableRefresh && (refreshListenerAdapter = this.refreshListener) != null) {
            refreshListenerAdapter.onPullingDown(twinklingRefreshLayout, f);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onPullingUp(TwinklingRefreshLayout twinklingRefreshLayout, float f) {
        RefreshListenerAdapter refreshListenerAdapter;
        this.mBottomView.onPullingUp(f, this.mMaxHeadHeight, this.mHeadHeight);
        if (this.enableLoadmore && (refreshListenerAdapter = this.refreshListener) != null) {
            refreshListenerAdapter.onPullingUp(twinklingRefreshLayout, f);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onPullDownReleasing(TwinklingRefreshLayout twinklingRefreshLayout, float f) {
        RefreshListenerAdapter refreshListenerAdapter;
        this.mHeadView.onPullReleasing(f, this.mMaxHeadHeight, this.mHeadHeight);
        if (this.enableRefresh && (refreshListenerAdapter = this.refreshListener) != null) {
            refreshListenerAdapter.onPullDownReleasing(twinklingRefreshLayout, f);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onPullUpReleasing(TwinklingRefreshLayout twinklingRefreshLayout, float f) {
        RefreshListenerAdapter refreshListenerAdapter;
        this.mBottomView.onPullReleasing(f, this.mMaxBottomHeight, this.mBottomHeight);
        if (this.enableLoadmore && (refreshListenerAdapter = this.refreshListener) != null) {
            refreshListenerAdapter.onPullUpReleasing(twinklingRefreshLayout, f);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onRefresh(TwinklingRefreshLayout twinklingRefreshLayout) {
        this.mHeadView.startAnim(this.mMaxHeadHeight, this.mHeadHeight);
        RefreshListenerAdapter refreshListenerAdapter = this.refreshListener;
        if (refreshListenerAdapter != null) {
            refreshListenerAdapter.onRefresh(twinklingRefreshLayout);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onLoadMore(TwinklingRefreshLayout twinklingRefreshLayout) {
        this.mBottomView.startAnim(this.mMaxBottomHeight, this.mBottomHeight);
        RefreshListenerAdapter refreshListenerAdapter = this.refreshListener;
        if (refreshListenerAdapter != null) {
            refreshListenerAdapter.onLoadMore(twinklingRefreshLayout);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onFinishRefresh() {
        RefreshListenerAdapter refreshListenerAdapter = this.refreshListener;
        if (refreshListenerAdapter != null) {
            refreshListenerAdapter.onFinishRefresh();
        }
        if (this.f408cp.isEnableKeepIView() || this.f408cp.isRefreshing()) {
            this.mHeadView.onFinish(new OnAnimEndListener() { // from class: com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout.3
                @Override // com.lcodecore.tkrefreshlayout.OnAnimEndListener
                public void onAnimEnd() {
                    TwinklingRefreshLayout.this.f408cp.finishRefreshAfterAnim();
                }
            });
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onFinishLoadMore() {
        RefreshListenerAdapter refreshListenerAdapter = this.refreshListener;
        if (refreshListenerAdapter != null) {
            refreshListenerAdapter.onFinishLoadMore();
        }
        if (this.f408cp.isEnableKeepIView() || this.f408cp.isLoadingMore()) {
            this.mBottomView.onFinish();
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onRefreshCanceled() {
        RefreshListenerAdapter refreshListenerAdapter = this.refreshListener;
        if (refreshListenerAdapter != null) {
            refreshListenerAdapter.onRefreshCanceled();
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.PullListener
    public void onLoadmoreCanceled() {
        RefreshListenerAdapter refreshListenerAdapter = this.refreshListener;
        if (refreshListenerAdapter != null) {
            refreshListenerAdapter.onLoadmoreCanceled();
        }
    }

    public class CoContext {
        private static final int EX_MODE_FIXED = 1;
        private static final int EX_MODE_NORMAL = 0;
        private static final int PULLING_BOTTOM_UP = 1;
        private static final int PULLING_TOP_DOWN = 0;
        private int state = 0;
        private int exHeadMode = 0;
        private boolean isExHeadLocked = true;
        private boolean prepareFinishRefresh = false;
        private boolean prepareFinishLoadMore = false;
        private AnimProcessor animProcessor = new AnimProcessor(this);

        public CoContext() {
        }

        public void init() {
            if (TwinklingRefreshLayout.this.isPureScrollModeOn) {
                TwinklingRefreshLayout.this.setOverScrollTopShow(false);
                TwinklingRefreshLayout.this.setOverScrollBottomShow(false);
                if (TwinklingRefreshLayout.this.mHeadLayout != null) {
                    TwinklingRefreshLayout.this.mHeadLayout.setVisibility(8);
                }
                if (TwinklingRefreshLayout.this.mBottomLayout != null) {
                    TwinklingRefreshLayout.this.mBottomLayout.setVisibility(8);
                }
            }
        }

        public AnimProcessor getAnimProcessor() {
            return this.animProcessor;
        }

        public boolean isEnableKeepIView() {
            return TwinklingRefreshLayout.this.enableKeepIView;
        }

        public boolean showRefreshingWhenOverScroll() {
            return TwinklingRefreshLayout.this.showRefreshingWhenOverScroll;
        }

        public boolean showLoadingWhenOverScroll() {
            return TwinklingRefreshLayout.this.showLoadingWhenOverScroll;
        }

        public float getMaxHeadHeight() {
            return TwinklingRefreshLayout.this.mMaxHeadHeight;
        }

        public int getHeadHeight() {
            return (int) TwinklingRefreshLayout.this.mHeadHeight;
        }

        public int getExtraHeadHeight() {
            return TwinklingRefreshLayout.this.mExtraHeadLayout.getHeight();
        }

        public int getMaxBottomHeight() {
            return (int) TwinklingRefreshLayout.this.mMaxBottomHeight;
        }

        public int getBottomHeight() {
            return (int) TwinklingRefreshLayout.this.mBottomHeight;
        }

        public int getOsHeight() {
            return (int) TwinklingRefreshLayout.this.mOverScrollHeight;
        }

        public View getTargetView() {
            return TwinklingRefreshLayout.this.mChildView;
        }

        public View getHeader() {
            return TwinklingRefreshLayout.this.mHeadLayout;
        }

        public View getFooter() {
            return TwinklingRefreshLayout.this.mBottomLayout;
        }

        public int getTouchSlop() {
            return TwinklingRefreshLayout.this.mTouchSlop;
        }

        public void resetHeaderView() {
            if (TwinklingRefreshLayout.this.mHeadView != null) {
                TwinklingRefreshLayout.this.mHeadView.reset();
            }
        }

        public void resetBottomView() {
            if (TwinklingRefreshLayout.this.mBottomView != null) {
                TwinklingRefreshLayout.this.mBottomView.reset();
            }
        }

        public View getExHead() {
            return TwinklingRefreshLayout.this.mExtraHeadLayout;
        }

        public void setExHeadNormal() {
            this.exHeadMode = 0;
        }

        public void setExHeadFixed() {
            this.exHeadMode = 1;
        }

        public boolean isExHeadNormal() {
            return this.exHeadMode == 0;
        }

        public boolean isExHeadFixed() {
            return this.exHeadMode == 1;
        }

        public boolean isExHeadLocked() {
            return this.isExHeadLocked;
        }

        public void onAddExHead() {
            this.isExHeadLocked = false;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) TwinklingRefreshLayout.this.mChildView.getLayoutParams();
            layoutParams.addRule(3, TwinklingRefreshLayout.this.mExtraHeadLayout.getId());
            TwinklingRefreshLayout.this.mChildView.setLayoutParams(layoutParams);
            TwinklingRefreshLayout.this.requestLayout();
        }

        public void startRefresh() {
            TwinklingRefreshLayout.this.post(new Runnable() { // from class: com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout.CoContext.1
                @Override // java.lang.Runnable
                public void run() {
                    CoContext.this.setStatePTD();
                    if (TwinklingRefreshLayout.this.isPureScrollModeOn || TwinklingRefreshLayout.this.mChildView == null) {
                        return;
                    }
                    CoContext.this.setRefreshing(true);
                    CoContext.this.animProcessor.animHeadToRefresh();
                }
            });
        }

        public void startLoadMore() {
            TwinklingRefreshLayout.this.post(new Runnable() { // from class: com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout.CoContext.2
                @Override // java.lang.Runnable
                public void run() {
                    CoContext.this.setStatePBU();
                    if (TwinklingRefreshLayout.this.isPureScrollModeOn || TwinklingRefreshLayout.this.mChildView == null) {
                        return;
                    }
                    CoContext.this.setLoadingMore(true);
                    CoContext.this.animProcessor.animBottomToLoad();
                }
            });
        }

        public void finishRefreshing() {
            onFinishRefresh();
        }

        public void finishRefreshAfterAnim() {
            if (TwinklingRefreshLayout.this.mChildView != null) {
                this.animProcessor.animHeadBack(true);
            }
        }

        public void finishLoadmore() {
            onFinishLoadMore();
            if (TwinklingRefreshLayout.this.mChildView != null) {
                this.animProcessor.animBottomBack(true);
            }
        }

        public boolean enableOverScroll() {
            return TwinklingRefreshLayout.this.enableOverScroll;
        }

        public boolean allowPullDown() {
            return TwinklingRefreshLayout.this.enableRefresh || TwinklingRefreshLayout.this.enableOverScroll;
        }

        public boolean allowPullUp() {
            return TwinklingRefreshLayout.this.enableLoadmore || TwinklingRefreshLayout.this.enableOverScroll;
        }

        public boolean enableRefresh() {
            return TwinklingRefreshLayout.this.enableRefresh;
        }

        public boolean enableLoadmore() {
            return TwinklingRefreshLayout.this.enableLoadmore;
        }

        public boolean allowOverScroll() {
            return (TwinklingRefreshLayout.this.isRefreshVisible || TwinklingRefreshLayout.this.isLoadingVisible) ? false : true;
        }

        public boolean isRefreshVisible() {
            return TwinklingRefreshLayout.this.isRefreshVisible;
        }

        public boolean isLoadingVisible() {
            return TwinklingRefreshLayout.this.isLoadingVisible;
        }

        public void setRefreshVisible(boolean z) {
            TwinklingRefreshLayout.this.isRefreshVisible = z;
        }

        public void setLoadVisible(boolean z) {
            TwinklingRefreshLayout.this.isLoadingVisible = z;
        }

        public void setRefreshing(boolean z) {
            TwinklingRefreshLayout.this.isRefreshing = z;
        }

        public boolean isRefreshing() {
            return TwinklingRefreshLayout.this.isRefreshing;
        }

        public boolean isLoadingMore() {
            return TwinklingRefreshLayout.this.isLoadingMore;
        }

        public void setLoadingMore(boolean z) {
            TwinklingRefreshLayout.this.isLoadingMore = z;
        }

        public boolean isOpenFloatRefresh() {
            return TwinklingRefreshLayout.this.floatRefresh;
        }

        public boolean autoLoadMore() {
            return TwinklingRefreshLayout.this.autoLoadMore;
        }

        public boolean isPureScrollModeOn() {
            return TwinklingRefreshLayout.this.isPureScrollModeOn;
        }

        public boolean isOverScrollTopShow() {
            return TwinklingRefreshLayout.this.isOverScrollTopShow;
        }

        public boolean isOverScrollBottomShow() {
            return TwinklingRefreshLayout.this.isOverScrollBottomShow;
        }

        public void onPullingDown(float f) {
            PullListener pullListener = TwinklingRefreshLayout.this.pullListener;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            pullListener.onPullingDown(twinklingRefreshLayout, f / twinklingRefreshLayout.mHeadHeight);
        }

        public void onPullingUp(float f) {
            PullListener pullListener = TwinklingRefreshLayout.this.pullListener;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            pullListener.onPullingUp(twinklingRefreshLayout, f / twinklingRefreshLayout.mBottomHeight);
        }

        public void onRefresh() {
            TwinklingRefreshLayout.this.pullListener.onRefresh(TwinklingRefreshLayout.this);
        }

        public void onLoadMore() {
            TwinklingRefreshLayout.this.pullListener.onLoadMore(TwinklingRefreshLayout.this);
        }

        public void onFinishRefresh() {
            TwinklingRefreshLayout.this.pullListener.onFinishRefresh();
        }

        public void onFinishLoadMore() {
            TwinklingRefreshLayout.this.pullListener.onFinishLoadMore();
        }

        public void onPullDownReleasing(float f) {
            PullListener pullListener = TwinklingRefreshLayout.this.pullListener;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            pullListener.onPullDownReleasing(twinklingRefreshLayout, f / twinklingRefreshLayout.mHeadHeight);
        }

        public void onPullUpReleasing(float f) {
            PullListener pullListener = TwinklingRefreshLayout.this.pullListener;
            TwinklingRefreshLayout twinklingRefreshLayout = TwinklingRefreshLayout.this;
            pullListener.onPullUpReleasing(twinklingRefreshLayout, f / twinklingRefreshLayout.mBottomHeight);
        }

        public boolean dispatchTouchEventSuper(MotionEvent motionEvent) {
            return TwinklingRefreshLayout.super.dispatchTouchEvent(motionEvent);
        }

        public void onRefreshCanceled() {
            TwinklingRefreshLayout.this.pullListener.onRefreshCanceled();
        }

        public void onLoadmoreCanceled() {
            TwinklingRefreshLayout.this.pullListener.onLoadmoreCanceled();
        }

        public void setStatePTD() {
            this.state = 0;
        }

        public void setStatePBU() {
            this.state = 1;
        }

        public boolean isStatePTD() {
            return this.state == 0;
        }

        public boolean isStatePBU() {
            return 1 == this.state;
        }

        public boolean isPrepareFinishRefresh() {
            return this.prepareFinishRefresh;
        }

        public boolean isPrepareFinishLoadMore() {
            return this.prepareFinishLoadMore;
        }

        public void setPrepareFinishRefresh(boolean z) {
            this.prepareFinishRefresh = z;
        }

        public void setPrepareFinishLoadMore(boolean z) {
            this.prepareFinishLoadMore = z;
        }
    }
}
