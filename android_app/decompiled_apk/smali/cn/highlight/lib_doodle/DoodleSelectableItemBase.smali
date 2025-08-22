.class public abstract Lcn/highlight/lib_doodle/DoodleSelectableItemBase;
.super Lcn/highlight/lib_doodle/DoodleItemBase;
.source "DoodleSelectableItemBase.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodleSelectableItem;


# static fields
.field public static final ITEM_CAN_ROTATE_BOUND:I = 0x23

.field public static final ITEM_PADDING:I = 0x3


# instance fields
.field private mIsSelected:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTemp:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 27
    invoke-direct/range {v0 .. v5}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;IFF)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;IFF)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcn/highlight/lib_doodle/DoodleItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mIsSelected:Z

    .line 32
    invoke-virtual {p0, p4, p5}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->setLocation(FF)V

    int-to-float p1, p3

    .line 33
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->setItemRotate(F)V

    .line 35
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->resetBoundsScaled(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 8

    .line 65
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 66
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    .line 68
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v1

    .line 69
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float v5, p2, p1

    .line 71
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getItemRotate()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotX()F

    move-result p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, p2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotY()F

    move-result p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v7, p1, p2

    invoke-static/range {v2 .. v7}, Lcn/highlight/lib_doodle/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    .line 72
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 73
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->getUnitSize()F

    move-result p1

    .line 74
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 75
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 76
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 77
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 78
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public doDrawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 6

    .line 106
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v2

    div-float v2, v1, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotY()F

    move-result v4

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 111
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v2

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleScale()F

    move-result v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotX()F

    move-result v3

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotY()F

    move-result v4

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v0, v2, v3, v4}, Lcn/highlight/lib_doodle/DrawUtil;->scaleRect(Landroid/graphics/Rect;FFF)V

    .line 114
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getUnitSize()F

    move-result v0

    .line 115
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, v0

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 116
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 117
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 118
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 119
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const v3, 0x888888

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 122
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 126
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, -0x77000001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 131
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, 0x44888888

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 132
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, 0x3f4ccccd

    mul-float v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 133
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public drawAfter(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 5

    .line 93
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-eq v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 95
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v1

    .line 96
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getItemRotate()F

    move-result v1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotY()F

    move-result v3

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 99
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->doDrawAtTheTop(Landroid/graphics/Canvas;)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public drawBefore(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isDoodleEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mIsSelected:Z

    return v0
.end method

.method protected abstract resetBounds(Landroid/graphics/Rect;)V
.end method

.method protected resetBoundsScaled(Landroid/graphics/Rect;)V
    .locals 3

    .line 152
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->resetBounds(Landroid/graphics/Rect;)V

    .line 153
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotX()F

    move-result v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 154
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 155
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getScale()F

    move-result v2

    invoke-static {p1, v2, v0, v1}, Lcn/highlight/lib_doodle/DrawUtil;->scaleRect(Landroid/graphics/Rect;FFF)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->setScale(F)V

    .line 41
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 42
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->refresh()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->mIsSelected:Z

    xor-int/lit8 p1, p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->setNeedClipOutside(Z)V

    .line 148
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->refresh()V

    return-void
.end method

.method public setSize(F)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->setSize(F)V

    .line 54
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->resetBounds(Landroid/graphics/Rect;)V

    .line 55
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotX()F

    move-result p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getPivotY()F

    move-result v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->setLocation(FFZ)V

    .line 57
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleSelectableItemBase;->resetBoundsScaled(Landroid/graphics/Rect;)V

    return-void
.end method
