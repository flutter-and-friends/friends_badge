.class public Lcn/highlight/core/zxing/view/MyImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "MyImageView.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcn/highlight/core/zxing/view/MyImageView;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcn/highlight/core/zxing/view/MyImageView;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dp2px(F)I
    .locals 2

    .line 53
    iget-object v0, p0, Lcn/highlight/core/zxing/view/MyImageView;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 53
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    invoke-virtual {p0}, Lcn/highlight/core/zxing/view/MyImageView;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Lcn/highlight/core/zxing/view/MyImageView;->getHeight()I

    move-result v1

    .line 34
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x9

    const/16 v3, 0xbb

    const/4 v4, 0x7

    .line 35
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    .line 36
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 37
    invoke-virtual {p0, v2}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v9, 0x41900000    # 18.0f

    .line 39
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    int-to-float v6, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 40
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    sub-int v2, v1, v2

    int-to-float v4, v2

    int-to-float v10, v1

    const/4 v5, 0x0

    move-object v2, p1

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    int-to-float v5, v2

    move-object v2, p1

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v3, v2

    int-to-float v11, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v5, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    int-to-float v6, v2

    move-object v2, p1

    move v3, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    move-object v2, p1

    move v6, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p0, v9}, Lcn/highlight/core/zxing/view/MyImageView;->t(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    move v4, v10

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    return-void
.end method

.method public t(F)I
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcn/highlight/core/zxing/view/MyImageView;->dp2px(F)I

    move-result p1

    return p1
.end method
