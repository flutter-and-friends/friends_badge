.class public Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;
.super Landroid/view/ViewGroup;
.source "SwipeMenuLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "zxt"

.field private static isTouching:Z

.field private static mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;


# instance fields
.field private LogUtils:Landroid/util/Log;

.field private iosInterceptFlag:Z

.field private isExpand:Z

.field private isIos:Z

.field private isLeftSwipe:Z

.field private isSwipeEnable:Z

.field private isUnMoved:Z

.field private isUserSwiped:Z

.field private mCloseAnim:Landroid/animation/ValueAnimator;

.field private mContentView:Landroid/view/View;

.field private mExpandAnim:Landroid/animation/ValueAnimator;

.field private mFirstP:Landroid/graphics/PointF;

.field private mHeight:I

.field private mLastP:Landroid/graphics/PointF;

.field private mLimit:I

.field private mMaxVelocity:I

.field private mPointerId:I

.field private mRightMenuWidths:I

.field private mScaleTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, v0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUnMoved:Z

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isExpand:Z

    return p1
.end method

.method private acquireVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 565
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 10

    .line 258
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 261
    invoke-virtual {p0, v1}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 263
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 264
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 267
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 268
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 270
    invoke-virtual/range {v2 .. v7}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 271
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getViewCache()Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;
    .locals 1

    .line 164
    sget-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 168
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mScaleTouchSlop:I

    .line 169
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mMaxVelocity:I

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isSwipeEnable:Z

    .line 176
    iput-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isIos:Z

    .line 178
    iput-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/mcxtzhang/swipemenulib/R$styleable;->SwipeMenuLayout:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v2, p2, :cond_3

    .line 182
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    .line 184
    sget v1, Lcom/mcxtzhang/swipemenulib/R$styleable;->SwipeMenuLayout_swipeEnable:I

    if-ne p3, v1, :cond_0

    .line 185
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isSwipeEnable:Z

    goto :goto_1

    .line 186
    :cond_0
    sget v1, Lcom/mcxtzhang/swipemenulib/R$styleable;->SwipeMenuLayout_ios:I

    if-ne p3, v1, :cond_1

    .line 187
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isIos:Z

    goto :goto_1

    .line 188
    :cond_1
    sget v1, Lcom/mcxtzhang/swipemenulib/R$styleable;->SwipeMenuLayout_leftSwipe:I

    if-ne p3, v1, :cond_2

    .line 189
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 579
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 307
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isSwipeEnable:Z

    if-eqz v0, :cond_15

    .line 308
    invoke-direct {p0, p1}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->acquireVelocityTracker(Landroid/view/MotionEvent;)V

    .line 309
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    if-eq v1, v2, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_9

    goto/16 :goto_2

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->iosInterceptFlag:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 343
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0xa

    if-le v1, v4, :cond_3

    .line 344
    :cond_2
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 347
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 348
    iput-boolean v3, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUnMoved:Z

    :cond_4
    float-to-int v0, v0

    .line 355
    invoke-virtual {p0, v0, v3}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->scrollBy(II)V

    .line 357
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_6

    .line 358
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    if-gez v0, :cond_5

    .line 359
    invoke-virtual {p0, v3, v3}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->scrollTo(II)V

    .line 361
    :cond_5
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    if-le v0, v1, :cond_8

    .line 362
    invoke-virtual {p0, v1, v3}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->scrollTo(II)V

    goto :goto_0

    .line 365
    :cond_6
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    neg-int v2, v1

    if-ge v0, v2, :cond_7

    neg-int v0, v1

    .line 366
    invoke-virtual {p0, v0, v3}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->scrollTo(II)V

    .line 368
    :cond_7
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    if-lez v0, :cond_8

    .line 369
    invoke-virtual {p0, v3, v3}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->scrollTo(II)V

    .line 373
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_2

    .line 378
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v4, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v4, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a

    .line 379
    iput-boolean v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUserSwiped:Z

    .line 383
    :cond_a
    iget-boolean v1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->iosInterceptFlag:Z

    if-nez v1, :cond_10

    const/16 v1, 0x3e8

    .line 385
    iget v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mMaxVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 386
    iget v1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 387
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_e

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 389
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_b

    .line 391
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothExpand()V

    goto :goto_1

    .line 395
    :cond_b
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V

    goto :goto_1

    .line 398
    :cond_c
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_d

    .line 400
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V

    goto :goto_1

    .line 403
    :cond_d
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothExpand()V

    goto :goto_1

    .line 408
    :cond_e
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mLimit:I

    if-le v0, v1, :cond_f

    .line 410
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothExpand()V

    goto :goto_1

    .line 413
    :cond_f
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V

    .line 418
    :cond_10
    :goto_1
    invoke-direct {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->releaseVelocityTracker()V

    .line 420
    sput-boolean v3, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isTouching:Z

    goto :goto_2

    .line 312
    :cond_11
    iput-boolean v3, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUserSwiped:Z

    .line 313
    iput-boolean v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUnMoved:Z

    .line 314
    iput-boolean v3, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->iosInterceptFlag:Z

    .line 315
    sget-boolean v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isTouching:Z

    if-eqz v0, :cond_12

    return v3

    .line 318
    :cond_12
    sput-boolean v2, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isTouching:Z

    .line 320
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mLastP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 321
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 324
    sget-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_13

    .line 326
    invoke-virtual {v0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V

    .line 328
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isIos:Z

    iput-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->iosInterceptFlag:Z

    .line 331
    :cond_13
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 334
    :cond_14
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mPointerId:I

    .line 426
    :cond_15
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 244
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public isIos()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isIos:Z

    return v0
.end method

.method public isLeftSwipe()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    return v0
.end method

.method public isSwipeEnable()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isSwipeEnable:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 589
    sget-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    if-ne p0, v0, :cond_0

    .line 590
    invoke-virtual {v0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V

    const/4 v0, 0x0

    .line 591
    sput-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    .line 593
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 431
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mFirstP:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mScaleTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    return v1

    .line 443
    :cond_1
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    iget v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_5

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 449
    iget-boolean p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUnMoved:Z

    if-eqz p1, :cond_2

    .line 450
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V

    :cond_2
    return v1

    .line 456
    :cond_3
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v2, :cond_5

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 459
    iget-boolean p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUnMoved:Z

    if-eqz p1, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->smoothClose()V

    :cond_4
    return v1

    .line 468
    :cond_5
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isUserSwiped:Z

    if-eqz v0, :cond_6

    return v1

    .line 476
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->iosInterceptFlag:Z

    if-eqz v0, :cond_7

    return v1

    .line 481
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getChildCount()I

    move-result p1

    .line 281
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingLeft()I

    move-result p2

    const/4 p3, 0x0

    add-int/2addr p2, p3

    .line 282
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingLeft()I

    move-result p4

    add-int/2addr p4, p3

    :goto_0
    if-ge p3, p1, :cond_3

    .line 284
    invoke-virtual {p0, p3}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 285
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    if-nez p3, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p5, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 288
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    :goto_1
    add-int/2addr p2, p5

    goto :goto_2

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p5, p2, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 292
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    goto :goto_1

    .line 294
    :cond_1
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p4, v0

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p5, v0, v1, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 295
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    sub-int/2addr p4, p5

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 200
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p0, v0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->setClickable(Z)V

    const/4 v1, 0x0

    .line 204
    iput v1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    .line 206
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getChildCount()I

    move-result v2

    .line 209
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 213
    invoke-virtual {p0, v1}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 215
    invoke-virtual {v6, v0}, Landroid/view/View;->setClickable(Z)V

    .line 216
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 218
    invoke-virtual {p0, v6, p1, p2}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->measureChild(Landroid/view/View;II)V

    .line 220
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    iget v8, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mHeight:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mHeight:I

    if-eqz v3, :cond_1

    .line 222
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-lez v1, :cond_2

    .line 226
    iget v7, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v7, v6

    iput v7, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    goto :goto_2

    .line 228
    :cond_2
    iput-object v6, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mContentView:Landroid/view/View;

    .line 229
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p2, v4

    iget v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mHeight:I

    .line 234
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    invoke-virtual {p0, p2, v0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->setMeasuredDimension(II)V

    .line 235
    iget p2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    mul-int/lit8 p2, p2, 0x4

    div-int/lit8 p2, p2, 0xa

    iput p2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mLimit:I

    if-eqz v5, :cond_5

    .line 238
    invoke-direct {p0, v2, p1}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->forceUniformHeight(II)V

    :cond_5
    return-void
.end method

.method public performLongClick()Z
    .locals 2

    .line 599
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mScaleTouchSlop:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 602
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public quickClose()V
    .locals 2

    .line 623
    sget-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    if-ne p0, v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 628
    :cond_0
    sget-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->scrollTo(II)V

    const/4 v0, 0x0

    .line 629
    sput-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    :cond_1
    return-void
.end method

.method public setIos(Z)Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isIos:Z

    return-object p0
.end method

.method public setLeftSwipe(Z)Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    return-object p0
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isSwipeEnable:Z

    return-void
.end method

.method public smoothClose()V
    .locals 4

    const/4 v0, 0x0

    .line 528
    sput-object v0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    .line 531
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mContentView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 538
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mCloseAnim:Landroid/animation/ValueAnimator;

    .line 539
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mCloseAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$3;

    invoke-direct {v1, p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$3;-><init>(Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 545
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mCloseAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 546
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mCloseAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$4;

    invoke-direct {v1, p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$4;-><init>(Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mCloseAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public smoothExpand()V
    .locals 3

    .line 495
    sput-object p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mViewCache:Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;

    .line 498
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mContentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mCloseAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mCloseAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 505
    invoke-virtual {p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->getScrollX()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->isLeftSwipe:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mRightMenuWidths:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    .line 506
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$1;

    invoke-direct {v1, p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$1;-><init>(Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 512
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 513
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$2;

    invoke-direct {v1, p0}, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout$2;-><init>(Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
    iget-object v0, p0, Lcom/mcxtzhang/swipemenulib/SwipeMenuLayout;->mExpandAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
