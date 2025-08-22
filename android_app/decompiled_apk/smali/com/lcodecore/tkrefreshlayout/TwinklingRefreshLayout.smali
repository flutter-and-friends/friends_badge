.class public Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;
.super Landroid/widget/RelativeLayout;
.source "TwinklingRefreshLayout.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/PullListener;
.implements Landroidx/core/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;
    }
.end annotation


# static fields
.field private static FOOTER_CLASS_NAME:Ljava/lang/String; = ""

.field private static HEADER_CLASS_NAME:Ljava/lang/String; = ""


# instance fields
.field protected autoLoadMore:Z

.field private cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

.field private decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

.field protected enableKeepIView:Z

.field protected enableLoadmore:Z

.field protected enableOverScroll:Z

.field protected enableRefresh:Z

.field protected floatRefresh:Z

.field protected isLoadingMore:Z

.field protected isLoadingVisible:Z

.field protected isOverScrollBottomShow:Z

.field protected isOverScrollTopShow:Z

.field protected isPureScrollModeOn:Z

.field protected isRefreshVisible:Z

.field protected isRefreshing:Z

.field private listener:Lcom/lcodecore/tkrefreshlayout/OnGestureListener;

.field private mActivePointerId:I

.field private mAlwaysInTapRegion:Z

.field private mBottomHeight:F

.field private mBottomLayout:Landroid/widget/FrameLayout;

.field private mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildView:Landroid/view/View;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mExHeadHeight:I

.field private mExtraHeadLayout:Landroid/widget/FrameLayout;

.field protected mHeadHeight:F

.field protected mHeadLayout:Landroid/widget/FrameLayout;

.field private mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

.field private mIsBeingDragged:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private mLastTouchX:I

.field private mLastTouchY:I

.field protected mMaxBottomHeight:F

.field protected mMaxHeadHeight:F

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private final mNestedOffsets:[I

.field protected mOverScrollHeight:F

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private final mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private pullListener:Lcom/lcodecore/tkrefreshlayout/PullListener;

.field private refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

.field protected showLoadingWhenOverScroll:Z

.field protected showRefreshingWhenOverScroll:Z

.field private vx:F

.field private vy:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mExHeadHeight:I

    .line 74
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshVisible:Z

    .line 77
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingVisible:Z

    .line 80
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isRefreshing:Z

    .line 81
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isLoadingMore:Z

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    .line 86
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    .line 89
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollTopShow:Z

    .line 91
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollBottomShow:Z

    .line 94
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    .line 97
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->autoLoadMore:Z

    .line 100
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    .line 103
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    .line 106
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableKeepIView:Z

    .line 109
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showRefreshingWhenOverScroll:Z

    .line 112
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showLoadingWhenOverScroll:Z

    .line 115
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlop:I

    .line 117
    iput-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->pullListener:Lcom/lcodecore/tkrefreshlayout/PullListener;

    .line 271
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaximumFlingVelocity:I

    .line 272
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMinimumFlingVelocity:I

    .line 275
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlop:I

    mul-int v2, v2, v2

    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlopSquare:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 418
    iput-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollOffset:[I

    new-array v3, v2, [I

    .line 419
    iput-object v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollConsumed:[I

    new-array v2, v2, [I

    .line 420
    iput-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mNestedOffsets:[I

    const/4 v2, -0x1

    .line 421
    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mActivePointerId:I

    .line 132
    sget-object v2, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 134
    :try_start_0
    sget p3, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_max_head_height:I

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {p1, v2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    .line 135
    sget p3, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_head_height:I

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {p1, v3}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    .line 136
    sget p3, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_max_bottom_height:I

    invoke-static {p1, v2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxBottomHeight:F

    .line 137
    sget p3, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_bottom_height:I

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {p1, v2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomHeight:F

    .line 138
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_overscroll_height:I

    iget p3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    float-to-int p3, p3

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    .line 139
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_enable_refresh:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    .line 140
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_enable_loadmore:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    .line 141
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_pureScrollMode_on:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    .line 142
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_overscroll_top_show:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollTopShow:Z

    .line 143
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_overscroll_bottom_show:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollBottomShow:Z

    .line 144
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_enable_overscroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    .line 145
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_floatRefresh:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    .line 146
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_autoLoadMore:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->autoLoadMore:Z

    .line 147
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_enable_keepIView:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableKeepIView:Z

    .line 148
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_showRefreshingWhenOverScroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showRefreshingWhenOverScroll:Z

    .line 149
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout_tr_showLoadingWhenOverScroll:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showLoadingWhenOverScroll:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    .line 156
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->addHeader()V

    .line 157
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->addFooter()V

    .line 159
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setFloatRefresh(Z)V

    .line 160
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->autoLoadMore:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setAutoLoadMore(Z)V

    .line 161
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableRefresh(Z)V

    .line 162
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 164
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    .line 165
    invoke-virtual {p0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setNestedScrollingEnabled(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 151
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method static synthetic access$000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vx:F

    return p0
.end method

.method static synthetic access$1000(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/IBottomView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/PullListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->pullListener:Lcom/lcodecore/tkrefreshlayout/PullListener;

    return-object p0
.end method

.method static synthetic access$1301(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vy:F

    return p0
.end method

.method static synthetic access$300(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    return-object p0
.end method

.method static synthetic access$400(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomHeight:F

    return p0
.end method

.method static synthetic access$700(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$900(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)Lcom/lcodecore/tkrefreshlayout/IHeaderView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    return-object p0
.end method

.method private addFooter()V
    .locals 5

    .line 200
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 201
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 202
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    .line 206
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->addView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    if-nez v0, :cond_1

    .line 209
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->FOOTER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :try_start_0
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->FOOTER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    .line 212
    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/IBottomView;

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcom/lcodecore/tkrefreshlayout/IBottomView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultFooter classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwinklingRefreshLayout:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcom/lcodecore/tkrefreshlayout/IBottomView;)V

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcom/lcodecore/tkrefreshlayout/IBottomView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private addHeader()V
    .locals 7

    .line 169
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 171
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 173
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 174
    sget v5, Lcom/lcodecore/tkrefreshlayout/R$id;->ex_header:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    .line 175
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    invoke-virtual {p0, v4, v5}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    .line 181
    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    .line 183
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    if-nez v0, :cond_1

    .line 184
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->HEADER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    :try_start_0
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->HEADER_CLASS_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 187
    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/IHeaderView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultHeader classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwinklingRefreshLayout:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/IHeaderView;)V

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderView(Lcom/lcodecore/tkrefreshlayout/IHeaderView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private detectGesture(Landroid/view/MotionEvent;Lcom/lcodecore/tkrefreshlayout/OnGestureListener;)V
    .locals 12

    .line 278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 281
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 291
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    if-ne v5, v8, :cond_3

    goto :goto_3

    .line 294
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 295
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v4, v6, -0x1

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    if-eqz v0, :cond_11

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    if-eq v0, v2, :cond_e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 p2, 0x3

    if-eq v0, p2, :cond_a

    const/4 p2, 0x5

    if-eq v0, p2, :cond_9

    if-eq v0, v1, :cond_6

    goto/16 :goto_9

    .line 307
    :cond_6
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusX:F

    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusX:F

    .line 308
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusY:F

    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusY:F

    .line 312
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaximumFlingVelocity:I

    int-to-float v0, v0

    invoke-virtual {p2, v5, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    .line 314
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 316
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    :goto_5
    if-ge v3, v6, :cond_13

    if-ne v3, p2, :cond_7

    goto :goto_6

    .line 320
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 321
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    mul-float v4, v4, v1

    .line 322
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    mul-float v2, v2, v0

    add-float/2addr v4, v2

    cmpg-float v2, v4, v7

    if-gez v2, :cond_8

    .line 326
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_9

    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 303
    :cond_9
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusX:F

    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusX:F

    .line 304
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusY:F

    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusY:F

    goto/16 :goto_9

    .line 381
    :cond_a
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mAlwaysInTapRegion:Z

    .line 382
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_13

    .line 383
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 384
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_9

    .line 342
    :cond_b
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusX:F

    sub-float/2addr v0, v9

    .line 343
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusY:F

    sub-float/2addr v1, v10

    .line 344
    iget-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mAlwaysInTapRegion:Z

    if-eqz v2, :cond_c

    .line 345
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusX:F

    sub-float v2, v9, v2

    float-to-int v2, v2

    .line 346
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusY:F

    sub-float v4, v10, v4

    float-to-int v4, v4

    mul-int v2, v2, v2

    mul-int v4, v4, v4

    add-int/2addr v2, v4

    .line 348
    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlopSquare:I

    if-le v2, v4, :cond_13

    .line 349
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {p2, v2, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 350
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusX:F

    .line 351
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusY:F

    .line 352
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mAlwaysInTapRegion:Z

    goto/16 :goto_9

    .line 354
    :cond_c
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_d

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13

    .line 355
    :cond_d
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {p2, v2, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 356
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusX:F

    .line 357
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusY:F

    goto :goto_9

    .line 361
    :cond_e
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 363
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vy:F

    .line 364
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vx:F

    .line 367
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vy:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMinimumFlingVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vx:F

    .line 368
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMinimumFlingVelocity:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    goto :goto_8

    .line 369
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vx:F

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->vy:F

    invoke-interface {p2, v0, p1, v1, v3}, Lcom/lcodecore/tkrefreshlayout/OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 373
    :goto_8
    invoke-interface {p2, p1, v2}, Lcom/lcodecore/tkrefreshlayout/OnGestureListener;->onUp(Landroid/view/MotionEvent;Z)V

    .line 375
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_13

    .line 376
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 377
    iput-object v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_9

    .line 332
    :cond_11
    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusX:F

    iput v9, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusX:F

    .line 333
    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastFocusY:F

    iput v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mDownFocusY:F

    .line 334
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_12

    .line 335
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 337
    :cond_12
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 338
    iput-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mAlwaysInTapRegion:Z

    .line 339
    invoke-interface {p2, p1}, Lcom/lcodecore/tkrefreshlayout/OnGestureListener;->onDown(Landroid/view/MotionEvent;)V

    :cond_13
    :goto_9
    return-void
.end method

.method private detectNestedScroll(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 427
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 428
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 429
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 432
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mNestedOffsets:[I

    aput v4, v5, v3

    aput v4, v5, v4

    .line 434
    :cond_0
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mNestedOffsets:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    goto/16 :goto_1

    .line 444
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mActivePointerId:I

    .line 445
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchX:I

    .line 446
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchY:I

    goto/16 :goto_1

    .line 449
    :cond_2
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_3

    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mActivePointerId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TwinklingRefreshLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 456
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    .line 457
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 459
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchX:I

    sub-int/2addr v1, v2

    .line 460
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchY:I

    sub-int/2addr v2, p1

    .line 462
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollConsumed:[I

    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollOffset:[I

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 463
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollConsumed:[I

    aget v5, v1, v4

    .line 464
    aget v1, v1, v3

    sub-int/2addr v2, v1

    .line 465
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollOffset:[I

    aget v5, v1, v4

    int-to-float v5, v5

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 467
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mNestedOffsets:[I

    aget v5, v1, v4

    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollOffset:[I

    aget v7, v6, v4

    add-int/2addr v5, v7

    aput v5, v1, v4

    .line 468
    aget v5, v1, v3

    aget v6, v6, v3

    add-int/2addr v5, v6

    aput v5, v1, v3

    .line 471
    :cond_4
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mIsBeingDragged:Z

    if-nez v1, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlop:I

    if-le v1, v5, :cond_7

    .line 472
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 474
    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 476
    :cond_5
    iput-boolean v3, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mIsBeingDragged:Z

    if-lez v2, :cond_6

    .line 478
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlop:I

    sub-int/2addr v2, v1

    goto :goto_0

    .line 480
    :cond_6
    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mTouchSlop:I

    add-int/2addr v2, v1

    .line 484
    :cond_7
    :goto_0
    iget-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_a

    .line 485
    iget-object v10, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollOffset:[I

    aget v1, v10, v3

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchY:I

    add-int/lit8 v9, v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    .line 489
    invoke-virtual/range {v5 .. v10}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 490
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchX:I

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollOffset:[I

    aget v2, v1, v4

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchX:I

    .line 491
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchY:I

    aget v2, v1, v3

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchY:I

    .line 492
    aget p1, v1, v4

    int-to-float p1, p1

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 493
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mNestedOffsets:[I

    aget v1, p1, v4

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mScrollOffset:[I

    aget v5, v2, v4

    add-int/2addr v1, v5

    aput v1, p1, v4

    .line 494
    aget v1, p1, v3

    aget v2, v2, v3

    add-int/2addr v1, v2

    aput v1, p1, v3

    goto :goto_1

    .line 500
    :cond_8
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->stopNestedScroll()V

    .line 501
    iput-boolean v4, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mIsBeingDragged:Z

    const/4 p1, -0x1

    .line 502
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mActivePointerId:I

    goto :goto_1

    .line 438
    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mActivePointerId:I

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchX:I

    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mLastTouchY:I

    .line 441
    invoke-virtual {p0, v5}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->startNestedScroll(I)Z

    .line 505
    :cond_a
    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3
.end method

.method private initGestureDetector()V
    .locals 1

    .line 240
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$1;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->listener:Lcom/lcodecore/tkrefreshlayout/OnGestureListener;

    return-void
.end method

.method public static setDefaultFooter(Ljava/lang/String;)V
    .locals 0

    .line 563
    sput-object p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->FOOTER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public static setDefaultHeader(Ljava/lang/String;)V
    .locals 0

    .line 558
    sput-object p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->HEADER_CLASS_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFixedExHeader(Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    .line 620
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 622
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 623
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->onAddExHead()V

    .line 625
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->setExHeadFixed()V

    :cond_1
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 537
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->listener:Lcom/lcodecore/tkrefreshlayout/OnGestureListener;

    invoke-direct {p0, p1, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->detectGesture(Landroid/view/MotionEvent;Lcom/lcodecore/tkrefreshlayout/OnGestureListener;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->detectNestedScroll(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public finishLoadmore()V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->finishLoadmore()V

    return-void
.end method

.method public finishRefreshing()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->finishRefreshing()V

    return-void
.end method

.method public getExtraHeaderView()Landroid/view/View;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mExtraHeadLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 226
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const/4 v0, 0x3

    .line 229
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildView:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->init()V

    .line 232
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    new-instance v2, Lcom/lcodecore/tkrefreshlayout/processor/RefreshProcessor;

    invoke-direct {v2, v1}, Lcom/lcodecore/tkrefreshlayout/processor/RefreshProcessor;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;)V

    invoke-direct {v0, v1, v2}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    .line 233
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->initGestureDetector()V

    return-void
.end method

.method public onFinishLoadMore()V
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onFinishLoadMore()V

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isLoadingMore()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    invoke-interface {v0}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->onFinish()V

    return-void
.end method

.method public onFinishRefresh()V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onFinishRefresh()V

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isEnableKeepIView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$3;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$3;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    invoke-interface {v0, v1}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->onFinish(Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 409
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onLoadMore(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxBottomHeight:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomHeight:F

    invoke-interface {v0, v1, v2}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->startAnim(FF)V

    .line 827
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onLoadMore(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    :cond_0
    return-void
.end method

.method public onLoadmoreCanceled()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onLoadmoreCanceled()V

    :cond_0
    return-void
.end method

.method public onPullDownReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, p2, v1, v2}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->onPullReleasing(FFF)V

    .line 806
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {v0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onPullDownReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public onPullUpReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxBottomHeight:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomHeight:F

    invoke-interface {v0, p2, v1, v2}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->onPullReleasing(FFF)V

    .line 814
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    if-nez v0, :cond_0

    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onPullUpReleasing(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public onPullingDown(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 791
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, p2, v1, v2}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->onPullingDown(FFF)V

    .line 792
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    if-nez v0, :cond_0

    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onPullingDown(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public onPullingUp(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, p2, v1, v2}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->onPullingUp(FFF)V

    .line 799
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    if-nez v0, :cond_0

    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onPullingUp(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;F)V

    :cond_1
    return-void
.end method

.method public onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    invoke-interface {v0, v1, v2}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->startAnim(FF)V

    .line 821
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onRefresh(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    :cond_0
    return-void
.end method

.method public onRefreshCanceled()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;->onRefreshCanceled()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->dealTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setAutoLoadMore(Z)V
    .locals 0

    .line 761
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->autoLoadMore:Z

    .line 762
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->autoLoadMore:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 763
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    return-void
.end method

.method public setBottomHeight(F)V
    .locals 1

    .line 680
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomHeight:F

    return-void
.end method

.method public setBottomView(Lcom/lcodecore/tkrefreshlayout/IBottomView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 642
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 643
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    :cond_0
    return-void
.end method

.method public setDecorator(Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 601
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    :cond_0
    return-void
.end method

.method public setEnableKeepIView(Z)V
    .locals 0

    .line 775
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableKeepIView:Z

    return-void
.end method

.method public setEnableLoadmore(Z)V
    .locals 1

    .line 687
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    .line 688
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mBottomView:Lcom/lcodecore/tkrefreshlayout/IBottomView;

    if-eqz p1, :cond_1

    .line 689
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableLoadmore:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 690
    :cond_0
    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/IBottomView;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableOverScroll(Z)V
    .locals 0

    .line 731
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableOverScroll:Z

    return-void
.end method

.method public setEnableRefresh(Z)V
    .locals 1

    .line 698
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    .line 699
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    if-eqz p1, :cond_1

    .line 700
    iget-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->enableRefresh:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 701
    :cond_0
    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->getView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFloatRefresh(Z)V
    .locals 0

    .line 648
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    .line 649
    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->floatRefresh:Z

    if-nez p1, :cond_0

    return-void

    .line 650
    :cond_0
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$2;

    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$2;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;)V

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHeaderHeight(F)V
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadHeight:F

    return-void
.end method

.method public setHeaderView(Lcom/lcodecore/tkrefreshlayout/IHeaderView;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 610
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadLayout:Landroid/widget/FrameLayout;

    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/IHeaderView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 611
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mHeadView:Lcom/lcodecore/tkrefreshlayout/IHeaderView;

    :cond_0
    return-void
.end method

.method public setMaxBottomHeight(F)V
    .locals 1

    .line 673
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxBottomHeight:F

    return-void
.end method

.method public setMaxHeadHeight(F)V
    .locals 1

    .line 662
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mMaxHeadHeight:F

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnRefreshListener(Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 785
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->refreshListener:Lcom/lcodecore/tkrefreshlayout/RefreshListenerAdapter;

    :cond_0
    return-void
.end method

.method public setOverScrollBottomShow(Z)V
    .locals 0

    .line 716
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollBottomShow:Z

    return-void
.end method

.method public setOverScrollHeight(F)V
    .locals 1

    .line 752
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    return-void
.end method

.method public setOverScrollRefreshShow(Z)V
    .locals 0

    .line 723
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollTopShow:Z

    .line 724
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollBottomShow:Z

    return-void
.end method

.method public setOverScrollTopShow(Z)V
    .locals 0

    .line 709
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollTopShow:Z

    return-void
.end method

.method public setPureScrollModeOn()V
    .locals 1

    const/4 v0, 0x1

    .line 738
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isPureScrollModeOn:Z

    const/4 v0, 0x0

    .line 740
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollTopShow:Z

    .line 741
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->isOverScrollBottomShow:Z

    .line 742
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxHeadHeight(F)V

    .line 743
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setHeaderHeight(F)V

    .line 744
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setMaxBottomHeight(F)V

    .line 745
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mOverScrollHeight:F

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomHeight(F)V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 594
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public showLoadingWhenOverScroll(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showLoadingWhenOverScroll:Z

    return-void
.end method

.method public showRefreshingWhenOverScroll(Z)V
    .locals 0

    .line 767
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->showRefreshingWhenOverScroll:Z

    return-void
.end method

.method public startLoadMore()V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->startLoadMore()V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startRefresh()V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->startRefresh()V

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
