.class public Lcn/forward/androids/views/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;
    }
.end annotation


# instance fields
.field private mBackground:I

.field private mBgWidth:I

.field private mColor:I

.field private mListener:Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;

.field private mMaxProgress:F

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mRect:Landroid/graphics/RectF;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1, v0, v1}, Lcn/forward/androids/views/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mProgress:F

    const/high16 p1, 0x42c80000    # 100.0f

    .line 22
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mMaxProgress:F

    const/16 p1, -0x15a2

    .line 23
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mColor:I

    const/16 p1, 0x14

    .line 24
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    .line 25
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mBgWidth:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mBackground:I

    .line 41
    invoke-direct {p0, p2}, Lcn/forward/androids/views/RoundProgressBar;->init(Landroid/util/AttributeSet;)V

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 44
    iget-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 46
    iget-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mRect:Landroid/graphics/RectF;

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcn/forward/androids/views/RoundProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/R$styleable;->RoundProgressBar:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 54
    sget v0, Lcn/forward/androids/R$styleable;->RoundProgressBar_rpb_width:I

    iget v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    .line 55
    sget v0, Lcn/forward/androids/R$styleable;->RoundProgressBar_rpb_color:I

    iget v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mColor:I

    .line 56
    sget v0, Lcn/forward/androids/R$styleable;->RoundProgressBar_rpb_background:I

    iget v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mBackground:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mBackground:I

    .line 57
    sget v0, Lcn/forward/androids/R$styleable;->RoundProgressBar_rpb_progress:I

    iget v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mProgress:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mProgress:F

    .line 58
    sget v0, Lcn/forward/androids/R$styleable;->RoundProgressBar_rpb_max_progress:I

    iget v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mMaxProgress:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mMaxProgress:F

    .line 59
    sget v0, Lcn/forward/androids/R$styleable;->RoundProgressBar_rpb_background_width:I

    iget v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mBgWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mBgWidth:I

    .line 60
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getBgCircleColor()I
    .locals 1

    .line 135
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mBackground:I

    return v0
.end method

.method public getBgCircleWidth()I
    .locals 1

    .line 139
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mBgWidth:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .line 143
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mColor:I

    return v0
.end method

.method public getCirlceWidth()I
    .locals 1

    .line 147
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    return v0
.end method

.method public getMaxProgress()F
    .locals 1

    .line 115
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mMaxProgress:F

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 72
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mProgress:F

    return v0
.end method

.method public getProgressBarListener()Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;
    .locals 1

    .line 111
    iget-object v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mListener:Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mProgress:F

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    .line 95
    iget-object v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/forward/androids/views/RoundProgressBar;->mBgWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/forward/androids/views/RoundProgressBar;->mBackground:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v4, p0, Lcn/forward/androids/views/RoundProgressBar;->mRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 100
    iget-object v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v1, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/forward/androids/views/RoundProgressBar;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v4, p0, Lcn/forward/androids/views/RoundProgressBar;->mRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    const/4 v7, 0x0

    iget-object v8, p0, Lcn/forward/androids/views/RoundProgressBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v5, -0x3d4c0000    # -90.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 83
    iget-object p3, p0, Lcn/forward/androids/views/RoundProgressBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/forward/androids/views/RoundProgressBar;->getPaddingLeft()I

    move-result p4

    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->left:F

    .line 84
    iget-object p3, p0, Lcn/forward/androids/views/RoundProgressBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/forward/androids/views/RoundProgressBar;->getPaddingTop()I

    move-result p4

    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    int-to-float p4, p4

    iput p4, p3, Landroid/graphics/RectF;->top:F

    .line 85
    iget-object p3, p0, Lcn/forward/androids/views/RoundProgressBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/forward/androids/views/RoundProgressBar;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    iget p4, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p1, p4

    int-to-float p1, p1

    iput p1, p3, Landroid/graphics/RectF;->right:F

    .line 86
    iget-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/forward/androids/views/RoundProgressBar;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public setBgCircleColor(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mBackground:I

    return-void
.end method

.method public setBgCircleWidth(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mBgWidth:I

    return-void
.end method

.method public setCircleColor(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mColor:I

    return-void
.end method

.method public setCircleWidth(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mWidth:I

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    .line 76
    :cond_0
    iget p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mMaxProgress:F

    :goto_0
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mMaxProgress:F

    .line 77
    invoke-virtual {p0}, Lcn/forward/androids/views/RoundProgressBar;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    .line 64
    :cond_0
    iput p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mProgress:F

    .line 65
    iget-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mListener:Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;

    if-eqz p1, :cond_1

    .line 66
    iget v0, p0, Lcn/forward/androids/views/RoundProgressBar;->mProgress:F

    invoke-interface {p1, v0}, Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;->onProgressChanged(F)V

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcn/forward/androids/views/RoundProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressBarListener(Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/forward/androids/views/RoundProgressBar;->mListener:Lcn/forward/androids/views/RoundProgressBar$RoundProgressBarListener;

    return-void
.end method
