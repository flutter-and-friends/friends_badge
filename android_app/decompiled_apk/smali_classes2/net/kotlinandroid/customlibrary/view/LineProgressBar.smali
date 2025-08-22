.class public Lnet/kotlinandroid/customlibrary/view/LineProgressBar;
.super Landroid/view/View;
.source "LineProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;,
        Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnFinishedListener;
    }
.end annotation


# instance fields
.field private DEFAULT_BORDER_COLOR:I

.field private DEFAULT_BORDER_WIDTH:I

.field private DEFAULT_ISSHOWDESC:Z

.field private DEFAULT_MAX:I

.field private DEFAULT_PROGRESS:I

.field private DEFAULT_PROGRESS_COLOR:I

.field private DEFAULT_PROGRESS_DESC_COLOR:I

.field private DEFAULT_RADIUS:I

.field private mBorderWidth:I

.field private mHeight:I

.field private mIsShowDesc:Z

.field private mMax:I

.field private mOnAnimationEndListener:Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;

.field private mOnFinishedListener:Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnFinishedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressColor:I

.field private mProgressDesc:Ljava/lang/String;

.field private mProgressDescColor:I

.field private mRadius:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 39
    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_MAX:I

    const/4 p3, 0x0

    .line 40
    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_PROGRESS:I

    .line 42
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x1

    const/high16 v1, 0x40a00000    # 5.0f

    .line 41
    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_RADIUS:I

    const-string p3, "#FE78A6"

    .line 43
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_BORDER_COLOR:I

    .line 44
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_PROGRESS_COLOR:I

    const-string p3, "#B4B4B4"

    .line 45
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_PROGRESS_DESC_COLOR:I

    .line 47
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    invoke-static {v0, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_BORDER_WIDTH:I

    .line 48
    iput-boolean v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_ISSHOWDESC:Z

    const-string p3, ""

    .line 53
    iput-object p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressDesc:Ljava/lang/String;

    .line 87
    sget-object p3, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    :try_start_0
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_max:I

    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_MAX:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    .line 91
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_progress:I

    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_PROGRESS:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    .line 93
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_progressRadius:I

    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_RADIUS:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    .line 95
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_lineprogressColor:I

    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_PROGRESS_COLOR:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressColor:I

    .line 98
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_progressDescColor:I

    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_PROGRESS_DESC_COLOR:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressDescColor:I

    .line 101
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_lineborderWidth:I

    iget p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_BORDER_WIDTH:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mBorderWidth:I

    .line 104
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_progressDesc:I

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressDesc:Ljava/lang/String;

    .line 106
    sget p2, Lnet/kotlinandroid/customlibrary/R$styleable;->LineProgressBar_isShowDesc:I

    iget-boolean p3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->DEFAULT_ISSHOWDESC:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mIsShowDesc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-direct {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->init()V

    return-void

    :catchall_0
    move-exception p2

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Lnet/kotlinandroid/customlibrary/view/LineProgressBar;)Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mOnAnimationEndListener:Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;

    return-object p0
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 11

    .line 147
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 148
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 150
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 154
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mBorderWidth:I

    div-int/lit8 v1, v0, 0x2

    .line 155
    div-int/lit8 v2, v0, 0x2

    .line 156
    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mWidth:I

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    .line 157
    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    .line 159
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 160
    iget v5, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    int-to-float v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 161
    iget v5, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    sub-int v5, v3, v5

    int-to-float v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    new-instance v5, Landroid/graphics/RectF;

    iget v7, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v8, v7, 0x2

    sub-int v8, v3, v8

    int-to-float v8, v8

    int-to-float v9, v3

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    int-to-float v7, v7

    invoke-direct {v5, v8, v6, v9, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v5, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 165
    iget v5, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    invoke-virtual {v0, v9, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 166
    new-instance v5, Landroid/graphics/RectF;

    iget v8, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v10, v8, 0x2

    sub-int/2addr v3, v10

    int-to-float v3, v3

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v4, v8

    int-to-float v8, v8

    int-to-float v10, v4

    invoke-direct {v5, v3, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 168
    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v0, v3, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v5, v1

    iget v8, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v9, v8, 0x2

    sub-int/2addr v4, v9

    int-to-float v4, v4

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    int-to-float v8, v8

    invoke-direct {v3, v5, v4, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v3, v7, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 171
    iget v3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v1, v8

    int-to-float v1, v1

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-direct {v3, v5, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v3, v1, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 176
    iget-object v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 181
    iget-object v2, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 182
    iget-object v2, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    iget-object v2, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v2, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v2, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mBorderWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    iget v2, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mBorderWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    int-to-float v5, v2

    mul-float v5, v5, v4

    .line 189
    iget v6, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mWidth:I

    int-to-float v6, v6

    int-to-float v7, v2

    mul-float v7, v7, v4

    sub-float/2addr v6, v7

    .line 190
    iget v7, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mHeight:I

    int-to-float v7, v7

    int-to-float v2, v2

    mul-float v2, v2, v4

    sub-float/2addr v7, v2

    .line 192
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 193
    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 194
    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    int-to-float v8, v4

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v8, v8, v9

    iget v10, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    int-to-float v11, v10

    div-float/2addr v8, v11

    iget v11, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-float v12, v11

    mul-float v12, v12, v9

    sub-float v13, v6, v3

    div-float/2addr v12, v13

    div-float/2addr v8, v12

    int-to-float v12, v4

    mul-float v12, v12, v9

    int-to-float v14, v10

    div-float/2addr v12, v14

    int-to-float v14, v11

    sub-float v14, v6, v14

    mul-float v14, v14, v9

    div-float/2addr v14, v13

    div-float/2addr v12, v14

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    const-wide v18, 0x4066800000000000L    # 180.0

    const/high16 v14, 0x43340000    # 180.0f

    cmpg-float v15, v8, v9

    if-gtz v15, :cond_0

    int-to-float v4, v11

    mul-float v8, v8, v4

    int-to-float v4, v11

    sub-float/2addr v4, v8

    int-to-float v6, v11

    div-float/2addr v4, v6

    float-to-double v9, v4

    .line 201
    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    .line 202
    new-instance v4, Landroid/graphics/RectF;

    iget v6, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v11, v6, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v3

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-direct {v4, v3, v5, v11, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    mul-double v9, v9, v18

    div-double v9, v9, v16

    double-to-float v5, v9

    invoke-virtual {v2, v4, v14, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 204
    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-double v9, v4

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 205
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-float v4, v4

    sub-float v4, v8, v4

    float-to-double v14, v4

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 204
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    float-to-double v11, v7

    add-double/2addr v9, v11

    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-double v11, v4

    sub-double/2addr v9, v11

    double-to-float v4, v9

    add-float/2addr v8, v3

    .line 207
    invoke-virtual {v2, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    new-instance v4, Landroid/graphics/RectF;

    iget v6, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    sub-float v8, v7, v8

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-direct {v4, v3, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x43340000    # 180.0f

    sub-float v14, v3, v5

    invoke-virtual {v2, v4, v14, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 212
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 213
    iget-object v3, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_0
    const/high16 v8, 0x42b40000    # 90.0f

    cmpg-float v12, v12, v9

    if-gtz v12, :cond_1

    .line 216
    new-instance v4, Landroid/graphics/RectF;

    mul-int/lit8 v6, v11, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v3

    mul-int/lit8 v11, v11, 0x2

    int-to-float v10, v11

    add-float/2addr v10, v5

    invoke-direct {v4, v3, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v2, v4, v6, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 218
    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    int-to-float v4, v4

    mul-float v4, v4, v9

    iget v6, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    mul-float v4, v4, v13

    add-float/2addr v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    int-to-float v4, v4

    mul-float v4, v4, v9

    iget v5, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float v4, v4, v13

    add-float/2addr v4, v3

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 221
    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v6, v7, v6

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-direct {v4, v3, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v4, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 224
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 226
    iget-object v3, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    int-to-float v4, v4

    mul-float v4, v4, v9

    int-to-float v9, v10

    div-float/2addr v4, v9

    mul-float v4, v4, v13

    int-to-float v9, v11

    sub-float v9, v6, v9

    sub-float/2addr v4, v9

    int-to-float v9, v11

    div-float v9, v4, v9

    float-to-double v9, v9

    .line 232
    invoke-static {v9, v10}, Ljava/lang/Math;->asin(D)D

    move-result-wide v9

    .line 233
    new-instance v11, Landroid/graphics/RectF;

    iget v12, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    add-float/2addr v13, v3

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v12, v5

    invoke-direct {v11, v3, v5, v13, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v12, 0x43340000    # 180.0f

    invoke-virtual {v2, v11, v12, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 235
    iget v11, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    invoke-virtual {v2, v11, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 236
    new-instance v11, Landroid/graphics/RectF;

    iget v12, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    sub-float v13, v6, v13

    mul-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v12, v5

    invoke-direct {v11, v13, v5, v6, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v12, -0x3d4c0000    # -90.0f

    mul-double v9, v9, v18

    div-double v9, v9, v16

    double-to-float v13, v9

    invoke-virtual {v2, v11, v12, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 238
    iget v11, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-double v11, v11

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    move-wide/from16 v17, v9

    float-to-double v8, v4

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sub-double/2addr v11, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v5

    add-double/2addr v8, v10

    iget v5, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-double v10, v5

    add-double/2addr v8, v10

    int-to-float v5, v5

    sub-float v5, v6, v5

    add-float/2addr v5, v4

    double-to-float v4, v8

    .line 240
    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    sub-float v8, v6, v8

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v7, v5

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-wide v5, 0x4056800000000000L    # 90.0

    sub-double v5, v5, v17

    double-to-float v5, v5

    invoke-virtual {v2, v4, v5, v13}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 244
    iget v4, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    invoke-virtual {v2, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mRadius:I

    mul-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v6, v7, v6

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-direct {v4, v3, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v4, v3, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 247
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 249
    iget-object v3, v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawProgressDesc(Landroid/graphics/Canvas;)V
    .locals 7

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextPaint:Landroid/text/TextPaint;

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    .line 258
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 261
    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mWidth:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    iget-object v5, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v3

    sub-double/2addr v1, v5

    double-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mHeight:I

    int-to-double v5, v2

    div-double/2addr v5, v3

    iget-object v2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    sub-double/2addr v5, v2

    double-to-int v2, v5

    int-to-float v2, v2

    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextBounds:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextPaint:Landroid/text/TextPaint;

    .line 123
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextPaint:Landroid/text/TextPaint;

    .line 124
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    .line 123
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 126
    iget-object v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressDescColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private invalidateView()V
    .locals 2

    .line 366
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 367
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->invalidate()V

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->postInvalidate()V

    :goto_0
    return-void
.end method

.method private setProgress(I)V
    .locals 1

    .line 274
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    .line 275
    invoke-direct {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->invalidateView()V

    .line 277
    iget p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mOnFinishedListener:Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnFinishedListener;

    if-eqz p1, :cond_1

    .line 278
    invoke-interface {p1}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnFinishedListener;->onFinish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .line 288
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    return v0
.end method

.method public final getProgress()I
    .locals 1

    .line 298
    iget v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 140
    invoke-direct {p0, p1}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->drawBorder(Landroid/graphics/Canvas;)V

    .line 141
    invoke-direct {p0, p1}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 142
    iget-boolean v0, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mIsShowDesc:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->drawProgressDesc(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 133
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mWidth:I

    .line 134
    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mHeight:I

    return-void
.end method

.method public setCurProgress(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 312
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 313
    new-instance v0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$1;

    invoke-direct {v0, p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$1;-><init>(Lnet/kotlinandroid/customlibrary/view/LineProgressBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setCurProgress(IJ)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "progress"

    .line 332
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 333
    new-instance p2, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$2;

    invoke-direct {p2, p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar$2;-><init>(Lnet/kotlinandroid/customlibrary/view/LineProgressBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 342
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setIsShowDesc(Z)V
    .locals 0

    .line 361
    iput-boolean p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mIsShowDesc:Z

    .line 362
    invoke-direct {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->invalidateView()V

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 267
    :cond_0
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mMax:I

    .line 268
    invoke-direct {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->invalidateView()V

    return-void
.end method

.method public setOnAnimationEndListener(Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mOnAnimationEndListener:Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnAnimationEndListener;

    return-void
.end method

.method public setOnFinishedListener(Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnFinishedListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mOnFinishedListener:Lnet/kotlinandroid/customlibrary/view/LineProgressBar$OnFinishedListener;

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .line 351
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressColor:I

    .line 352
    invoke-direct {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->invalidateView()V

    return-void
.end method

.method public setProgressDesc(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->mProgressDesc:Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Lnet/kotlinandroid/customlibrary/view/LineProgressBar;->invalidateView()V

    return-void
.end method
