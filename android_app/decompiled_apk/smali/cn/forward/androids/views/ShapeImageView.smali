.class public Lcn/forward/androids/views/ShapeImageView;
.super Landroid/widget/ImageView;
.source "ShapeImageView.java"


# static fields
.field public static SHAPE_CIRCLE:I = 0x2

.field public static SHAPE_OVAL:I = 0x3

.field public static SHAPE_REC:I = 0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderRect:Landroid/graphics/RectF;

.field private mBorderSize:F

.field private mPath:Landroid/graphics/Path;

.field private mRoundRadius:F

.field private mRoundRadiusLeftBottom:F

.field private mRoundRadiusLeftTop:F

.field private mRoundRadiusRightBottom:F

.field private mRoundRadiusRightTop:F

.field private final mShaderMatrix:Landroid/graphics/Matrix;

.field private mShape:I

.field private mViewRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/ShapeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    const/4 p3, -0x1

    .line 34
    iput p3, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderColor:I

    .line 35
    sget p3, Lcn/forward/androids/views/ShapeImageView;->SHAPE_REC:I

    iput p3, p0, Lcn/forward/androids/views/ShapeImageView;->mShape:I

    .line 36
    iput p1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    .line 40
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderRect:Landroid/graphics/RectF;

    .line 42
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mPath:Landroid/graphics/Path;

    .line 54
    invoke-direct {p0, p2}, Lcn/forward/androids/views/ShapeImageView;->init(Landroid/util/AttributeSet;)V

    .line 55
    iget-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 87
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/R$styleable;->ShapeImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_shape:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mShape:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mShape:I

    .line 90
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_round_radius:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    .line 91
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_border_size:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    .line 92
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_border_color:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderColor:I

    .line 94
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_round_radius_leftBottom:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftBottom:F

    .line 95
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_round_radius_leftTop:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftTop:F

    .line 96
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_round_radius_rightBottom:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightBottom:F

    .line 97
    sget v1, Lcn/forward/androids/R$styleable;->ShapeImageView_siv_round_radius_rightTop:I

    iget v2, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightTop:F

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcn/forward/androids/views/SelectorAttrs;->obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initRect()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 198
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 199
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 200
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 203
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderRect:Landroid/graphics/RectF;

    iget v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v2

    .line 204
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 205
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 206
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setupBitmapShader()V
    .locals 5

    .line 171
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->invalidate()V

    return-void

    .line 178
    :cond_1
    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 179
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 182
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 184
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget-object v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 186
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 187
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    .line 188
    iget-object v2, p0, Lcn/forward/androids/views/ShapeImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 189
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 190
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcn/forward/androids/views/ShapeImageView;->mShaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 191
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->invalidate()V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 229
    iget v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderColor:I

    return v0
.end method

.method public getBorderSize()F
    .locals 1

    .line 218
    iget v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    return v0
.end method

.method public getRoundRadiis()[F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 256
    iget v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftBottom:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftTop:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightBottom:F

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightTop:F

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method public getRoundRadius()F
    .locals 1

    .line 239
    iget v0, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    return v0
.end method

.method public getShape()I
    .locals 1

    .line 210
    iget v0, p0, Lcn/forward/androids/views/ShapeImageView;->mShape:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 113
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v0, :cond_2

    .line 114
    iget v0, p0, Lcn/forward/androids/views/ShapeImageView;->mShape:I

    sget v11, Lcn/forward/androids/views/ShapeImageView;->SHAPE_CIRCLE:I

    if-ne v0, v11, :cond_0

    .line 115
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, v10

    iget-object v11, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v11, v10

    iget-object v12, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->right:F

    iget-object v13, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    .line 116
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    div-float/2addr v12, v10

    iget-object v13, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 115
    invoke-virtual {p1, v0, v11, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 117
    :cond_0
    sget v11, Lcn/forward/androids/views/ShapeImageView;->SHAPE_OVAL:I

    if-ne v0, v11, :cond_1

    .line 118
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 122
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    new-array v12, v9, [F

    iget v13, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftTop:F

    aput v13, v12, v8

    aput v13, v12, v7

    iget v13, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightTop:F

    aput v13, v12, v6

    aput v13, v12, v5

    iget v13, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightBottom:F

    aput v13, v12, v4

    aput v13, v12, v3

    iget v13, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftBottom:F

    aput v13, v12, v2

    aput v13, v12, v1

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v11, v12, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 128
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mPath:Landroid/graphics/Path;

    iget-object v11, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    :cond_2
    :goto_0
    iget v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    const/4 v11, 0x0

    cmpl-float v0, v0, v11

    if-lez v0, :cond_5

    .line 134
    iget v0, p0, Lcn/forward/androids/views/ShapeImageView;->mShape:I

    sget v11, Lcn/forward/androids/views/ShapeImageView;->SHAPE_CIRCLE:I

    if-ne v0, v11, :cond_3

    .line 135
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v0, v10

    iget-object v1, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v10

    iget-object v2, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcn/forward/androids/views/ShapeImageView;->mViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 136
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v10

    iget v3, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    div-float/2addr v3, v10

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 135
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 137
    :cond_3
    sget v10, Lcn/forward/androids/views/ShapeImageView;->SHAPE_OVAL:I

    if-ne v0, v10, :cond_4

    .line 138
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 142
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderRect:Landroid/graphics/RectF;

    new-array v9, v9, [F

    iget v11, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftTop:F

    aput v11, v9, v8

    aput v11, v9, v7

    iget v7, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightTop:F

    aput v7, v9, v6

    aput v7, v9, v5

    iget v5, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightBottom:F

    aput v5, v9, v4

    aput v5, v9, v3

    iget v3, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftBottom:F

    aput v3, v9, v2

    aput v3, v9, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v10, v9, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 148
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 164
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 156
    invoke-direct {p0}, Lcn/forward/androids/views/ShapeImageView;->initRect()V

    .line 157
    invoke-direct {p0}, Lcn/forward/androids/views/ShapeImageView;->setupBitmapShader()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 233
    iput p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderColor:I

    .line 234
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->invalidate()V

    return-void
.end method

.method public setBorderSize(I)V
    .locals 1

    int-to-float p1, p1

    .line 222
    iput p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderSize:F

    .line 223
    iget-object v0, p0, Lcn/forward/androids/views/ShapeImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 224
    invoke-direct {p0}, Lcn/forward/androids/views/ShapeImageView;->initRect()V

    .line 225
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->invalidate()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-static {p1}, Lcn/forward/androids/utils/ImageUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 75
    invoke-direct {p0}, Lcn/forward/androids/views/ShapeImageView;->setupBitmapShader()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcn/forward/androids/utils/ImageUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/forward/androids/views/ShapeImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    invoke-direct {p0}, Lcn/forward/androids/views/ShapeImageView;->setupBitmapShader()V

    return-void
.end method

.method public setRoundRadiis(FFFF)V
    .locals 0

    .line 248
    iput p1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftBottom:F

    .line 249
    iput p2, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusLeftTop:F

    .line 250
    iput p3, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightBottom:F

    .line 251
    iput p4, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadiusRightTop:F

    .line 252
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->invalidate()V

    return-void
.end method

.method public setRoundRadius(F)V
    .locals 0

    .line 243
    iput p1, p0, Lcn/forward/androids/views/ShapeImageView;->mRoundRadius:F

    .line 244
    invoke-virtual {p0}, Lcn/forward/androids/views/ShapeImageView;->invalidate()V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 3

    .line 80
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ScaleType %s not supported."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShape(I)V
    .locals 0

    .line 214
    iput p1, p0, Lcn/forward/androids/views/ShapeImageView;->mShape:I

    return-void
.end method
