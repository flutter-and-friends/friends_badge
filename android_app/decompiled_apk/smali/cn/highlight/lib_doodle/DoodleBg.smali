.class public Lcn/highlight/lib_doodle/DoodleBg;
.super Lcn/highlight/lib_doodle/DoodleRotatableItemBase;
.source "DoodleBg.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mRect:Landroid/graphics/Rect;

.field private mSrcRect:Landroid/graphics/Rect;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/String;FFF)V
    .locals 1

    .line 21
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p5, p6}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mRect:Landroid/graphics/Rect;

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mSrcRect:Landroid/graphics/Rect;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mDstRect:Landroid/graphics/Rect;

    .line 22
    sget-object p1, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBg;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 23
    invoke-virtual {p0, p5}, Lcn/highlight/lib_doodle/DoodleBg;->setPivotX(F)V

    .line 24
    invoke-virtual {p0, p6}, Lcn/highlight/lib_doodle/DoodleBg;->setPivotY(F)V

    .line 25
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    .line 26
    iput-object p3, p0, Lcn/highlight/lib_doodle/DoodleBg;->text:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p4}, Lcn/highlight/lib_doodle/DoodleBg;->setSize(F)V

    .line 28
    invoke-virtual {p0, p5, p6}, Lcn/highlight/lib_doodle/DoodleBg;->setLocation(FF)V

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBg;->mDstRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBg;->text:Ljava/lang/String;

    return-object v0
.end method

.method public resetBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBg;->getSize()F

    move-result v0

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mDstRect:Landroid/graphics/Rect;

    float-to-int v2, v0

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v0, v3

    invoke-virtual {p1, v1, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mBitmap:Landroid/graphics/Bitmap;

    .line 33
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBg;->resetBounds(Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBg;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBg;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBg;->setPivotX(F)V

    .line 35
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBg;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleBg;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBg;->setPivotY(F)V

    .line 36
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBg;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleBg;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 37
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleBg;->refresh()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleBg;->text:Ljava/lang/String;

    return-void
.end method
