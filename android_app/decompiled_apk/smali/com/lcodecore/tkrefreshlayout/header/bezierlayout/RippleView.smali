.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;
.super Landroid/view/View;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;

.field private mPaint:Landroid/graphics/Paint;

.field private r:I

.field va:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->r:I

    return p1
.end method

.method static synthetic access$100(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->listener:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public getR()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->r:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 94
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 88
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->r:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setR(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->r:I

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setRippleEndListener(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->listener:Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$OnRippleEndListener;

    return-void
.end method

.method public startReveal()V
    .locals 7

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->getHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v0, v2, v0

    const/4 v0, 0x1

    .line 60
    div-int/lit8 v3, v1, 0x2

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    .line 61
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$1;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$1;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 69
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$2;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView$2;-><init>(Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RippleView;->va:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
