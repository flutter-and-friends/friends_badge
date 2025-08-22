.class public Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;
.super Lcom/geek/banner/transformer/complex/BasePageTransformer;
.source "RotateDownPageTransformer.java"


# static fields
.field private static final DEFAULT_MAX_ROTATE:F = 15.0f


# instance fields
.field private mMaxRotate:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/geek/banner/transformer/complex/BasePageTransformer;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 10
    iput v0, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mMaxRotate:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 16
    sget-object v0, Lcom/geek/banner/transformer/complex/NonPageTransformer;->INSTANCE:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-direct {p0, p1, v0}, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;-><init>(FLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method public constructor <init>(FLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/geek/banner/transformer/complex/BasePageTransformer;-><init>()V

    const/high16 v0, 0x41700000    # 15.0f

    .line 10
    iput v0, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mMaxRotate:F

    .line 24
    iput-object p2, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    .line 25
    iput p1, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mMaxRotate:F

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 1

    const/high16 v0, 0x41700000    # 15.0f

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;-><init>(FLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method


# virtual methods
.method public pageTransform(Landroid/view/View;F)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_0

    .line 33
    iget p2, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mMaxRotate:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 42
    iget v0, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mMaxRotate:F

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    sub-float/2addr v0, p2

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 46
    iget v0, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mMaxRotate:F

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 50
    :cond_2
    iget p2, p0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;->mMaxRotate:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    return-void
.end method
