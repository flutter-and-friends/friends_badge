.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;
.super Landroid/widget/FrameLayout;
.source "BezierLayout.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IHeaderView;


# instance fields
.field private circleAnimator:Landroid/animation/ValueAnimator;

.field headView:Landroid/view/View;

.field r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

.field r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

.field rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

.field private waveAnimator:Landroid/animation/ValueAnimator;

.field waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/lcodecore/tkrefreshlayout/R$layout;->view_bezier:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->headView:Landroid/view/View;

    .line 51
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->headView:Landroid/view/View;

    sget v0, Lcom/lcodecore/tkrefreshlayout/R$id;->draweeView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    .line 52
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->headView:Landroid/view/View;

    sget v0, Lcom/lcodecore/tkrefreshlayout/R$id;->ripple:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    .line 53
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->headView:Landroid/view/View;

    sget v0, Lcom/lcodecore/tkrefreshlayout/R$id;->round1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    .line 54
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->headView:Landroid/view/View;

    sget v0, Lcom/lcodecore/tkrefreshlayout/R$id;->round2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    .line 55
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->headView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public limitValue(FF)F
    .locals 2

    .line 77
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    cmpg-float v0, p2, p1

    if-gez v0, :cond_1

    move p1, p2

    :cond_1
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 89
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onFinish(Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->stopAnim()V

    .line 176
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 177
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 178
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;

    invoke-direct {v1, p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$4;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setRippleEndListener(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;)V

    .line 184
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->startReveal()V

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->limitValue(FF)F

    move-result v2

    mul-float p3, p3, v2

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    .line 118
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    sub-float v0, p1, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 119
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->invalidate()V

    .line 121
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {p0, v1, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->limitValue(FF)F

    move-result p1

    const/high16 p3, 0x41f00000    # 30.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 122
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->invalidate()V

    return-void
.end method

.method public onPullingDown(FFF)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setVisibility(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->limitValue(FF)F

    move-result v3

    mul-float p3, p3, v3

    float-to-int p3, p3

    invoke-virtual {v0, p3}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    .line 102
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/4 v0, 0x0

    sub-float v3, p1, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p3, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 103
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->invalidate()V

    .line 106
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-virtual {p0, v2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->limitValue(FF)F

    move-result p1

    mul-float p1, p1, p3

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setCir_x(I)V

    .line 107
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setVisibility(I)V

    .line 108
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->invalidate()V

    .line 110
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const p2, 0x3dcccccd

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 112
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public reset()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveHeight(I)V

    .line 191
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r1:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->stopAnim()V

    .line 194
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->setScaleX(F)V

    .line 195
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->setScaleY(F)V

    .line 196
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->r2:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->stopAnim()V

    .line 198
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setVisibility(I)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->rippleView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setRippleColor(I)V

    return-void
.end method

.method public setWaveColor(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setWaveColor(I)V

    return-void
.end method

.method public startAnim(FF)V
    .locals 3

    .line 127
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->setHeadHeight(I)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 128
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveView:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getWaveHeight()I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    const/4 p2, 0x1

    aput v0, p1, p2

    const/4 p2, 0x2

    const/16 v1, -0x12c

    aput v1, p1, p2

    const/4 v1, 0x3

    aput v0, p1, v1

    const/4 v1, 0x4

    const/16 v2, -0x64

    aput v2, p1, v1

    const/4 v1, 0x5

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    .line 129
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$1;

    invoke-direct {v0, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$1;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 137
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x320

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 139
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->waveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    new-array p1, p2, [F

    .line 141
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    .line 142
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;

    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$2;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$3;

    invoke-direct {p2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout$3;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 168
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 170
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/BezierLayout;->circleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
