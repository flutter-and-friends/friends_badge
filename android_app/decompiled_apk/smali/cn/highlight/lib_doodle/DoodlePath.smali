.class public Lcn/highlight/lib_doodle/DoodlePath;
.super Lcn/highlight/lib_doodle/DoodleRotatableItemBase;
.source "DoodlePath.java"


# static fields
.field public static final MOSAIC_LEVEL_1:I = 0x5

.field public static final MOSAIC_LEVEL_2:I = 0x14

.field public static final MOSAIC_LEVEL_3:I = 0x32

.field private static sMosaicBitmapMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcn/highlight/lib_doodle/IDoodle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mArrowTrianglePath:Landroid/graphics/Path;

.field private mBitmapColorMatrix:Landroid/graphics/Matrix;

.field private mBound:Landroid/graphics/RectF;

.field private mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

.field private mDxy:Landroid/graphics/PointF;

.field private final mOriginPath:Landroid/graphics/Path;

.field private mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mRect:Landroid/graphics/Rect;

.field private mSxy:Landroid/graphics/PointF;

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcn/highlight/lib_doodle/DoodlePath;->sMosaicBitmapMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, v1, v0, v0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPath:Landroid/graphics/Path;

    .line 28
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    .line 30
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    .line 31
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mTransform:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    .line 39
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBitmapColorMatrix:Landroid/graphics/Matrix;

    .line 137
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 46
    invoke-direct/range {v0 .. v5}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;IFF)V

    .line 27
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPath:Landroid/graphics/Path;

    .line 28
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    .line 30
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    .line 31
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mTransform:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    .line 39
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBitmapColorMatrix:Landroid/graphics/Matrix;

    .line 137
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    return-void
.end method

.method private adjustMosaic()V
    .locals 6

    .line 298
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->MOSAIC:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleColor;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleColor;

    .line 301
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleColor;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 302
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 303
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPivotX()F

    move-result v4

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPivotY()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 304
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getScale()F

    move-result v3

    mul-float v2, v2, v3

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    neg-float v3, v3

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getScale()F

    move-result v4

    mul-float v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 305
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getItemRotate()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPivotY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 306
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleColor;->getLevel()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleColor;->getLevel()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 307
    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleColor;->setMatrix(Landroid/graphics/Matrix;)V

    .line 308
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->refresh()V

    :cond_0
    return-void
.end method

.method private adjustPath(Z)V
    .locals 4

    .line 319
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodlePath;->resetLocationBounds(Landroid/graphics/Rect;)V

    .line 320
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 321
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 322
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 323
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mTransform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 324
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    if-eqz p1, :cond_0

    .line 326
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodlePath;->setPivotX(F)V

    .line 327
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodlePath;->setPivotY(F)V

    .line 328
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setLocation(FFZ)V

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleColor;

    if-eqz p1, :cond_4

    .line 332
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleColor;

    .line 333
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleColor;->getType()Lcn/highlight/lib_doodle/DoodleColor$Type;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleColor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 334
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBitmapColorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 336
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->MOSAIC:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_1

    .line 337
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodlePath;->adjustMosaic()V

    goto :goto_2

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_3

    .line 342
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getCopyLocation()Lcn/highlight/lib_doodle/CopyLocation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/CopyLocation;->getTouchStartX()F

    move-result v1

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/CopyLocation;->getCopyStartX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 346
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/CopyLocation;->getTouchStartY()F

    move-result v2

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/CopyLocation;->getCopyStartY()F

    move-result v0

    sub-float v0, v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 348
    :goto_0
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcn/highlight/lib_doodle/DoodlePath;->resetLocationBounds(Landroid/graphics/Rect;)V

    .line 349
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBitmapColorMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    .line 351
    :cond_3
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBitmapColorMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodlePath;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 354
    :goto_1
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleColor;->getLevel()I

    move-result v0

    .line 355
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBitmapColorMatrix:Landroid/graphics/Matrix;

    int-to-float v0, v0

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 356
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBitmapColorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleColor;->setMatrix(Landroid/graphics/Matrix;)V

    .line 357
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->refresh()V

    .line 362
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->refresh()V

    return-void
.end method

.method private getDxy()Landroid/graphics/PointF;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    return-object v0
.end method

.method public static getMosaicColor(Lcn/highlight/lib_doodle/IDoodle;I)Lcn/highlight/lib_doodle/DoodleColor;
    .locals 10

    .line 239
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePath;->sMosaicBitmapMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    sget-object v1, Lcn/highlight/lib_doodle/DoodlePath;->sMosaicBitmapMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v9, p1

    div-float/2addr v1, v9

    .line 245
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 248
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 249
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v6, v8

    .line 248
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 250
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 253
    invoke-virtual {v8, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 254
    new-instance p0, Lcn/highlight/lib_doodle/DoodleColor;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, v1, v8, v0, v2}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 255
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleColor;->setLevel(I)V

    return-object p0
.end method

.method private getSxy()Landroid/graphics/PointF;
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    return-object v0
.end method

.method private resetLocationBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 140
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 145
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 146
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodleShape;->ARROW:Lcn/highlight/lib_doodle/DoodleShape;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodleShape;->FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    if-ne v1, v2, :cond_2

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getUnitSize()F

    move-result v0

    float-to-int v0, v0

    .line 149
    :cond_2
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    float-to-int v3, v3

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodlePath;->mBound:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    float-to-int v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static toPath(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Path;)Lcn/highlight/lib_doodle/DoodlePath;
    .locals 2

    .line 106
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePath;

    invoke-direct {v0, p0}, Lcn/highlight/lib_doodle/DoodlePath;-><init>(Lcn/highlight/lib_doodle/IDoodle;)V

    .line 107
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodlePen;->copy()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 108
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleShape;->copy()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setShape(Lcn/highlight/lib_doodle/IDoodleShape;)V

    .line 109
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setSize(F)V

    .line 110
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleColor;->copy()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 112
    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodlePath;->updatePath(Landroid/graphics/Path;)V

    .line 113
    instance-of p0, p0, Lcn/highlight/lib_doodle/DoodleView;

    if-eqz p0, :cond_0

    .line 114
    sget-object p0, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePen;->getCopyLocation()Lcn/highlight/lib_doodle/CopyLocation;

    move-result-object p0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/CopyLocation;->copy()Lcn/highlight/lib_doodle/CopyLocation;

    move-result-object p0

    iput-object p0, v0, Lcn/highlight/lib_doodle/DoodlePath;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 116
    iput-object p0, v0, Lcn/highlight/lib_doodle/DoodlePath;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    :goto_0
    return-object v0
.end method

.method public static toShape(Lcn/highlight/lib_doodle/IDoodle;FFFF)Lcn/highlight/lib_doodle/DoodlePath;
    .locals 2

    .line 90
    new-instance v0, Lcn/highlight/lib_doodle/DoodlePath;

    invoke-direct {v0, p0}, Lcn/highlight/lib_doodle/DoodlePath;-><init>(Lcn/highlight/lib_doodle/IDoodle;)V

    .line 91
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodlePen;->copy()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 92
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleShape;->copy()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setShape(Lcn/highlight/lib_doodle/IDoodleShape;)V

    .line 93
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setSize(F)V

    .line 94
    invoke-interface {p0}, Lcn/highlight/lib_doodle/IDoodle;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleColor;->copy()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 96
    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/highlight/lib_doodle/DoodlePath;->updateXY(FFFF)V

    .line 97
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodlePath;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, p2, :cond_0

    .line 98
    instance-of p0, p0, Lcn/highlight/lib_doodle/DoodleView;

    if-eqz p0, :cond_0

    .line 99
    sget-object p0, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePen;->getCopyLocation()Lcn/highlight/lib_doodle/CopyLocation;

    move-result-object p0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/CopyLocation;->copy()Lcn/highlight/lib_doodle/CopyLocation;

    move-result-object p0

    iput-object p0, v0, Lcn/highlight/lib_doodle/DoodlePath;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    :cond_0
    return-object v0
.end method

.method private updateArrowPath(Landroid/graphics/Path;FFFFF)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    float-to-double v5, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    float-to-double v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double v11, v7, v9

    div-double v13, v11, v5

    .line 175
    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    mul-double v11, v11, v7

    div-double/2addr v11, v9

    mul-double v9, v5, v5

    add-double/2addr v11, v9

    .line 176
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    sub-double v22, v11, v15

    sub-float v4, v2, p2

    sub-float v11, v3, p3

    const/16 v19, 0x1

    move v15, v4

    move/from16 v16, v11

    move-wide/from16 v17, v13

    move-wide/from16 v20, v22

    .line 177
    invoke-static/range {v15 .. v21}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v12

    neg-double v13, v13

    const/16 v21, 0x1

    move/from16 v17, v4

    move/from16 v18, v11

    move-wide/from16 v19, v13

    .line 178
    invoke-static/range {v17 .. v23}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v13

    float-to-double v14, v2

    const/16 v22, 0x0

    .line 179
    aget-wide v16, v12, v22

    move-wide/from16 v18, v9

    sub-double v9, v14, v16

    double-to-float v9, v9

    move/from16 p6, v11

    float-to-double v10, v3

    const/16 v23, 0x1

    .line 180
    aget-wide v16, v12, v23

    sub-double v2, v10, v16

    double-to-float v2, v2

    .line 181
    aget-wide v16, v13, v22

    move v12, v4

    sub-double v3, v14, v16

    double-to-float v3, v3

    .line 182
    aget-wide v16, v13, v23

    move-wide/from16 v20, v14

    sub-double v13, v10, v16

    double-to-float v4, v13

    .line 184
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 185
    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    div-double v2, v7, v5

    .line 189
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    mul-double v7, v7, v7

    add-double v7, v7, v18

    .line 190
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const/16 v19, 0x1

    move-wide/from16 v6, v20

    move v15, v12

    move/from16 v16, p6

    move-wide/from16 v17, v2

    move-wide/from16 v20, v4

    .line 191
    invoke-static/range {v15 .. v21}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v8

    neg-double v2, v2

    move-wide/from16 v17, v2

    .line 192
    invoke-static/range {v15 .. v21}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v2

    .line 193
    aget-wide v3, v8, v22

    sub-double v14, v6, v3

    double-to-float v3, v14

    .line 194
    aget-wide v4, v8, v23

    sub-double v4, v10, v4

    double-to-float v4, v4

    .line 195
    aget-wide v8, v2, v22

    sub-double v14, v6, v8

    double-to-float v5, v14

    .line 196
    aget-wide v6, v2, v23

    sub-double/2addr v10, v6

    double-to-float v2, v10

    .line 197
    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    if-nez v6, :cond_0

    .line 198
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    .line 200
    :cond_0
    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 201
    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 202
    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 204
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 205
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodlePath;->mArrowTrianglePath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private updateCirclePath(Landroid/graphics/Path;FFFFF)V
    .locals 0

    sub-float p4, p2, p4

    mul-float p4, p4, p4

    sub-float p5, p3, p5

    mul-float p5, p5, p5

    add-float/2addr p4, p5

    float-to-double p4, p4

    .line 214
    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p4

    double-to-float p4, p4

    .line 215
    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private updateLinePath(Landroid/graphics/Path;FFFFF)V
    .locals 0

    .line 209
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 210
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private updateRectPath(Landroid/graphics/Path;FFFFF)V
    .locals 6

    cmpg-float v0, p2, p4

    if-gez v0, :cond_1

    cmpg-float v0, p3, p5

    if-gez v0, :cond_0

    .line 223
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 225
    :cond_0
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p2

    move v2, p5

    move v3, p4

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    :cond_1
    cmpg-float v0, p3, p5

    if-gez v0, :cond_2

    .line 229
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p4

    move v2, p3

    move v3, p2

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 124
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 127
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 128
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Lcn/highlight/lib_doodle/IDoodlePen;->config(Lcn/highlight/lib_doodle/IDoodleItem;Landroid/graphics/Paint;)V

    .line 131
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Lcn/highlight/lib_doodle/IDoodleColor;->config(Lcn/highlight/lib_doodle/IDoodleItem;Landroid/graphics/Paint;)V

    .line 132
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Lcn/highlight/lib_doodle/IDoodleShape;->config(Lcn/highlight/lib_doodle/IDoodleItem;Landroid/graphics/Paint;)V

    .line 134
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getCopyLocation()Lcn/highlight/lib_doodle/CopyLocation;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public isDoodleEditable()Z
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->ERASER:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 164
    :cond_0
    invoke-super {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->isDoodleEditable()Z

    move-result v0

    return v0
.end method

.method protected resetBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 154
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodlePath;->resetLocationBounds(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V
    .locals 2

    .line 267
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 268
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->MOSAIC:Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->setLocation(FFZ)V

    .line 271
    :cond_0
    invoke-direct {p0, v1}, Lcn/highlight/lib_doodle/DoodlePath;->adjustPath(Z)V

    return-void
.end method

.method public setItemRotate(F)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setItemRotate(F)V

    .line 315
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodlePath;->adjustMosaic()V

    return-void
.end method

.method public setLocation(FFZ)V
    .locals 0

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setLocation(FFZ)V

    .line 262
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodlePath;->adjustMosaic()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 293
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setScale(F)V

    .line 294
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodlePath;->adjustMosaic()V

    return-void
.end method

.method public setSize(F)V
    .locals 7

    .line 276
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setSize(F)V

    .line 279
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mTransform:Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    return-void

    .line 283
    :cond_0
    sget-object p1, Lcn/highlight/lib_doodle/DoodleShape;->ARROW:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 284
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 285
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/highlight/lib_doodle/DoodlePath;->updateArrowPath(Landroid/graphics/Path;FFFFF)V

    :cond_1
    const/4 p1, 0x0

    .line 288
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodlePath;->adjustPath(Z)V

    return-void
.end method

.method public updatePath(Landroid/graphics/Path;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 69
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    const/4 p1, 0x1

    .line 70
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodlePath;->adjustPath(Z)V

    return-void
.end method

.method public updateXY(FFFF)V
    .locals 7

    .line 50
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 51
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/PointF;->set(FF)V

    .line 52
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 54
    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->ARROW:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/highlight/lib_doodle/DoodlePath;->updateArrowPath(Landroid/graphics/Path;FFFFF)V

    goto/16 :goto_1

    .line 56
    :cond_0
    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/highlight/lib_doodle/DoodlePath;->updateLinePath(Landroid/graphics/Path;FFFFF)V

    goto :goto_1

    .line 58
    :cond_1
    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->HOLLOW_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->HOLLOW_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    :cond_3
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/highlight/lib_doodle/DoodlePath;->updateRectPath(Landroid/graphics/Path;FFFFF)V

    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodlePath;->mOriginPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mSxy:Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodlePath;->mDxy:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodlePath;->getSize()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/highlight/lib_doodle/DoodlePath;->updateCirclePath(Landroid/graphics/Path;FFFFF)V

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodlePath;->adjustPath(Z)V

    return-void
.end method
