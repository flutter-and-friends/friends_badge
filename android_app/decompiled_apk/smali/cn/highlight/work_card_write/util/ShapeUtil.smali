.class public Lcn/highlight/work_card_write/util/ShapeUtil;
.super Ljava/lang/Object;
.source "ShapeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateGraph(IIIII)Landroid/graphics/Bitmap;
    .locals 1

    mul-int/lit8 p2, p2, 0x32

    mul-int/lit8 p3, p3, 0x32

    mul-int/lit8 p4, p4, 0x32

    .line 24
    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 25
    invoke-static {p0, p2, p3, p4}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateLine(IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 26
    :cond_0
    sget-object p4, Lcn/highlight/lib_doodle/DoodleShape;->FILL_TRIANGLE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result p4

    if-ne p1, p4, :cond_1

    .line 27
    invoke-static {p0, p2, p3}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateTriangles(III)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 28
    :cond_1
    sget-object p4, Lcn/highlight/lib_doodle/DoodleShape;->FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result p4

    if-ne p1, p4, :cond_2

    .line 29
    invoke-static {p0, p2, p3}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateOval(III)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_2
    sget-object p4, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result p4

    if-ne p1, p4, :cond_3

    .line 31
    invoke-static {p0, p2, p3}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateRectangle(III)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static generateLine(IIII)Landroid/graphics/Bitmap;
    .locals 8

    .line 110
    div-int/lit8 p2, p2, 0x32

    mul-int/lit8 v0, p2, 0x5

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 111
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 113
    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p0, v0

    .line 114
    invoke-virtual {v7, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    int-to-float p3, p3

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float p3, p3, v0

    const/4 v0, 0x0

    aput p3, p0, v0

    const/4 v0, 0x1

    aput p3, p0, v0

    .line 116
    new-instance p3, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 117
    invoke-virtual {v7, p3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    int-to-float p0, p2

    const/high16 p2, 0x40200000    # 2.5f

    mul-float v6, p0, p2

    int-to-float v5, p1

    const/4 v3, 0x0

    move v4, v6

    .line 118
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static generateOval(III)Landroid/graphics/Bitmap;
    .locals 4

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 75
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    new-instance p0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {p0, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static generateRectangle(III)Landroid/graphics/Bitmap;
    .locals 7

    .line 92
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 95
    invoke-virtual {v6, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 96
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 97
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static generateTriangles(III)Landroid/graphics/Bitmap;
    .locals 5

    .line 39
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 41
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 42
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    int-to-float p1, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p1, v3

    int-to-float p2, p2

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0, v4, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 54
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 55
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 56
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 59
    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method
