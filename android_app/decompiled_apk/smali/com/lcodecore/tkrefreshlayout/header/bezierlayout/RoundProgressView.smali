.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;
.super Landroid/view/View;
.source "RoundProgressView.java"


# instance fields
.field private cir_x:I

.field private endAngle:I

.field private mPantR:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Paint;

.field private num:I

.field private outCir_value:I

.field private oval:Landroid/graphics/RectF;

.field private oval2:Landroid/graphics/RectF;

.field private r:F

.field private stratAngle:I

.field va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42200000    # 40.0f

    .line 19
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    const/4 p1, 0x7

    .line 20
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->num:I

    const/16 p1, 0x10e

    .line 21
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->stratAngle:I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->endAngle:I

    const/16 p1, 0xf

    .line 23
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->outCir_value:I

    .line 41
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->endAngle:I

    return p1
.end method

.method private init()V
    .locals 4

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    const/16 v2, 0x72

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    .line 56
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x2d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 57
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$1;

    invoke-direct {v2, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView$1;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 65
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x168
    .end array-data
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 97
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 98
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->num:I

    div-int/2addr v0, v1

    .line 74
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    const/high16 v4, 0x41700000    # 15.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 82
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval:Landroid/graphics/RectF;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    add-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    iget-object v7, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->stratAngle:I

    int-to-float v8, v0

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->endAngle:I

    int-to-float v9, v0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 87
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval2:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval2:Landroid/graphics/RectF;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval2:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->outCir_value:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->outCir_value:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->outCir_value:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->r:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->outCir_value:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 91
    iget-object v6, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->oval2:Landroid/graphics/RectF;

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->stratAngle:I

    int-to-float v7, v0

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->endAngle:I

    int-to-float v8, v0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->mPantR:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 92
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setCir_x(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->cir_x:I

    return-void
.end method

.method public startAnim()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundProgressView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
