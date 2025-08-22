.class public Lcn/highlight/core/view/BallPulseViews;
.super Landroid/view/View;
.source "BallPulseViews.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IBottomView;


# static fields
.field public static final DEFAULT_SIZE:I = 0x28


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

    .line 41
    invoke-direct {p0, p1, v0}, Lcn/highlight/core/view/BallPulseViews;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcn/highlight/core/view/BallPulseViews;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p2, p2, [F

    .line 34
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcn/highlight/core/view/BallPulseViews;->scaleFloats:[F

    .line 37
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/highlight/core/view/BallPulseViews;->mUpdateListeners:Ljava/util/Map;

    const p2, -0x111112

    .line 67
    iput p2, p0, Lcn/highlight/core/view/BallPulseViews;->normalColor:I

    const p2, -0x18a6ba

    .line 68
    iput p2, p0, Lcn/highlight/core/view/BallPulseViews;->animatingColor:I

    const/high16 p2, 0x42200000    # 40.0f

    .line 51
    invoke-static {p1, p2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 52
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p3, p2, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 53
    invoke-virtual {p0, p3}, Lcn/highlight/core/view/BallPulseViews;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 55
    invoke-static {p1, p2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/highlight/core/view/BallPulseViews;->circleSpacing:F

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/core/view/BallPulseViews;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object p1, p0, Lcn/highlight/core/view/BallPulseViews;->mPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object p1, p0, Lcn/highlight/core/view/BallPulseViews;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object p1, p0, Lcn/highlight/core/view/BallPulseViews;->mPaint:Landroid/graphics/Paint;

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

.method static synthetic access$000(Lcn/highlight/core/view/BallPulseViews;)[F
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/highlight/core/view/BallPulseViews;->scaleFloats:[F

    return-object p0
.end method

.method private createAnimators()V
    .locals 6

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 140
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-array v3, v0, [F

    .line 144
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x2ee

    .line 146
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    .line 147
    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 148
    aget v4, v1, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 150
    iget-object v4, p0, Lcn/highlight/core/view/BallPulseViews;->mUpdateListeners:Ljava/util/Map;

    new-instance v5, Lcn/highlight/core/view/BallPulseViews$1;

    invoke-direct {v5, p0, v2}, Lcn/highlight/core/view/BallPulseViews$1;-><init>(Lcn/highlight/core/view/BallPulseViews;I)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v4, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

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

    .line 132
    iget-object v0, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 133
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

    .line 95
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 96
    iget-object v0, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

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

    .line 80
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/highlight/core/view/BallPulseViews;->circleSpacing:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 81
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v2, v2, v0

    iget v3, p0, Lcn/highlight/core/view/BallPulseViews;->circleSpacing:F

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 82
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v5, v4

    mul-float v6, v2, v5

    add-float/2addr v6, v1

    .line 85
    iget v7, p0, Lcn/highlight/core/view/BallPulseViews;->circleSpacing:F

    mul-float v7, v7, v5

    add-float/2addr v6, v7

    .line 86
    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 87
    iget-object v5, p0, Lcn/highlight/core/view/BallPulseViews;->scaleFloats:[F

    aget v6, v5, v4

    aget v5, v5, v4

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 88
    iget-object v5, p0, Lcn/highlight/core/view/BallPulseViews;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v0, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->stopAnim()V

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 0

    .line 178
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->stopAnim()V

    return-void
.end method

.method public onPullingUp(FFF)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->stopAnim()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->stopAnim()V

    return-void
.end method

.method public setAnimatingColor(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcn/highlight/core/view/BallPulseViews;->animatingColor:I

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/highlight/core/view/BallPulseViews;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcn/highlight/core/view/BallPulseViews;->normalColor:I

    return-void
.end method

.method public startAnim()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/highlight/core/view/BallPulseViews;->createAnimators()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 104
    :cond_1
    invoke-direct {p0}, Lcn/highlight/core/view/BallPulseViews;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 107
    iget-object v1, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 110
    iget-object v2, p0, Lcn/highlight/core/view/BallPulseViews;->mUpdateListeners:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    :cond_3
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_4
    iget v0, p0, Lcn/highlight/core/view/BallPulseViews;->animatingColor:I

    invoke-virtual {p0, v0}, Lcn/highlight/core/view/BallPulseViews;->setIndicatorColor(I)V

    return-void
.end method

.method public startAnim(FF)V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcn/highlight/core/view/BallPulseViews;->startAnim()V

    return-void
.end method

.method public stopAnim()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/highlight/core/view/BallPulseViews;->mAnimators:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 121
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

    .line 122
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 124
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcn/highlight/core/view/BallPulseViews;->normalColor:I

    invoke-virtual {p0, v0}, Lcn/highlight/core/view/BallPulseViews;->setIndicatorColor(I)V

    return-void
.end method
