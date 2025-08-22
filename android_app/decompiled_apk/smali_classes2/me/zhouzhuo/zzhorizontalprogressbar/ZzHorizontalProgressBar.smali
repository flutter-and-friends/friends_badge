.class public Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;
.super Landroid/view/View;
.source "ZzHorizontalProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;,
        Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;
    }
.end annotation


# instance fields
.field private bgColor:I

.field private bgPaint:Landroid/graphics/Paint;

.field private borderColor:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderWidth:I

.field private drawBorder:Z

.field private gradientFrom:I

.field private gradientPaint:Landroid/graphics/Paint;

.field private gradientTo:I

.field private max:I

.field private onProgressChangedListener:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;

.field private openGradient:Z

.field private openSecondGradient:Z

.field private padding:I

.field private progress:I

.field private progressColor:I

.field private progressPaint:Landroid/graphics/Paint;

.field private radius:I

.field private secondGradientFrom:I

.field private secondGradientPaint:Landroid/graphics/Paint;

.field private secondGradientTo:I

.field private secondProgress:I

.field private secondProgressColor:I

.field private secondProgressPaint:Landroid/graphics/Paint;

.field private secondProgressShape:I

.field private showMode:I

.field private showSecondProgress:Z

.field private showZeroPoint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder:Z

    .line 50
    iput v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder:Z

    .line 50
    iput v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    .line 72
    invoke-direct {p0, p1, p2}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 45
    iput-boolean p3, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder:Z

    .line 50
    iput p3, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    .line 77
    invoke-direct {p0, p1, p2}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 5

    .line 524
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v0

    .line 525
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 528
    :cond_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v1

    .line 529
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 535
    :cond_1
    div-int/lit8 v2, v0, 0x2

    int-to-float v3, v2

    iget-object v4, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v3, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 537
    iget-object v2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 539
    new-instance v2, Landroid/graphics/RectF;

    const/4 v4, 0x0

    int-to-float v0, v0

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 540
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBackgroundRectMode(Landroid/graphics/Canvas;)V
    .locals 4

    .line 592
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v0

    .line 593
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 596
    :cond_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v1

    .line 597
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 602
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 603
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBackgroundRoundRectMode(Landroid/graphics/Canvas;)V
    .locals 7

    .line 607
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v0

    .line 608
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 611
    :cond_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v1

    .line 612
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 617
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 618
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v3, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 5

    .line 544
    iget-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder:Z

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v0

    .line 546
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 549
    :cond_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v1

    .line 550
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 554
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 555
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawBorderRect(Landroid/graphics/Canvas;)V
    .locals 4

    .line 560
    iget-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder:Z

    if-eqz v0, :cond_2

    .line 561
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v0

    .line 562
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 565
    :cond_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v1

    .line 566
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 570
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 571
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawBorderRoundRect(Landroid/graphics/Canvas;)V
    .locals 7

    .line 576
    iget-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder:Z

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v0

    .line 578
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 581
    :cond_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v1

    .line 582
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    .line 586
    :cond_1
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v1, v6

    int-to-float v1, v1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {v2, v4, v5, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 587
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->radius:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v3, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 169
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v2

    .line 170
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 175
    :cond_0
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 176
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    int-to-float v3, v3

    div-float v3, v6, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 178
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v6

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 179
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    .line 182
    :cond_2
    iget-boolean v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openGradient:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_6

    .line 183
    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, v2, v11

    int-to-float v11, v11

    mul-float v11, v11, v3

    new-array v3, v8, [I

    new-array v15, v8, [F

    .line 187
    fill-array-data v15, :array_0

    .line 189
    iget v12, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    aput v12, v3, v9

    .line 192
    iget v12, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    aput v12, v3, v10

    .line 194
    new-instance v14, Landroid/graphics/LinearGradient;

    div-int/lit8 v13, v6, 0x2

    add-int v12, v7, v13

    int-to-float v12, v12

    int-to-float v5, v7

    add-int v10, v7, v13

    int-to-float v10, v10

    add-float/2addr v10, v11

    add-int/2addr v7, v6

    int-to-float v7, v7

    sget-object v19, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move/from16 v16, v12

    move-object v12, v14

    move v9, v13

    move/from16 v13, v16

    move-object v4, v14

    move v14, v5

    move-object v5, v15

    move v15, v10

    move/from16 v16, v7

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 200
    iget-object v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 202
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    goto :goto_1

    :cond_3
    div-int/lit8 v3, v2, 0x2

    .line 203
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v11, v4

    if-gez v4, :cond_5

    .line 205
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    if-nez v3, :cond_4

    .line 206
    iget-boolean v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    if-eqz v3, :cond_b

    .line 207
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    add-int v13, v3, v9

    int-to-float v4, v13

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v5, v9

    iget-object v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 210
    :cond_4
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    add-int v13, v3, v9

    int-to-float v4, v13

    add-int/2addr v3, v9

    int-to-float v3, v3

    int-to-float v5, v9

    iget-object v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 215
    :cond_5
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    int-to-float v7, v5

    int-to-float v9, v5

    int-to-float v10, v5

    add-float/2addr v10, v11

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v4, v7, v9, v10, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v3, v3

    .line 216
    iget-object v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 220
    :cond_6
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float v4, v4, v3

    .line 222
    iget-object v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressColor:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    if-nez v3, :cond_7

    .line 225
    iget-boolean v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    if-eqz v3, :cond_8

    .line 226
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v6, 0x2

    add-int v7, v3, v5

    int-to-float v7, v7

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v5, v5

    iget-object v9, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 229
    :cond_7
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v6, 0x2

    add-int v7, v3, v5

    int-to-float v7, v7

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v5, v5

    iget-object v9, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    :cond_8
    :goto_2
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    if-nez v3, :cond_9

    .line 233
    iget-boolean v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    if-eqz v3, :cond_a

    .line 234
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v6, 0x2

    add-int v7, v3, v5

    int-to-float v7, v7

    add-float/2addr v7, v4

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v5, v5

    iget-object v9, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 237
    :cond_9
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v6, 0x2

    add-int v7, v3, v5

    int-to-float v7, v7

    add-float/2addr v7, v4

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v5, v5

    iget-object v9, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v3, v5, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 240
    :cond_a
    :goto_3
    new-instance v3, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v7, v6, 0x2

    add-int v9, v5, v7

    int-to-float v9, v9

    int-to-float v10, v5

    add-int/2addr v7, v5

    int-to-float v7, v7

    add-float/2addr v7, v4

    add-int/2addr v5, v6

    int-to-float v4, v5

    invoke-direct {v3, v9, v10, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 241
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 245
    :cond_b
    :goto_4
    iget-boolean v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showSecondProgress:Z

    if-eqz v3, :cond_19

    .line 247
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    if-eqz v3, :cond_c

    .line 248
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v4, v4, v5

    int-to-float v3, v3

    div-float v5, v4, v3

    move/from16 v20, v5

    goto :goto_5

    :cond_c
    const/16 v20, 0x0

    .line 250
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v3

    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 251
    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_d

    add-int/lit8 v3, v3, -0x1

    .line 254
    :cond_d
    iget-boolean v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openSecondGradient:Z

    if-eqz v4, :cond_11

    .line 255
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float v5, v5, v20

    new-array v14, v8, [I

    new-array v15, v8, [F

    .line 259
    fill-array-data v15, :array_1

    .line 261
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientFrom:I

    const/4 v7, 0x0

    aput v6, v14, v7

    .line 264
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientTo:I

    const/4 v7, 0x1

    aput v6, v14, v7

    .line 266
    new-instance v6, Landroid/graphics/LinearGradient;

    div-int/lit8 v7, v3, 0x2

    add-int v9, v4, v7

    int-to-float v10, v9

    int-to-float v11, v4

    add-int v9, v4, v7

    int-to-float v9, v9

    add-float v12, v9, v5

    add-int/2addr v4, v3

    int-to-float v13, v4

    sget-object v16, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 272
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 274
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v4

    if-le v2, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v2

    :cond_e
    div-int/2addr v2, v8

    .line 275
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_10

    .line 277
    iget v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    if-nez v2, :cond_f

    .line 278
    iget-boolean v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    if-eqz v2, :cond_19

    .line 279
    iget v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    add-int v3, v2, v7

    int-to-float v3, v3

    add-int/2addr v2, v7

    int-to-float v2, v2

    int-to-float v4, v7

    iget-object v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 282
    :cond_f
    iget v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    add-int v3, v2, v7

    int-to-float v3, v3

    add-int/2addr v2, v7

    int-to-float v2, v2

    int-to-float v4, v7

    iget-object v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 286
    :cond_10
    new-instance v4, Landroid/graphics/RectF;

    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    int-to-float v7, v6

    int-to-float v8, v6

    int-to-float v9, v6

    add-float/2addr v9, v5

    add-int/2addr v6, v3

    int-to-float v3, v6

    invoke-direct {v4, v7, v8, v9, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, v2

    .line 287
    iget-object v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 291
    :cond_11
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressShape:I

    if-nez v4, :cond_14

    .line 293
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float v5, v5, v20

    .line 296
    div-int/lit8 v6, v3, 0x2

    add-int v7, v4, v6

    int-to-float v7, v7

    add-float/2addr v7, v5

    sub-int/2addr v2, v4

    sub-int/2addr v2, v6

    int-to-float v2, v2

    cmpg-float v2, v7, v2

    if-gez v2, :cond_13

    .line 298
    iget v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    if-nez v2, :cond_12

    .line 299
    iget-boolean v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    if-eqz v2, :cond_19

    add-int/2addr v4, v6

    int-to-float v2, v4

    int-to-float v3, v6

    .line 300
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_12
    add-int/2addr v4, v6

    int-to-float v2, v4

    int-to-float v3, v6

    .line 303
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    :cond_13
    int-to-float v2, v3

    sub-float/2addr v7, v2

    add-int/2addr v4, v6

    int-to-float v2, v4

    int-to-float v3, v6

    .line 306
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 311
    :cond_14
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v20

    .line 313
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    if-nez v4, :cond_15

    .line 316
    iget-boolean v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    if-eqz v4, :cond_16

    .line 317
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v3, 0x2

    add-int v6, v4, v5

    int-to-float v6, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v5

    iget-object v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 320
    :cond_15
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v3, 0x2

    add-int v6, v4, v5

    int-to-float v6, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v5

    iget-object v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 323
    :cond_16
    :goto_6
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    if-nez v4, :cond_17

    .line 324
    iget-boolean v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    if-eqz v4, :cond_18

    .line 325
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v3, 0x2

    add-int v6, v4, v5

    int-to-float v6, v6

    add-float/2addr v6, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v5

    iget-object v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 328
    :cond_17
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v5, v3, 0x2

    add-int v6, v4, v5

    int-to-float v6, v6

    add-float/2addr v6, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v5

    iget-object v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 331
    :cond_18
    :goto_7
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    div-int/lit8 v6, v3, 0x2

    add-int v7, v5, v6

    int-to-float v7, v7

    int-to-float v8, v5

    add-int/2addr v6, v5

    int-to-float v6, v6

    add-float/2addr v6, v2

    add-int/2addr v5, v3

    int-to-float v2, v5

    invoke-direct {v4, v7, v8, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 332
    iget-object v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_19
    :goto_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawProgressRectMode(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 340
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v2

    .line 341
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 346
    :cond_0
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 347
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    int-to-float v3, v3

    div-float v3, v6, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 349
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v6

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 350
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    .line 353
    :cond_2
    iget-boolean v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openGradient:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    .line 354
    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, v2, v11

    int-to-float v11, v11

    mul-float v11, v11, v3

    new-array v3, v8, [I

    new-array v15, v8, [F

    .line 358
    fill-array-data v15, :array_0

    .line 360
    iget v12, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    aput v12, v3, v9

    .line 363
    iget v12, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    aput v12, v3, v10

    .line 365
    new-instance v14, Landroid/graphics/LinearGradient;

    div-int/lit8 v12, v6, 0x2

    add-int v13, v7, v12

    int-to-float v13, v13

    int-to-float v5, v7

    add-int/2addr v12, v7

    int-to-float v12, v12

    add-float v16, v12, v11

    add-int/2addr v7, v6

    int-to-float v7, v7

    sget-object v19, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v12, v14

    move-object v10, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v7

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 371
    iget-object v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 373
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v3

    div-int/2addr v3, v8

    goto :goto_1

    :cond_3
    div-int/lit8 v3, v2, 0x2

    .line 375
    :goto_1
    new-instance v3, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    int-to-float v7, v5

    int-to-float v10, v5

    int-to-float v12, v5

    add-float/2addr v12, v11

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v3, v7, v10, v12, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 376
    iget-object v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 379
    :cond_4
    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    .line 381
    iget-object v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    new-instance v3, Landroid/graphics/RectF;

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    int-to-float v10, v7

    int-to-float v11, v7

    int-to-float v12, v7

    add-float/2addr v12, v5

    add-int/2addr v7, v6

    int-to-float v5, v7

    invoke-direct {v3, v10, v11, v12, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 383
    iget-object v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 387
    :goto_2
    iget-boolean v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showSecondProgress:Z

    if-eqz v3, :cond_8

    .line 389
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    if-eqz v3, :cond_5

    .line 390
    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    int-to-float v3, v3

    div-float/2addr v5, v3

    move/from16 v20, v5

    goto :goto_3

    :cond_5
    const/16 v20, 0x0

    .line 392
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v3

    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 393
    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, -0x1

    .line 396
    :cond_6
    iget-boolean v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openSecondGradient:Z

    if-eqz v4, :cond_7

    .line 397
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v20

    new-array v15, v8, [I

    new-array v5, v8, [F

    .line 401
    fill-array-data v5, :array_1

    .line 403
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientFrom:I

    aput v6, v15, v9

    .line 406
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientTo:I

    const/4 v7, 0x1

    aput v6, v15, v7

    .line 408
    new-instance v6, Landroid/graphics/LinearGradient;

    div-int/lit8 v7, v3, 0x2

    add-int v8, v4, v7

    int-to-float v11, v8

    int-to-float v12, v4

    add-int/2addr v7, v4

    int-to-float v7, v7

    add-float v13, v7, v2

    add-int/2addr v4, v3

    int-to-float v14, v4

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v10, v6

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 414
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 417
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    int-to-float v6, v5

    int-to-float v7, v5

    int-to-float v8, v5

    add-float/2addr v8, v2

    add-int/2addr v5, v3

    int-to-float v2, v5

    invoke-direct {v4, v6, v7, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 418
    iget-object v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 422
    :cond_7
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, v20

    .line 424
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    int-to-float v6, v5

    int-to-float v7, v5

    int-to-float v8, v5

    add-float/2addr v8, v2

    add-int/2addr v5, v3

    int-to-float v2, v5

    invoke-direct {v4, v6, v7, v8, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 426
    iget-object v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_8
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private drawProgressRoundRectMode(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 433
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getWidth()I

    move-result v2

    .line 434
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    .line 439
    :cond_0
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    .line 440
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    int-to-float v3, v3

    div-float v3, v6, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 442
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v6

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    const/4 v8, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    .line 443
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    .line 446
    :cond_2
    iget-boolean v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openGradient:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    .line 447
    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v11, v7, 0x2

    sub-int v11, v2, v11

    iget v12, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float v11, v11, v3

    new-array v3, v8, [I

    new-array v15, v8, [F

    .line 451
    fill-array-data v15, :array_0

    .line 453
    iget v12, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    aput v12, v3, v9

    .line 456
    iget v12, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    aput v12, v3, v10

    .line 458
    new-instance v14, Landroid/graphics/LinearGradient;

    div-int/lit8 v12, v6, 0x2

    add-int v13, v7, v12

    int-to-float v13, v13

    int-to-float v5, v7

    add-int/2addr v12, v7

    int-to-float v12, v12

    add-float v16, v12, v11

    add-int/2addr v7, v6

    int-to-float v7, v7

    sget-object v19, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v12, v14

    move-object v10, v14

    move v14, v5

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v7

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 464
    iget-object v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 466
    new-instance v3, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    div-int/lit8 v10, v7, 0x2

    add-int/2addr v10, v5

    int-to-float v10, v10

    div-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v5

    int-to-float v12, v12

    int-to-float v13, v5

    add-float/2addr v13, v11

    div-int/lit8 v11, v7, 0x2

    int-to-float v11, v11

    add-float/2addr v13, v11

    add-int/2addr v5, v6

    div-int/2addr v7, v8

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-direct {v3, v10, v12, v13, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 467
    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->radius:I

    int-to-float v6, v5

    int-to-float v5, v5

    iget-object v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 470
    :cond_3
    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float v5, v5, v3

    .line 472
    iget-object v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressColor:I

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 473
    new-instance v3, Landroid/graphics/RectF;

    iget v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    iget v10, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    div-int/lit8 v11, v10, 0x2

    add-int/2addr v11, v7

    int-to-float v11, v11

    div-int/lit8 v12, v10, 0x2

    add-int/2addr v12, v7

    int-to-float v12, v12

    int-to-float v13, v7

    add-float/2addr v13, v5

    div-int/lit8 v5, v10, 0x2

    int-to-float v5, v5

    add-float/2addr v13, v5

    add-int/2addr v7, v6

    div-int/2addr v10, v8

    sub-int/2addr v7, v10

    int-to-float v5, v7

    invoke-direct {v3, v11, v12, v13, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 474
    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->radius:I

    int-to-float v6, v5

    int-to-float v5, v5

    iget-object v7, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 478
    :goto_1
    iget-boolean v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showSecondProgress:Z

    if-eqz v3, :cond_7

    .line 480
    iget v3, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    if-eqz v3, :cond_4

    .line 481
    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    int-to-float v5, v5

    mul-float v5, v5, v4

    int-to-float v3, v3

    div-float/2addr v5, v3

    move/from16 v20, v5

    goto :goto_2

    :cond_4
    const/16 v20, 0x0

    .line 483
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->getHeight()I

    move-result v3

    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 484
    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    .line 487
    :cond_5
    iget-boolean v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openSecondGradient:Z

    if-eqz v4, :cond_6

    .line 488
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float v2, v2, v20

    new-array v15, v8, [I

    new-array v5, v8, [F

    .line 492
    fill-array-data v5, :array_1

    .line 494
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientFrom:I

    aput v6, v15, v9

    .line 497
    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientTo:I

    const/4 v7, 0x1

    aput v6, v15, v7

    .line 499
    new-instance v6, Landroid/graphics/LinearGradient;

    div-int/lit8 v7, v3, 0x2

    add-int v9, v4, v7

    iget v10, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    div-int/lit8 v11, v10, 0x2

    add-int/2addr v9, v11

    int-to-float v11, v9

    div-int/lit8 v9, v10, 0x2

    add-int/2addr v9, v4

    int-to-float v12, v9

    add-int/2addr v7, v4

    int-to-float v7, v7

    add-float/2addr v7, v2

    div-int/lit8 v9, v10, 0x2

    int-to-float v9, v9

    sub-float v13, v7, v9

    add-int/2addr v4, v3

    div-int/2addr v10, v8

    sub-int/2addr v4, v10

    int-to-float v14, v4

    sget-object v17, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v10, v6

    move-object/from16 v16, v5

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 505
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 508
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    int-to-float v7, v7

    div-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v5

    int-to-float v9, v9

    int-to-float v10, v5

    add-float/2addr v10, v2

    div-int/lit8 v2, v6, 0x2

    int-to-float v2, v2

    sub-float/2addr v10, v2

    add-int/2addr v5, v3

    div-int/2addr v6, v8

    sub-int/2addr v5, v6

    int-to-float v2, v5

    invoke-direct {v4, v7, v9, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 509
    iget v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->radius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 513
    :cond_6
    iget v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float v2, v2, v20

    .line 515
    iget-object v4, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 516
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    iget v6, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v5

    int-to-float v7, v7

    div-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v5

    int-to-float v9, v9

    int-to-float v10, v5

    add-float/2addr v10, v2

    div-int/lit8 v2, v6, 0x2

    int-to-float v2, v2

    sub-float/2addr v10, v2

    add-int/2addr v5, v3

    div-int/2addr v6, v8

    sub-int/2addr v5, v6

    int-to-float v2, v5

    invoke-direct {v4, v7, v9, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 517
    iget v2, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->radius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v5, v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-direct {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->initPaths()V

    return-void
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 86
    sget-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_max:I

    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    .line 88
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_progress:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    .line 89
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_bg_color:I

    const v1, -0xc0ae4b

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgColor:I

    .line 90
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_pb_color:I

    const v1, -0xbf7f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressColor:I

    .line 91
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_second_pb_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressColor:I

    .line 92
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    .line 93
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_show_zero_point:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showZeroPoint:Z

    .line 94
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_show_second_progress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showSecondProgress:Z

    .line 95
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_second_progress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    .line 96
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_show_second_point_shape:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressShape:I

    .line 97
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_open_gradient:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openGradient:Z

    .line 98
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_gradient_from:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    .line 99
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_gradient_to:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    .line 100
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_open_second_gradient:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openSecondGradient:Z

    .line 101
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_show_mode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    .line 102
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_second_gradient_from:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientFrom:I

    .line 103
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_second_gradient_to:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientTo:I

    .line 104
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_round_rect_radius:I

    const/16 v1, 0x14

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->radius:I

    .line 105
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_draw_border:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder:Z

    .line 106
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_border_width:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    .line 107
    sget p2, Lme/zhouzhuo/zzhorizontalprogressbar/R$styleable;->ZzHorizontalProgressBar_zpb_border_color:I

    const v0, -0xffe1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderColor:I

    .line 108
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPaths()V
    .locals 3

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    iget v2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    .line 127
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    .line 136
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 139
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getBgColor()I
    .locals 1

    .line 695
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgColor:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 841
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderColor:I

    return v0
.end method

.method public getGradientFrom()I
    .locals 1

    .line 797
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    return v0
.end method

.method public getGradientTo()I
    .locals 1

    .line 806
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 632
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 752
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    return v0
.end method

.method public getPercentage()I
    .locals 5

    .line 781
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 784
    :cond_0
    iget v1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 641
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    return v0
.end method

.method public getProgressColor()I
    .locals 1

    .line 742
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressColor:I

    return v0
.end method

.method public getSecondGradientFrom()I
    .locals 1

    .line 714
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientFrom:I

    return v0
.end method

.method public getSecondGradientTo()I
    .locals 1

    .line 723
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientTo:I

    return v0
.end method

.method public getSecondProgress()I
    .locals 1

    .line 668
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    return v0
.end method

.method public getSecondProgressColor()I
    .locals 1

    .line 732
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressColor:I

    return v0
.end method

.method public getSecondProgressShape()I
    .locals 1

    .line 686
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressShape:I

    return v0
.end method

.method public isOpenGradient()Z
    .locals 1

    .line 788
    iget-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openGradient:Z

    return v0
.end method

.method public isOpenSecondGradient()Z
    .locals 1

    .line 705
    iget-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openSecondGradient:Z

    return v0
.end method

.method public isShowSecondProgress()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showSecondProgress:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 145
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBackgroundRoundRectMode(Landroid/graphics/Canvas;)V

    .line 162
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawProgressRoundRectMode(Landroid/graphics/Canvas;)V

    .line 163
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorderRoundRect(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBackgroundRectMode(Landroid/graphics/Canvas;)V

    .line 156
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawProgressRectMode(Landroid/graphics/Canvas;)V

    .line 157
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorderRect(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 150
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawProgress(Landroid/graphics/Canvas;)V

    .line 151
    invoke-direct {p0, p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->drawBorder(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 628
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 623
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    .line 699
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgColor:I

    .line 700
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 701
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 815
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderColor:I

    .line 816
    iget-object p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 817
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setGradientColor(II)V
    .locals 0

    .line 821
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    .line 822
    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    .line 823
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setGradientColorAndBorderColor(III)V
    .locals 0

    .line 833
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    .line 834
    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    .line 835
    iput p3, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderColor:I

    .line 836
    iget-object p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderPaint:Landroid/graphics/Paint;

    iget p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->borderColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 837
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setGradientFrom(I)V
    .locals 0

    .line 801
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientFrom:I

    .line 802
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setGradientTo(I)V
    .locals 0

    .line 810
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->gradientTo:I

    .line 811
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 636
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    .line 637
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;)V
    .locals 0

    .line 846
    iput-object p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->onProgressChangedListener:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;

    return-void
.end method

.method public setOpenGradient(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openGradient:Z

    .line 793
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setOpenSecondGradient(Z)V
    .locals 0

    .line 709
    iput-boolean p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->openSecondGradient:Z

    .line 710
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setPadding(I)V
    .locals 0

    .line 756
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->padding:I

    .line 757
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 646
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    goto :goto_0

    .line 647
    :cond_0
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 648
    iput v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    goto :goto_0

    .line 650
    :cond_1
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    .line 652
    :goto_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    .line 653
    iget-object p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->onProgressChangedListener:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;

    if-eqz p1, :cond_2

    .line 654
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    iget v1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progress:I

    invoke-interface {p1, p0, v0, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;->onProgressChanged(Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;II)V

    :cond_2
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .line 746
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressColor:I

    .line 747
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setSecondGradientColor(II)V
    .locals 0

    .line 827
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientFrom:I

    .line 828
    iput p2, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientTo:I

    .line 829
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setSecondGradientFrom(I)V
    .locals 0

    .line 718
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientFrom:I

    .line 719
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setSecondGradientTo(I)V
    .locals 0

    .line 727
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondGradientTo:I

    .line 728
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setSecondProgress(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 673
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    goto :goto_0

    .line 674
    :cond_0
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    if-le p1, v0, :cond_1

    .line 675
    iput v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    goto :goto_0

    .line 677
    :cond_1
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    .line 679
    :goto_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    .line 680
    iget-object p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->onProgressChangedListener:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;

    if-eqz p1, :cond_2

    .line 681
    iget v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->max:I

    iget v1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgress:I

    invoke-interface {p1, p0, v0, v1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$OnProgressChangedListener;->onSecondProgressChanged(Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;II)V

    :cond_2
    return-void
.end method

.method public setSecondProgressColor(I)V
    .locals 1

    .line 736
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressColor:I

    .line 737
    iget-object v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 738
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setSecondProgressShape(I)V
    .locals 0

    .line 690
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->secondProgressShape:I

    .line 691
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setShowMode(Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;)V
    .locals 2

    .line 761
    sget-object v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$1;->$SwitchMap$me$zhouzhuo$zzhorizontalprogressbar$ZzHorizontalProgressBar$ShowMode:[I

    invoke-virtual {p1}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar$ShowMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 769
    :cond_0
    iput v1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    goto :goto_0

    .line 766
    :cond_1
    iput v0, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 763
    iput p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showMode:I

    .line 772
    :goto_0
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method

.method public setShowSecondProgress(Z)V
    .locals 0

    .line 663
    iput-boolean p1, p0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->showSecondProgress:Z

    .line 664
    invoke-virtual {p0}, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;->invalidate()V

    return-void
.end method
