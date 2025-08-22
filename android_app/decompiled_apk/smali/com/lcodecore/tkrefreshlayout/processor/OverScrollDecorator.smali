.class public Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;
.super Lcom/lcodecore/tkrefreshlayout/processor/Decorator;
.source "OverScrollDecorator.java"


# static fields
.field private static final ALL_DELAY_TIMES:I = 0x3c

.field private static final MSG_CONTINUE_COMPUTE_SCROLL:I = 0x1

.field private static final MSG_START_COMPUTE_SCROLL:I = 0x0

.field private static final MSG_STOP_COMPUTE_SCROLL:I = 0x2

.field private static final OVER_SCROLL_MIN_VX:I = 0xbb8


# instance fields
.field private checkOverScroll:Z

.field private cur_delay_times:I

.field private mHandler:Landroid/os/Handler;

.field private mVelocityY:F

.field private preventBottomOverScroll:Z

.field private preventTopOverScroll:Z


# direct methods
.method public constructor <init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/processor/Decorator;-><init>(Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cur_delay_times:I

    .line 51
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->preventTopOverScroll:Z

    .line 52
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->preventBottomOverScroll:Z

    .line 53
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->checkOverScroll:Z

    .line 97
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;

    invoke-direct {p1, p0}, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator$1;-><init>(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cur_delay_times:I

    return p0
.end method

.method static synthetic access$002(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cur_delay_times:I

    return p1
.end method

.method static synthetic access$008(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)I
    .locals 2

    .line 15
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cur_delay_times:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cur_delay_times:I

    return v0
.end method

.method static synthetic access$100(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)F
    .locals 0

    .line 15
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mVelocityY:F

    return p0
.end method

.method static synthetic access$102(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;F)F
    .locals 0

    .line 15
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mVelocityY:F

    return p1
.end method

.method static synthetic access$200(Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;)Landroid/os/Handler;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dealTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->dealTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onFingerDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->onFingerDown(Landroid/view/MotionEvent;)V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTouchSlop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/utils/ScrollingUtil;->isViewToTop(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->preventTopOverScroll:Z

    .line 59
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTargetView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTouchSlop()I

    move-result v0

    invoke-static {p1, v0}, Lcom/lcodecore/tkrefreshlayout/utils/ScrollingUtil;->isViewToBottom(Landroid/view/View;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->preventBottomOverScroll:Z

    return-void
.end method

.method public onFingerFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->onFingerFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 81
    :cond_0
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->enableOverScroll()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 84
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTouchSlop()I

    move-result p2

    neg-int p2, p2

    if-ge p1, p2, :cond_2

    iget-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->preventBottomOverScroll:Z

    if-eqz p2, :cond_2

    return-void

    .line 85
    :cond_2
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cp:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$CoContext;->getTouchSlop()I

    move-result p2

    if-le p1, p2, :cond_3

    iget-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->preventTopOverScroll:Z

    if-eqz p1, :cond_3

    return-void

    .line 87
    :cond_3
    iput p4, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mVelocityY:F

    .line 88
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mVelocityY:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x453b8000    # 3000.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    .line 89
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->checkOverScroll:Z

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->mVelocityY:F

    const/16 p1, 0x3c

    .line 93
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->cur_delay_times:I

    :goto_0
    return-void
.end method

.method public onFingerScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V
    .locals 8

    .line 73
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->onFingerScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFFF)V

    :cond_0
    return-void
.end method

.method public onFingerUp(Landroid/view/MotionEvent;Z)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->decorator:Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;

    iget-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->checkOverScroll:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/processor/IDecorator;->onFingerUp(Landroid/view/MotionEvent;Z)V

    .line 68
    :cond_1
    iput-boolean v1, p0, Lcom/lcodecore/tkrefreshlayout/processor/OverScrollDecorator;->checkOverScroll:Z

    return-void
.end method
