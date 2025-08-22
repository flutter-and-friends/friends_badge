.class public Lcn/highlight/lib_doodle/DrawUtil;
.super Ljava/lang/Object;
.source "DrawUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assistActivity(Landroid/view/Window;)V
    .locals 2

    .line 169
    new-instance v0, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/highlight/lib_doodle/DrawUtil$AndroidBug5497Workaround;-><init>(Landroid/view/Window;Lcn/highlight/lib_doodle/DrawUtil$1;)V

    return-void
.end method

.method public static computeAngle(FFFF)F
    .locals 7

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    div-float v2, v1, v0

    float-to-double v2, v2

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    mul-double v2, v2, v4

    double-to-float v2, v2

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    if-ltz v5, :cond_0

    cmpl-float v6, v1, v4

    if-nez v6, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    cmpl-float v6, v1, v4

    if-nez v6, :cond_1

    const/high16 v2, 0x43340000    # 180.0f

    goto :goto_1

    :cond_1
    if-nez v5, :cond_2

    cmpl-float v6, v1, v4

    if-lez v6, :cond_2

    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    cmpg-float v6, v1, v4

    if-gez v6, :cond_3

    const/high16 v2, 0x43870000    # 270.0f

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    cmpl-float v6, v1, v4

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    if-gez v0, :cond_5

    cmpl-float v6, v1, v4

    if-lez v6, :cond_5

    :goto_0
    add-float/2addr v2, v3

    goto :goto_1

    :cond_5
    if-gez v0, :cond_6

    cmpg-float v0, v1, v4

    if-gez v0, :cond_6

    goto :goto_0

    :cond_6
    if-lez v5, :cond_7

    cmpg-float v0, v1, v4

    if-gez v0, :cond_7

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr v2, v0

    .line 142
    :cond_7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "]:["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "] = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hzw"

    invoke-static {p1, p0}, Lcn/forward/androids/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static drawArrow(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 25
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    float-to-double v7, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v6, v9

    float-to-double v9, v6

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v13, v9, v11

    div-double v15, v13, v7

    .line 29
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double v13, v13, v9

    div-double/2addr v13, v11

    mul-double v11, v7, v7

    add-double/2addr v13, v11

    .line 30
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4014000000000000L    # 5.0

    sub-double/2addr v13, v15

    sub-float v24, v3, v1

    sub-float v25, v4, v2

    const/16 v21, 0x1

    move/from16 v17, v24

    move/from16 v18, v25

    move-wide/from16 v19, v5

    move-wide/from16 v22, v13

    .line 31
    invoke-static/range {v17 .. v23}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v15

    neg-double v5, v5

    move-wide/from16 v19, v5

    .line 33
    invoke-static/range {v17 .. v23}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v5

    float-to-double v13, v3

    const/4 v6, 0x0

    .line 35
    aget-wide v16, v15, v6

    move-wide/from16 v18, v7

    sub-double v6, v13, v16

    double-to-float v6, v6

    move-wide/from16 v16, v9

    float-to-double v8, v4

    const/4 v10, 0x1

    .line 36
    aget-wide v20, v15, v10

    move-wide/from16 v22, v11

    sub-double v10, v8, v20

    double-to-float v10, v10

    const/4 v7, 0x0

    .line 37
    aget-wide v20, v5, v7

    move-wide/from16 v26, v8

    sub-double v7, v13, v20

    double-to-float v7, v7

    const/4 v8, 0x1

    .line 38
    aget-wide v20, v5, v8

    move-wide/from16 v28, v13

    sub-double v12, v26, v20

    double-to-float v5, v12

    .line 40
    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    .line 41
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 42
    invoke-virtual {v11, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    invoke-virtual {v11, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    move-object/from16 v1, p5

    .line 45
    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    div-double v5, v16, v18

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    mul-double v10, v16, v16

    add-double v10, v10, v22

    .line 48
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    const/16 v19, 0x1

    move/from16 v15, v24

    move/from16 v16, v25

    move-wide/from16 v17, v5

    move-wide/from16 v20, v10

    .line 49
    invoke-static/range {v15 .. v21}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v2

    neg-double v5, v5

    move-wide/from16 v17, v5

    .line 50
    invoke-static/range {v15 .. v21}, Lcn/highlight/lib_doodle/DrawUtil;->rotateVec(FFDZD)[D

    move-result-object v5

    const/4 v6, 0x0

    .line 51
    aget-wide v9, v2, v6

    sub-double v13, v28, v9

    double-to-float v7, v13

    const/4 v8, 0x1

    .line 52
    aget-wide v9, v2, v8

    sub-double v9, v26, v9

    double-to-float v2, v9

    .line 53
    aget-wide v9, v5, v6

    sub-double v13, v28, v9

    double-to-float v6, v13

    .line 54
    aget-wide v8, v5, v8

    sub-double v8, v26, v8

    double-to-float v5, v8

    .line 55
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 56
    invoke-virtual {v8, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 57
    invoke-virtual {v8, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 58
    invoke-virtual {v8, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 59
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 60
    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 0

    .line 81
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 6

    cmpg-float v0, p1, p3

    if-gez v0, :cond_1

    cmpg-float v0, p2, p4

    if-gez v0, :cond_0

    .line 93
    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p4

    move v3, p3

    move v4, p2

    move-object v5, p5

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    cmpg-float v0, p2, p4

    if-gez v0, :cond_2

    move-object v0, p0

    move v1, p3

    move v2, p2

    move v3, p1

    move v4, p4

    move-object v5, p5

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p5

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;
    .locals 8

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 150
    iput p2, p0, Landroid/graphics/PointF;->x:F

    .line 151
    iput p3, p0, Landroid/graphics/PointF;->y:F

    return-object p0

    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    sub-float/2addr p2, p4

    float-to-double v0, p2

    float-to-double p1, p1

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    sub-float/2addr p3, p5

    float-to-double v4, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v4

    sub-double/2addr v2, v6

    float-to-double p3, p4

    add-double/2addr v2, p3

    double-to-float p3, v2

    iput p3, p0, Landroid/graphics/PointF;->x:F

    .line 157
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    mul-double v0, v0, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double v4, v4, p1

    add-double/2addr v0, v4

    float-to-double p1, p5

    add-double/2addr v0, p1

    double-to-float p1, v0

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-object p0
.end method

.method public static rotateVec(FFDZD)[D
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [D

    float-to-double v1, p0

    .line 68
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    float-to-double p0, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, p0

    sub-double/2addr v3, v5

    .line 69
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double p0, p0, p2

    add-double/2addr v1, p0

    if-eqz p4, :cond_0

    mul-double p0, v3, v3

    mul-double p2, v1, v1

    add-double/2addr p0, p2

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr v3, p0

    mul-double v3, v3, p5

    div-double/2addr v1, p0

    mul-double v1, v1, p5

    :cond_0
    const/4 p0, 0x0

    aput-wide v3, v0, p0

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public static scaleRect(Landroid/graphics/Rect;FFF)V
    .locals 2

    .line 217
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float v0, v0, p1

    sub-float v0, p2, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 218
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float v0, v0, p1

    sub-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 219
    iget p2, p0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    sub-float p2, p3, p2

    mul-float p2, p2, p1

    sub-float p2, p3, p2

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 220
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sub-float p2, p3, p2

    mul-float p1, p1, p2

    sub-float/2addr p3, p1

    add-float/2addr p3, v1

    float-to-int p1, p3

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
