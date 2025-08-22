.class public Lcn/highlight/lib_doodle/DoodleBitmap;
.super Lcn/highlight/lib_doodle/DoodleRotatableItemBase;
.source "DoodleBitmap.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;FFF)V
    .locals 1

    .line 20
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p4, p5}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 15
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mRect:Landroid/graphics/Rect;

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mSrcRect:Landroid/graphics/Rect;

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mDstRect:Landroid/graphics/Rect;

    .line 21
    sget-object p1, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBitmap;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 22
    invoke-virtual {p0, p4}, Lcn/highlight/lib_doodle/DoodleBitmap;->setPivotX(F)V

    .line 23
    invoke-virtual {p0, p5}, Lcn/highlight/lib_doodle/DoodleBitmap;->setPivotY(F)V

    .line 24
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p0, p3}, Lcn/highlight/lib_doodle/DoodleBitmap;->setSize(F)V

    .line 26
    invoke-virtual {p0, p4, p5}, Lcn/highlight/lib_doodle/DoodleBitmap;->setLocation(FF)V

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mDstRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public resetBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 45
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBitmap;->getSize()F

    move-result v0

    float-to-int v1, v0

    .line 49
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 30
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 31
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBitmap;->resetBounds(Landroid/graphics/Rect;)V

    .line 32
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBitmap;->setPivotX(F)V

    .line 33
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBitmap;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBitmap;->setPivotY(F)V

    .line 34
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBitmap;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBitmap;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 36
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBitmap;->refresh()V

    return-void
.end method
