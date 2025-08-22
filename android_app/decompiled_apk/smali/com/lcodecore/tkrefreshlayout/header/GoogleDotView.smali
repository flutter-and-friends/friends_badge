.class public Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;
.super Landroid/view/View;
.source "GoogleDotView.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IHeaderView;


# instance fields
.field animating:Z

.field animator1:Landroid/animation/ValueAnimator;

.field animator2:Landroid/animation/ValueAnimator;

.field private cir_x:I

.field fraction1:F

.field fraction2:F

.field private mPath:Landroid/graphics/Paint;

.field private num:I

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    .line 24
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->num:I

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animating:Z

    .line 46
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->init()V

    return-void
.end method

.method private init()V
    .locals 6

    .line 52
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    const/16 v1, 0x72

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 58
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    .line 59
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 60
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$1;

    invoke-direct {v4, p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$1;-><init>(Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 68
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 69
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-array v0, v0, [F

    .line 71
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    .line 72
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 73
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 74
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$2;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView$2;-><init>(Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 80
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 81
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a
        0x3f800000    # 1.0f
        0x3f4ccccd
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd
        0x3f800000    # 1.0f
        0x3f99999a
    .end array-data
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 172
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->num:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    const/4 v1, 0x0

    .line 88
    :goto_0
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->num:I

    if-ge v1, v2, :cond_b

    .line 89
    iget-boolean v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animating:Z

    const/16 v3, 0xff

    const/4 v4, 0x4

    const/16 v5, 0x91

    const/16 v6, 0x69

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v9, :cond_2

    if-eq v1, v8, :cond_1

    if-eq v1, v4, :cond_0

    goto/16 :goto_1

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->fraction2:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Orange:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->fraction2:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->fraction1:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->fraction2:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 97
    :cond_4
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->fraction2:F

    mul-float v4, v4, v5

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_5
    if-eqz v1, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v9, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v4, :cond_6

    goto/16 :goto_1

    .line 155
    :cond_6
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 156
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 150
    :cond_7
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Orange:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 145
    :cond_8
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 140
    :cond_9
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 141
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Green:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 135
    :cond_a
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/lcodecore/tkrefreshlayout/R$color;->Yellow:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v9

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->getMeasuredHeight()I

    move-result v3

    div-int/2addr v3, v9

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public onFinish(Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
    .locals 0

    .line 217
    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;->onAnimEnd()V

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 0

    const/high16 p2, 0x40000000    # 2.0f

    div-float p2, p1, p2

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    .line 195
    invoke-virtual {p0, p2}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->setScaleX(F)V

    .line 196
    invoke-virtual {p0, p2}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->setScaleY(F)V

    cmpg-float p1, p1, p3

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animating:Z

    .line 199
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 201
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->invalidate()V

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public onPullingDown(FFF)V
    .locals 0

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    .line 183
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->setScaleX(F)V

    .line 184
    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->setScaleY(F)V

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animating:Z

    .line 186
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 188
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->invalidate()V

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animating:Z

    .line 223
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->invalidate()V

    return-void
.end method

.method public setCir_x(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->cir_x:I

    return-void
.end method

.method public startAnim(FF)V
    .locals 0

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animating:Z

    .line 211
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 212
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/GoogleDotView;->animator2:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
