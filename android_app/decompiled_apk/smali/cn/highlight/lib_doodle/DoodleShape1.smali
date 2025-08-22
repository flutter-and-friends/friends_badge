.class public Lcn/highlight/lib_doodle/DoodleShape1;
.super Lcn/highlight/lib_doodle/DoodleRotatableItemBase;
.source "DoodleShape1.java"


# static fields
.field public static DEFAULT_BITMAP_SIZE:I = 0x3ca


# instance fields
.field private effects:I

.field private fgColor:I

.field private height:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mSrcRect:Landroid/graphics/Rect;

.field private shape1:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;IIIIIFF)V
    .locals 1

    .line 22
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p8, p9}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 12
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mRect:Landroid/graphics/Rect;

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mSrcRect:Landroid/graphics/Rect;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mDstRect:Landroid/graphics/Rect;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mPaint:Landroid/graphics/Paint;

    .line 25
    sget-object p1, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 26
    invoke-virtual {p0, p8}, Lcn/highlight/lib_doodle/DoodleShape1;->setPivotX(F)V

    .line 27
    invoke-virtual {p0, p9}, Lcn/highlight/lib_doodle/DoodleShape1;->setPivotY(F)V

    .line 28
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    .line 29
    iput p3, p0, Lcn/highlight/lib_doodle/DoodleShape1;->fgColor:I

    .line 30
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    iput p4, p0, Lcn/highlight/lib_doodle/DoodleShape1;->shape1:I

    .line 32
    iput p5, p0, Lcn/highlight/lib_doodle/DoodleShape1;->width:I

    .line 33
    iput p6, p0, Lcn/highlight/lib_doodle/DoodleShape1;->height:I

    .line 34
    iput p7, p0, Lcn/highlight/lib_doodle/DoodleShape1;->effects:I

    .line 35
    sget-object p1, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    if-ne p4, p1, :cond_0

    add-int/lit8 p5, p5, 0x5

    mul-int/lit8 p5, p5, 0x2

    int-to-float p1, p5

    div-float/2addr p1, p2

    .line 36
    sget p2, Lcn/highlight/lib_doodle/DoodleShape1;->DEFAULT_BITMAP_SIZE:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setSize(F)V

    goto :goto_0

    :cond_0
    add-int/lit8 p5, p5, 0x5

    int-to-float p1, p5

    div-float/2addr p1, p2

    .line 38
    sget p2, Lcn/highlight/lib_doodle/DoodleShape1;->DEFAULT_BITMAP_SIZE:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setSize(F)V

    .line 41
    :goto_0
    invoke-virtual {p0, p8, p9}, Lcn/highlight/lib_doodle/DoodleShape1;->setLocation(FF)V

    return-void
.end method


# virtual methods
.method protected doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mDstRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawOval(Landroid/graphics/Canvas;)V
    .locals 2

    .line 141
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 142
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getEffects()I
    .locals 1

    .line 107
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->effects:I

    return v0
.end method

.method public getFgColor()I
    .locals 1

    .line 72
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->fgColor:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 99
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->height:I

    return v0
.end method

.method public getShape1()I
    .locals 1

    .line 82
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->shape1:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 91
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->width:I

    return v0
.end method

.method public getmPaint()Landroid/graphics/Paint;
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected resetBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 116
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleShape1;->getSize()F

    move-result v0

    .line 120
    iget v1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->shape1:I

    sget-object v2, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    float-to-int v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 121
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 122
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    float-to-int v1, v0

    .line 125
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IIIII)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mBitmap:Landroid/graphics/Bitmap;

    .line 46
    iput p2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->fgColor:I

    .line 47
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iput p3, p0, Lcn/highlight/lib_doodle/DoodleShape1;->shape1:I

    .line 49
    iput p4, p0, Lcn/highlight/lib_doodle/DoodleShape1;->width:I

    .line 50
    iput p5, p0, Lcn/highlight/lib_doodle/DoodleShape1;->height:I

    .line 51
    iput p6, p0, Lcn/highlight/lib_doodle/DoodleShape1;->effects:I

    .line 52
    sget-object p1, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    if-ne p3, p1, :cond_0

    add-int/lit8 p4, p4, 0x5

    mul-int/lit8 p4, p4, 0x2

    int-to-float p1, p4

    div-float/2addr p1, p2

    .line 53
    sget p2, Lcn/highlight/lib_doodle/DoodleShape1;->DEFAULT_BITMAP_SIZE:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setSize(F)V

    goto :goto_0

    :cond_0
    add-int/lit8 p4, p4, 0x5

    int-to-float p1, p4

    div-float/2addr p1, p2

    .line 55
    sget p2, Lcn/highlight/lib_doodle/DoodleShape1;->DEFAULT_BITMAP_SIZE:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setSize(F)V

    .line 57
    :goto_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->resetBounds(Landroid/graphics/Rect;)V

    .line 58
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleShape1;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setPivotX(F)V

    .line 59
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleShape1;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleShape1;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setPivotY(F)V

    .line 60
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleShape1;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 61
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleShape1;->refresh()V

    return-void
.end method

.method public setEffects(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->effects:I

    return-void
.end method

.method public setFgColor(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->fgColor:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->height:I

    return-void
.end method

.method public setShape1(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->shape1:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleShape1;->width:I

    return-void
.end method
