.class public Lcom/geek/banner/transformer/complex/ScaleInTransformer;
.super Lcom/geek/banner/transformer/complex/BasePageTransformer;
.source "ScaleInTransformer.java"


# static fields
.field private static final DEFAULT_MIN_SCALE:F = 0.85f


# instance fields
.field private mMinScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/geek/banner/transformer/complex/BasePageTransformer;-><init>()V

    const v0, 0x3f59999a

    .line 11
    iput v0, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 18
    sget-object v0, Lcom/geek/banner/transformer/complex/NonPageTransformer;->INSTANCE:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    invoke-direct {p0, p1, v0}, Lcom/geek/banner/transformer/complex/ScaleInTransformer;-><init>(FLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method public constructor <init>(FLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/geek/banner/transformer/complex/BasePageTransformer;-><init>()V

    const v0, 0x3f59999a

    .line 11
    iput v0, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    .line 26
    iput p1, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    .line 27
    iput-object p2, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    return-void
.end method

.method public constructor <init>(Landroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 1

    const v0, 0x3f59999a

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/geek/banner/transformer/complex/ScaleInTransformer;-><init>(FLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method


# virtual methods
.method public pageTransform(Landroid/view/View;F)V
    .locals 5

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 36
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 37
    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 40
    iget p2, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 41
    iget p2, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    int-to-float p2, v0

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v2

    if-gtz v3, :cond_2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    add-float v1, p2, v2

    .line 46
    iget v4, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    sub-float/2addr v2, v4

    mul-float v1, v1, v2

    add-float/2addr v1, v4

    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    int-to-float v0, v0

    neg-float p2, p2

    mul-float p2, p2, v3

    add-float/2addr p2, v3

    mul-float v0, v0, p2

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    :cond_1
    sub-float p2, v2, p2

    .line 51
    iget v1, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p2

    add-float/2addr v2, v1

    .line 52
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    int-to-float v0, v0

    mul-float p2, p2, v3

    mul-float v0, v0, p2

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 58
    iget p2, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 59
    iget p2, p0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;->mMinScale:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method
