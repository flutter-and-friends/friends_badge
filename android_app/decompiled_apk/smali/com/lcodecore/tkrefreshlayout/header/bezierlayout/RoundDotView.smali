.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;
.super Landroid/view/View;
.source "RoundDotView.java"


# instance fields
.field private cir_x:I

.field private mPath:Landroid/graphics/Paint;

.field private num:I

.field private r:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 15
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    const/4 p1, 0x7

    .line 16
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->num:I

    .line 34
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    const/16 v1, 0x72

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 46
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->num:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    const/4 v1, 0x0

    .line 47
    :goto_0
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->num:I

    if-ge v1, v2, :cond_0

    const/16 v2, 0x91

    const/16 v3, 0x69

    const/16 v4, 0x23

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 76
    :pswitch_0
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 72
    :pswitch_1
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 73
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 68
    :pswitch_2
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 69
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 64
    :pswitch_3
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 65
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 60
    :pswitch_4
    iget-object v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 56
    :pswitch_5
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 52
    :pswitch_6
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->cir_x:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x3

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->r:F

    iget-object v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->mPath:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCir_x(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/RoundDotView;->cir_x:I

    return-void
.end method
