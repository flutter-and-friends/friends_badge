.class public Lnet/kotlinandroid/customlibrary/view/ArcProgress;
.super Landroid/widget/ProgressBar;
.source "ArcProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;
    }
.end annotation


# static fields
.field public static final STYLE_ARC:I = 0x0

.field public static final STYLE_TICK:I = 0x1


# instance fields
.field private final DEFAULT_DENSITY:I

.field private final DEFAULT_LINEHEIGHT:I

.field private final DEFAULT_OFFSETDEGREE:I

.field private final DEFAULT_mProgressColor:I

.field private final DEFAULT_mRadius:I

.field private final DEFAULT_mTickWidth:I

.field private final DEFAULT_mUnmProgressColor:I

.field private final MAX_DENSITY:I

.field private final MIN_DENSITY:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcRectf:Landroid/graphics/RectF;

.field private mArcbgColor:I

.field private mBgShow:Z

.field private mBoardWidth:I

.field private mCenterBitmap:Landroid/graphics/Bitmap;

.field private mCenterCanvas:Landroid/graphics/Canvas;

.field private mDegree:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOnCenter:Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;

.field private mProgressColor:I

.field private mRadius:F

.field private mStylePogress:I

.field private mTickDensity:I

.field private mTickWidth:I

.field private mUnmProgressColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xf

    .line 24
    invoke-virtual {p0, p1}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->dp2px(I)I

    move-result p1

    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_LINEHEIGHT:I

    const/4 p1, 0x2

    .line 25
    invoke-virtual {p0, p1}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->dp2px(I)I

    move-result p3

    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_mTickWidth:I

    const/16 p3, 0x48

    .line 26
    invoke-virtual {p0, p3}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->dp2px(I)I

    move-result p3

    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_mRadius:I

    const p3, -0x151516

    .line 27
    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_mUnmProgressColor:I

    const/high16 v0, -0x1000000

    .line 28
    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_mProgressColor:I

    const/16 v1, 0x3c

    .line 29
    iput v1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_OFFSETDEGREE:I

    const/4 v2, 0x4

    .line 30
    iput v2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_DENSITY:I

    .line 31
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->MIN_DENSITY:I

    const/16 v3, 0x8

    .line 32
    iput v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->MAX_DENSITY:I

    const/4 v4, 0x1

    .line 33
    iput v4, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mStylePogress:I

    .line 38
    iput v1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mDegree:I

    .line 57
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress:[I

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 59
    sget v5, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_arcborderWidth:I

    iget v6, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_LINEHEIGHT:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    .line 60
    sget v5, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_unprogresColor:I

    invoke-virtual {p2, v5, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mUnmProgressColor:I

    .line 61
    sget v5, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_arcprogressColor:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mProgressColor:I

    .line 62
    sget v0, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_tickWidth:I

    iget v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_mTickWidth:I

    invoke-virtual {p2, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mTickWidth:I

    .line 63
    sget v0, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_tickDensity:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mTickDensity:I

    .line 64
    sget v0, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_radius:I

    iget v2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->DEFAULT_mRadius:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mRadius:F

    .line 65
    sget v0, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_arcbgColor:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcbgColor:I

    .line 66
    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mTickDensity:I

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mTickDensity:I

    .line 67
    sget p1, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_bgShow:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBgShow:Z

    .line 68
    sget p1, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_degree:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mDegree:I

    .line 69
    sget p1, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_progressStyle:I

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mStylePogress:I

    .line 70
    sget p1, Lnet/kotlinandroid/customlibrary/R$styleable;->ArcProgress_arcCapRound:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 71
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    .line 72
    iget-object p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcbgColor:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 75
    :cond_0
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    iget p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mLinePaint:Landroid/graphics/Paint;

    .line 78
    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mTickWidth:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected dp2px(I)I
    .locals 2

    int-to-float p1, p1

    .line 154
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 171
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 101
    iget-object v1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 102
    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v2

    iget v2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v3

    .line 103
    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mOnCenter:Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;

    const/4 v11, 0x0

    if-eqz v3, :cond_1

    .line 104
    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterCanvas:Landroid/graphics/Canvas;

    if-nez v3, :cond_0

    .line 105
    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mRadius:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mRadius:F

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterBitmap:Landroid/graphics/Bitmap;

    .line 106
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterCanvas:Landroid/graphics/Canvas;

    .line 108
    :cond_0
    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v11, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 109
    iget-object v4, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mOnCenter:Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;

    iget-object v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    int-to-float v9, v3

    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->getProgress()I

    move-result v10

    move v7, v1

    move v8, v2

    invoke-interface/range {v4 .. v10}, Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFI)V

    .line 110
    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mCenterBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    :cond_1
    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mDegree:I

    div-int/lit8 v3, v3, 0x2

    .line 113
    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mDegree:I

    rsub-int v4, v4, 0x168

    iget v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mTickDensity:I

    div-int v10, v4, v5

    int-to-float v4, v10

    mul-float v4, v4, v0

    float-to-int v12, v4

    .line 115
    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mStylePogress:I

    if-nez v4, :cond_2

    .line 116
    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mDegree:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 118
    iget-object v1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mProgressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    add-int/lit8 v3, v3, 0x5a

    int-to-float v1, v3

    const/4 v8, 0x0

    iget-object v9, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v1

    move v7, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 121
    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mUnmProgressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    add-float v6, v1, v0

    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mDegree:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    sub-float v7, v1, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_2

    .line 124
    :cond_2
    iget-boolean v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBgShow:Z

    if-eqz v0, :cond_3

    .line 125
    iget-object v5, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    add-int/lit8 v0, v3, 0x5a

    int-to-float v6, v0

    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mDegree:I

    rsub-int v0, v0, 0x168

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit16 v3, v3, 0xb4

    int-to-float v0, v3

    .line 126
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_0
    if-ge v11, v10, :cond_5

    if-ge v11, v12, :cond_4

    .line 129
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mProgressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 131
    :cond_4
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mLinePaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mUnmProgressColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    :goto_1
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v6, v0

    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v8, v0

    iget-object v9, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v1

    move v7, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 134
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mTickDensity:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 137
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 4

    monitor-enter p0

    .line 85
    :try_start_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v3, :cond_0

    .line 88
    iget p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mRadius:F

    mul-float p1, p1, v2

    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 89
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    if-eq v1, v3, :cond_1

    .line 92
    iget p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mRadius:F

    mul-float p2, p2, v2

    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 93
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 95
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 142
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mBoardWidth:I

    int-to-float p3, p2

    int-to-float p4, p2

    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mRadius:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    int-to-float v3, p2

    sub-float/2addr v2, v3

    mul-float v0, v0, v1

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-direct {p1, p3, p4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "right == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mArcRectf:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "   mRadius == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mRadius:F

    mul-float p2, p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEMO"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnCenterDraw(Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/ArcProgress;->mOnCenter:Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;

    return-void
.end method
