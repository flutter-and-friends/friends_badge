.class public Lnet/kotlinandroid/customlibrary/view/SectorProgress;
.super Landroid/view/View;
.source "SectorProgress.java"


# instance fields
.field private angle:F

.field private duration:J

.field private indexFinalH:F

.field private indexSize:F

.field private isFirst:Z

.field private isRestart:Z

.field private lineWidth:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mShader:Landroid/graphics/Shader;

.field private maxValue:F

.field private minValue:F

.field private oldAngle:F

.field private percentColor:I

.field private rectF:Landroid/graphics/RectF;

.field private shaderColor:[I

.field private strokeWidth:F

.field private symbolSize:F

.field private timeValue:Landroid/animation/TimeInterpolator;

.field private underColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->rectF:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mRect:Landroid/graphics/Rect;

    const-wide/16 v0, 0x708

    .line 34
    iput-wide v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->duration:J

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isFirst:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->rectF:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mRect:Landroid/graphics/Rect;

    const-wide/16 v0, 0x708

    .line 34
    iput-wide v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->duration:J

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isFirst:Z

    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p2, p1}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->rectF:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mRect:Landroid/graphics/Rect;

    const-wide/16 v0, 0x708

    .line 34
    iput-wide v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->duration:J

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isFirst:Z

    .line 59
    invoke-direct {p0, p2, p3}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lnet/kotlinandroid/customlibrary/view/SectorProgress;F)F
    .locals 0

    .line 25
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    return p1
.end method

.method private dip2px(F)F
    .locals 1

    .line 166
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView_circleWidth:I

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {p0, v0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->dip2px(F)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->strokeWidth:F

    .line 66
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView_underColor:I

    const v0, -0x777778

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->underColor:I

    .line 67
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView_percentTextColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->percentColor:I

    .line 68
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView_percentTextSize:I

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-direct {p0, v0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->sp2px(F)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->indexSize:F

    .line 69
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView_isRestartProgress:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isRestart:Z

    .line 70
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView_lineWidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->lineWidth:F

    .line 71
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->ProgressView_symbolSize:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-direct {p0, v1}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->sp2px(F)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->symbolSize:F

    .line 72
    iget p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->lineWidth:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->lineWidth:F

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private sp2px(F)F
    .locals 1

    .line 161
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method private updateProgress(FF)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 132
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 133
    iget-wide v1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->duration:J

    long-to-float v1, v1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x43b40000    # 360.0f

    div-float/2addr p1, p2

    mul-float v1, v1, p1

    float-to-long p1, v1

    const-wide/16 v1, 0x258

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    move-wide p1, v1

    .line 134
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 135
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->timeValue:Landroid/animation/TimeInterpolator;

    if-nez p1, :cond_1

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const p2, 0x3f4ccccd

    invoke-direct {p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    :cond_1
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->timeValue:Landroid/animation/TimeInterpolator;

    .line 136
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->timeValue:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    new-instance p1, Lnet/kotlinandroid/customlibrary/view/SectorProgress$1;

    invoke-direct {p1, p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress$1;-><init>(Lnet/kotlinandroid/customlibrary/view/SectorProgress;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 144
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 2

    .line 185
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 79
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getWidth()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getHeight()I

    move-result v1

    .line 83
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->rectF:Landroid/graphics/RectF;

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->strokeWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    div-float v7, v4, v5

    int-to-float v0, v0

    div-float v8, v4, v5

    sub-float v8, v0, v8

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 85
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->strokeWidth:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->underColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v7, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->rectF:Landroid/graphics/RectF;

    iget-object v11, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 93
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 95
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->strokeWidth:F

    iget v6, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->lineWidth:F

    sub-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v7, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->rectF:Landroid/graphics/RectF;

    iget v9, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    iget-object v11, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x43870000    # 270.0f

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 97
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 100
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->indexSize:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->percentColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v2, v2, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v2, v4

    float-to-int v2, v2

    const/4 v4, 0x0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    const/16 v6, 0x64

    if-le v2, v6, :cond_1

    const/16 v2, 0x64

    .line 106
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    iget-object v6, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 108
    iget-object v7, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 109
    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 110
    iget-boolean v7, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isFirst:Z

    if-eqz v7, :cond_2

    .line 111
    iput v3, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->indexFinalH:F

    .line 112
    iput-boolean v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isFirst:Z

    :cond_2
    sub-float v3, v0, v6

    div-float/2addr v3, v5

    int-to-float v1, v1

    .line 114
    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->indexFinalH:F

    add-float/2addr v4, v1

    div-float/2addr v4, v5

    iget-object v7, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->symbolSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    add-float/2addr v0, v6

    div-float/2addr v0, v5

    .line 118
    iget v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->indexFinalH:F

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mPaint:Landroid/graphics/Paint;

    const-string v3, "%"

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 149
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42f00000    # 120.0f

    .line 155
    invoke-direct {p0, p1}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->dip2px(F)F

    move-result p1

    float-to-int p1, p1

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move p2, p1

    .line 157
    :goto_1
    invoke-virtual {p0, p1, p2}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    const-string p3, "#FFBF80"

    .line 124
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x0

    aput p3, p2, p4

    const-string p3, "#FF8080"

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x1

    aput p3, p2, p4

    .line 125
    iget-object p3, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->shaderColor:[I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 126
    :goto_0
    iget-object p3, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mMatrix:Landroid/graphics/Matrix;

    const/high16 p4, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getWidth()I

    move-result v0

    div-int/2addr v0, p1

    int-to-float v0, v0

    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getHeight()I

    move-result v1

    div-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p3, p4, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 127
    new-instance p3, Landroid/graphics/SweepGradient;

    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getWidth()I

    move-result p4

    div-int/2addr p4, p1

    int-to-float p4, p4

    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->getHeight()I

    move-result v0

    div-int/2addr v0, p1

    int-to-float p1, v0

    const/4 v0, 0x0

    invoke-direct {p3, p4, p1, p2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    iput-object p3, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mShader:Landroid/graphics/Shader;

    .line 128
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mShader:Landroid/graphics/Shader;

    iget-object p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setAnimateDuration(J)V
    .locals 0

    .line 190
    iput-wide p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->duration:J

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->timeValue:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setIsDrawRestart(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isRestart:Z

    return-void
.end method

.method public setMinMaxValue(FF)V
    .locals 1

    .line 217
    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->maxValue:F

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 219
    :goto_0
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->minValue:F

    return-void
.end method

.method public setPercent(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    .line 205
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    .line 206
    iget p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->oldAngle:F

    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    invoke-direct {p0, p1, v0}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->updateProgress(FF)V

    .line 207
    iget-boolean p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isRestart:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    :goto_0
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->oldAngle:F

    return-void
.end method

.method public setProgress(F)V
    .locals 4

    .line 172
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->maxValue:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    const/high16 v2, 0x43b40000    # 360.0f

    .line 173
    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->minValue:F

    sub-float/2addr p1, v3

    mul-float p1, p1, v2

    sub-float/2addr v0, v3

    div-float/2addr p1, v0

    .line 174
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    .line 175
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->oldAngle:F

    iget v2, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->angle:F

    invoke-direct {p0, v0, v2}, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->updateProgress(FF)V

    .line 176
    iget-boolean v0, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->isRestart:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->oldAngle:F

    return-void

    .line 178
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "setMinMaxValue(float minValue, float maxValue) method must be called firstly!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShaderColor([I)V
    .locals 0

    .line 200
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/SectorProgress;->shaderColor:[I

    return-void
.end method
