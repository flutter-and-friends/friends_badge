.class public Lcn/forward/androids/views/DragListView;
.super Landroid/widget/ListView;
.source "DragListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/views/DragListView$SimpleAnimationDragItemListener;,
        Lcn/forward/androids/views/DragListView$DragItemListener;
    }
.end annotation


# instance fields
.field private mAutoScrollDownY:I

.field private mAutoScrollUpY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrentPosition:I

.field private mDownX:I

.field private mDownY:I

.field private mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

.field private mDragViewOffset:I

.field private mHasStart:Z

.field private mItemView:Landroid/view/View;

.field private mLastPosition:I

.field private mLastScrollTime:J

.field private mLastX:I

.field private mLastY:I

.field private mMoveY:F

.field private mScrollRunnable:Ljava/lang/Runnable;

.field private mScrolling:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcn/forward/androids/views/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/DragListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcn/forward/androids/views/DragListView;->mHasStart:Z

    .line 44
    iput-boolean p1, p0, Lcn/forward/androids/views/DragListView;->mScrolling:Z

    .line 57
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/views/DragListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mTouchSlop:I

    .line 62
    new-instance p1, Lcn/forward/androids/views/DragListView$1;

    invoke-direct {p1, p0}, Lcn/forward/androids/views/DragListView$1;-><init>(Lcn/forward/androids/views/DragListView;)V

    iput-object p1, p0, Lcn/forward/androids/views/DragListView;->mScrollRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcn/forward/androids/views/DragListView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcn/forward/androids/views/DragListView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcn/forward/androids/views/DragListView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lcn/forward/androids/views/DragListView;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcn/forward/androids/views/DragListView;->mLastScrollTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcn/forward/androids/views/DragListView;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/forward/androids/views/DragListView;->mMoveY:F

    return p0
.end method

.method private checkExchange(I)V
    .locals 4

    .line 254
    iget p1, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    iget v0, p0, Lcn/forward/androids/views/DragListView;->mLastPosition:I

    if-eq p1, v0, :cond_0

    .line 255
    iget-object v1, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    if-eqz v1, :cond_0

    .line 256
    invoke-interface {v1, v0, p1}, Lcn/forward/androids/views/DragListView$DragItemListener;->canExchange(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    .line 258
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcn/forward/androids/views/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    .line 260
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    iget v1, p0, Lcn/forward/androids/views/DragListView;->mLastPosition:I

    iget v2, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    iget-object v3, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    invoke-interface {v0, v1, v2, p1, v3}, Lcn/forward/androids/views/DragListView$DragItemListener;->onExchange(IILandroid/view/View;Landroid/view/View;)V

    .line 261
    iget p1, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mLastPosition:I

    :cond_0
    return-void
.end method


# virtual methods
.method public checkScroller(I)V
    .locals 5

    .line 208
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mAutoScrollUpY:I

    const/high16 v1, 0x40c00000    # 6.0f

    if-ge p1, v0, :cond_0

    .line 209
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mDownY:I

    iget v2, p0, Lcn/forward/androids/views/DragListView;->mTouchSlop:I

    sub-int/2addr v0, v2

    if-gt p1, v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcn/forward/androids/views/DragListView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    goto :goto_0

    .line 212
    :cond_0
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mAutoScrollDownY:I

    if-le p1, v0, :cond_1

    .line 213
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mDownY:I

    iget v2, p0, Lcn/forward/androids/views/DragListView;->mTouchSlop:I

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcn/forward/androids/views/DragListView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    neg-int p1, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 219
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcn/forward/androids/views/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 222
    iget v1, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v1, v0}, Lcn/forward/androids/views/DragListView;->setSelectionFromTop(II)V

    .line 223
    iget-boolean p1, p0, Lcn/forward/androids/views/DragListView;->mScrolling:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcn/forward/androids/views/DragListView;->mScrolling:Z

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/forward/androids/views/DragListView;->mLastScrollTime:J

    sub-long/2addr v0, v2

    .line 226
    iget-object p1, p0, Lcn/forward/androids/views/DragListView;->mScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xf

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    sub-long/2addr v2, v0

    :goto_1
    invoke-virtual {p0, p1, v2, v3}, Lcn/forward/androids/views/DragListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 153
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 155
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcn/forward/androids/views/DragListView;->mLastY:I

    iget v3, p0, Lcn/forward/androids/views/DragListView;->mDragViewOffset:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto/16 :goto_2

    .line 94
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 95
    iget-boolean v0, p0, Lcn/forward/androids/views/DragListView;->mHasStart:Z

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    iget v3, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    iget-object v4, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    invoke-interface {v0, v3, v4}, Lcn/forward/androids/views/DragListView$DragItemListener;->startDrag(ILandroid/view/View;)V

    .line 97
    iput-boolean v2, p0, Lcn/forward/androids/views/DragListView;->mHasStart:Z

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    if-gez v0, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 103
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    int-to-float v0, v1

    .line 105
    iput v0, p0, Lcn/forward/androids/views/DragListView;->mMoveY:F

    .line 106
    invoke-virtual {p0, v1}, Lcn/forward/androids/views/DragListView;->onMove(I)V

    .line 107
    iput v1, p0, Lcn/forward/androids/views/DragListView;->mLastY:I

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mLastX:I

    .line 109
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->invalidate()V

    return v2

    .line 85
    :cond_4
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/forward/androids/views/DragListView;->mLastX:I

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mLastY:I

    .line 88
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->stopDrag()V

    .line 89
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->invalidate()V

    return v2

    .line 114
    :cond_5
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->stopDrag()V

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/forward/androids/views/DragListView;->mDownX:I

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/forward/androids/views/DragListView;->mDownY:I

    .line 117
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mDownX:I

    iget v3, p0, Lcn/forward/androids/views/DragListView;->mDownY:I

    invoke-virtual {p0, v0, v3}, Lcn/forward/androids/views/DragListView;->pointToPosition(II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 119
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 121
    :cond_6
    iput v0, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    iput v0, p0, Lcn/forward/androids/views/DragListView;->mLastPosition:I

    .line 124
    iget v0, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcn/forward/androids/views/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 126
    iget-object v3, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    if-eqz v3, :cond_8

    iget v4, p0, Lcn/forward/androids/views/DragListView;->mDownX:I

    iget v5, p0, Lcn/forward/androids/views/DragListView;->mDownY:I

    invoke-interface {v3, v0, v4, v5}, Lcn/forward/androids/views/DragListView$DragItemListener;->canDrag(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 129
    iget p1, p0, Lcn/forward/androids/views/DragListView;->mDownY:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr p1, v3

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mDragViewOffset:I

    .line 130
    iget-object p1, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    invoke-interface {p1, v0}, Lcn/forward/androids/views/DragListView$DragItemListener;->beforeDrawingCache(Landroid/view/View;)V

    .line 131
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 132
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 134
    iget-object p1, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    iget-object v3, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, v3}, Lcn/forward/androids/views/DragListView$DragItemListener;->afterDrawingCache(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_1

    .line 135
    :cond_7
    iget-object p1, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iput-object p1, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    .line 136
    iput-boolean v1, p0, Lcn/forward/androids/views/DragListView;->mHasStart:Z

    .line 137
    iget p1, p0, Lcn/forward/androids/views/DragListView;->mDownY:I

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mLastY:I

    .line 138
    iget p1, p0, Lcn/forward/androids/views/DragListView;->mDownX:I

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mLastX:I

    .line 140
    iput-object v0, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    .line 141
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->invalidate()V

    return v2

    .line 146
    :cond_8
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dp2px(Landroid/content/Context;F)I
    .locals 0

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public getDragListener()Lcn/forward/androids/views/DragListView$DragItemListener;
    .locals 1

    .line 273
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    return-object v0
.end method

.method public onMove(I)V
    .locals 8

    .line 173
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcn/forward/androids/views/DragListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcn/forward/androids/views/DragListView;->checkScroller(I)V

    return-void

    .line 178
    :cond_0
    iget v2, p0, Lcn/forward/androids/views/DragListView;->mLastPosition:I

    const/4 v3, 0x1

    if-le v2, v0, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 181
    :goto_0
    iget v4, p0, Lcn/forward/androids/views/DragListView;->mLastPosition:I

    :goto_1
    if-lez v2, :cond_2

    if-gt v4, v0, :cond_8

    goto :goto_2

    :cond_2
    if-lt v4, v0, :cond_8

    .line 182
    :goto_2
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v4, v5

    .line 183
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    if-gez v5, :cond_3

    goto :goto_4

    .line 186
    :cond_3
    invoke-virtual {p0, v5}, Lcn/forward/androids/views/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    const/4 v6, 0x0

    .line 187
    invoke-virtual {p0, v6, v5}, Lcn/forward/androids/views/DragListView;->pointToPosition(II)I

    move-result v7

    if-eq v7, v1, :cond_4

    .line 189
    iput v7, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    .line 191
    :cond_4
    invoke-virtual {p0, v6}, Lcn/forward/androids/views/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 192
    iput v6, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    goto :goto_3

    .line 193
    :cond_5
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcn/forward/androids/views/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 194
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    .line 196
    :cond_6
    :goto_3
    invoke-direct {p0, v5}, Lcn/forward/androids/views/DragListView;->checkExchange(I)V

    :cond_7
    :goto_4
    add-int/2addr v4, v2

    goto :goto_1

    .line 198
    :cond_8
    invoke-virtual {p0, p1}, Lcn/forward/androids/views/DragListView;->checkScroller(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 164
    invoke-virtual {p0}, Lcn/forward/androids/views/DragListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p3, 0x42a00000    # 80.0f

    invoke-virtual {p0, p1, p3}, Lcn/forward/androids/views/DragListView;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/forward/androids/views/DragListView;->mAutoScrollUpY:I

    .line 165
    iget p1, p0, Lcn/forward/androids/views/DragListView;->mAutoScrollUpY:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcn/forward/androids/views/DragListView;->mAutoScrollDownY:I

    return-void
.end method

.method public setDragItemListener(Lcn/forward/androids/views/DragListView$DragItemListener;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    return-void
.end method

.method public stopDrag()V
    .locals 8

    .line 236
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 238
    iput-object v1, p0, Lcn/forward/androids/views/DragListView;->mBitmap:Landroid/graphics/Bitmap;

    .line 239
    iget-object v2, p0, Lcn/forward/androids/views/DragListView;->mDragItemListener:Lcn/forward/androids/views/DragListView$DragItemListener;

    if-eqz v2, :cond_0

    .line 240
    iget v3, p0, Lcn/forward/androids/views/DragListView;->mCurrentPosition:I

    iget-object v4, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    iget v7, p0, Lcn/forward/androids/views/DragListView;->mLastY:I

    iget v0, p0, Lcn/forward/androids/views/DragListView;->mDragViewOffset:I

    sub-int v5, v7, v0

    iget v6, p0, Lcn/forward/androids/views/DragListView;->mLastX:I

    invoke-interface/range {v2 .. v7}, Lcn/forward/androids/views/DragListView$DragItemListener;->onRelease(ILandroid/view/View;III)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 244
    iput-object v1, p0, Lcn/forward/androids/views/DragListView;->mItemView:Landroid/view/View;

    :cond_1
    const/4 v0, 0x0

    .line 246
    iput-boolean v0, p0, Lcn/forward/androids/views/DragListView;->mScrolling:Z

    .line 247
    iget-object v0, p0, Lcn/forward/androids/views/DragListView;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/forward/androids/views/DragListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
