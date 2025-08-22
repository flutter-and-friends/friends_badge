.class public Lcn/highlight/lib_doodle/DoodleBarCode;
.super Lcn/highlight/lib_doodle/DoodleRotatableItemBase;
.source "DoodleBarCode.java"


# instance fields
.field private bgColor:I

.field private fgColor:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/String;IIFFF)V
    .locals 1

    .line 23
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p7, p8}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mRect:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mSrcRect:Landroid/graphics/Rect;

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mDstRect:Landroid/graphics/Rect;

    .line 24
    sget-object p1, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 25
    invoke-virtual {p0, p7}, Lcn/highlight/lib_doodle/DoodleBarCode;->setPivotX(F)V

    .line 26
    invoke-virtual {p0, p8}, Lcn/highlight/lib_doodle/DoodleBarCode;->setPivotY(F)V

    .line 27
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p3, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mText:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->bgColor:I

    .line 30
    iput p5, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->fgColor:I

    .line 31
    invoke-virtual {p0, p6}, Lcn/highlight/lib_doodle/DoodleBarCode;->setSize(F)V

    .line 32
    invoke-virtual {p0, p7, p8}, Lcn/highlight/lib_doodle/DoodleBarCode;->setLocation(FF)V

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mDstRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBgColor()I
    .locals 1

    .line 57
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->bgColor:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 49
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFgColor()I
    .locals 1

    .line 61
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->fgColor:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public resetBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 66
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getSize()F

    move-result v0

    float-to-int v1, v0

    .line 70
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 72
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mText:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->bgColor:I

    .line 39
    iput p4, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->fgColor:I

    .line 40
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->resetBounds(Landroid/graphics/Rect;)V

    .line 41
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->setPivotX(F)V

    .line 42
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleBarCode;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->setPivotY(F)V

    .line 43
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 45
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBarCode;->refresh()V

    return-void
.end method
