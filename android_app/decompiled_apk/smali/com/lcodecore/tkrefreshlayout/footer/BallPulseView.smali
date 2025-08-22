.class public Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;
.super Landroid/view/View;
.source "BallPulseView.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IBottomView;


# static fields
.field public static final DEFAULT_SIZE:I = 0x32


# instance fields
.field private animatingColor:I

.field private circleSpacing:F

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mUpdateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/animation/ValueAnimator;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private normalColor:I

.field private scaleFloats:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 30
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->scaleFloats:[F

    .line 33
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mUpdateListeners:Ljava/util/Map;

    const p2, -0x111112

    .line 63
    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->normalColor:I

    const p2, -0x18a6ba

    .line 64
    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->animatingColor:I

    const/high16 p2, 0x42480000    # 50.0f

    .line 47
    invoke-static {p1, p2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 48
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 49
    invoke-virtual {p0, p3}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 51
    invoke-static {p1, p2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->circleSpacing:F

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    .line 54
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;)[F
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->scaleFloats:[F

    return-object p0
.end method

.method private createAnimators()V
    .locals 6

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 136
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-array v3, v0, [F

    .line 140
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x2ee

    .line 142
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    .line 143
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 144
    aget v4, v1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 146
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mUpdateListeners:Ljava/util/Map;

    new-instance v5, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$1;

    invoke-direct {v5, p0, v2}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView$1;-><init>(Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isStarted()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 129
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 76
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->circleSpacing:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 77
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v2, v2, v0

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->circleSpacing:F

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 78
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v4

    mul-float v6, v2, v5

    add-float/2addr v6, v1

    .line 81
    iget v7, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->circleSpacing:F

    mul-float v7, v7, v5

    add-float/2addr v6, v7

    .line 82
    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->scaleFloats:[F

    aget v6, v5, v4

    aget v5, v5, v4

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 84
    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->stopAnim()V

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->stopAnim()V

    return-void
.end method

.method public onPullingUp(FFF)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->stopAnim()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->stopAnim()V

    return-void
.end method

.method public setAnimatingColor(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->animatingColor:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->normalColor:I

    return-void
.end method

.method public startAnim()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->createAnimators()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 103
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 106
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mUpdateListeners:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v2, :cond_3

    .line 108
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 110
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_4
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->animatingColor:I

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setIndicatorColor(I)V

    return-void
.end method

.method public startAnim(FF)V
    .locals 0

    .line 169
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->startAnim()V

    return-void
.end method

.method public stopAnim()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 120
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 124
    :cond_1
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->normalColor:I

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/footer/BallPulseView;->setIndicatorColor(I)V

    return-void
.end method
