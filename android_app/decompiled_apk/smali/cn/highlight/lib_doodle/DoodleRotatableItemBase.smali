.class public abstract Lcn/highlight/lib_doodle/DoodleRotatableItemBase;
.super Lcn/highlight/lib_doodle/DoodleSelectableItemBase;
.source "DoodleRotatableItemBase.java"


# instance fields
.field private mIsRotating:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTemp:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 16
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mTemp:Landroid/graphics/PointF;

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mIsRotating:Z

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;IFF)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;IFF)V

    .line 16
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mTemp:Landroid/graphics/PointF;

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mIsRotating:Z

    .line 19
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public canRotate(FF)Z
    .locals 9

    .line 161
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v1

    .line 164
    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v2

    .line 165
    iget p1, v1, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, p1

    .line 167
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mTemp:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getItemRotate()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float v4, p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v7, p1, p2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v8, p1, p2

    invoke-static/range {v3 .. v8}, Lcn/highlight/lib_doodle/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p2

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodle;->getUnitSize()F

    move-result p2

    const/high16 v1, 0x41500000    # 13.0f

    mul-float p2, p2, v1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v1

    div-float/2addr p2, v1

    .line 172
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 173
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 174
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 175
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x420c0000    # 35.0f

    .line 176
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getUnitSize()F

    move-result v0

    mul-float v0, v0, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v2

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public doDrawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x888888

    const/4 v6, 0x0

    const/high16 v11, 0x40400000    # 3.0f

    const v12, 0x44888888

    const v13, -0x77002900

    const v14, -0x77000001

    const/high16 v8, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 83
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-eq v1, v2, :cond_5

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v1

    div-float v1, v8, v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v16

    div-float v9, v8, v16

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float v10, v16, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v15, v16, v15

    invoke-virtual {v7, v1, v9, v10, v15}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 87
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v9

    invoke-interface {v9}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v15

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v15, v3

    invoke-static {v1, v9, v10, v15}, Lcn/highlight/lib_doodle/DrawUtil;->scaleRect(Landroid/graphics/Rect;FFF)V

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getUnitSize()F

    move-result v9

    .line 91
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v11, v11, v9

    sub-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 92
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 93
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 94
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v3, v11

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 95
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    :goto_0
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    mul-float v4, v4, v9

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 111
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const v3, 0x3f4ccccd

    mul-float v10, v9, v3

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    :goto_1
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v1

    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    int-to-float v4, v1

    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v5, 0x41980000    # 19.0f

    mul-float v11, v9, v5

    add-float v5, v1, v11

    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    .line 124
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    int-to-float v6, v1

    iget-object v13, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v14, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v13

    .line 123
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x41d80000    # 27.0f

    mul-float v13, v9, v2

    add-float/2addr v1, v13

    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v15, v9, v3

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v15, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 127
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v4, v1, v11

    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 129
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v13

    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v15, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 135
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    mul-float v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float v10, v2, v9

    sub-float v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    sub-float v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    add-float v5, v1, v10

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v9

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    sub-float v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    sub-float v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    add-float v5, v1, v10

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 146
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v9, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {v7, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_4

    .line 34
    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v1

    div-float v1, v8, v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v2

    div-float v2, v8, v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v15

    invoke-virtual {v7, v1, v2, v3, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 36
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 37
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v15

    invoke-static {v1, v2, v3, v10}, Lcn/highlight/lib_doodle/DrawUtil;->scaleRect(Landroid/graphics/Rect;FFF)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getUnitSize()F

    move-result v10

    .line 40
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float v11, v11, v10

    sub-float/2addr v2, v11

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 41
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v11

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 42
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 43
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v11

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 44
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 45
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 54
    :cond_4
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    :goto_3
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    mul-float v4, v4, v10

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, 0x3f4ccccd

    mul-float v3, v10, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 62
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 65
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    mul-float v8, v8, v10

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float v11, v2, v10

    sub-float v2, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    sub-float v3, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    add-float v5, v1, v11

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v10

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    sub-float v2, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    sub-float v3, v1, v11

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    add-float v5, v1, v11

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    :goto_4
    return-void
.end method

.method public isRotating()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mIsRotating:Z

    return v0
.end method

.method public setIsRotating(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->mIsRotating:Z

    return-void
.end method
