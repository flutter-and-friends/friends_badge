.class public Lnet/kotlinandroid/customlibrary/view/onImageCenter;
.super Ljava/lang/Object;
.source "onImageCenter.java"

# interfaces
.implements Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;


# instance fields
.field private context:Landroid/content/Context;

.field private mBmp:Landroid/graphics/Bitmap;

.field private mTarget:Landroid/graphics/Bitmap;

.field private rid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->context:Landroid/content/Context;

    .line 21
    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->rid:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->mBmp:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFI)V
    .locals 5

    .line 28
    iget-object p6, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->mTarget:Landroid/graphics/Bitmap;

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    if-nez p6, :cond_0

    .line 29
    iget-object p6, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->mBmp:Landroid/graphics/Bitmap;

    iget v2, p2, Landroid/graphics/RectF;->right:F

    mul-float v3, p5, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    float-to-int v3, v4

    invoke-static {p6, v2, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p6

    iput-object p6, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->mTarget:Landroid/graphics/Bitmap;

    .line 32
    :cond_0
    iget-object p6, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->mTarget:Landroid/graphics/Bitmap;

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lnet/kotlinandroid/customlibrary/view/onImageCenter;->mTarget:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p6, v1, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p6

    .line 33
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 34
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p4, v2

    .line 35
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 36
    iget p2, p2, Landroid/graphics/RectF;->right:F

    mul-float p5, p5, v0

    sub-float/2addr p2, p5

    div-float/2addr p2, v0

    invoke-virtual {p1, p3, p4, p2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 37
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    invoke-virtual {p1, p6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
