.class public Lcom/geek/banner/transformer/simple/BackgroundToForegroundTransformer;
.super Lcom/geek/banner/transformer/simple/ABaseTransformer;
.source "BackgroundToForegroundTransformer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/geek/banner/transformer/simple/ABaseTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransform(Landroid/view/View;F)V
    .locals 5

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr v2, p2

    .line 27
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_0
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v4}, Lcom/geek/banner/transformer/simple/BackgroundToForegroundTransformer;->min(FF)F

    move-result v2

    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    mul-float v2, v1, v4

    .line 31
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    mul-float v0, v0, v4

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    if-gez v3, :cond_1

    mul-float v1, v1, p2

    goto :goto_1

    :cond_1
    neg-float v0, v1

    mul-float v0, v0, p2

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float v1, v0, p2

    .line 33
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
