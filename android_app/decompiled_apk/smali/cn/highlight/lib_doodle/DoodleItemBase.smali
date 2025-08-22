.class public abstract Lcn/highlight/lib_doodle/DoodleItemBase;
.super Ljava/lang/Object;
.source "DoodleItemBase.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodleItem;
.implements Lcn/highlight/lib_doodle/IDoodleItemListener;


# static fields
.field public static final MAX_SCALE:F = 2.4f

.field public static final MAX_SCALE_IMAGE:F = 5.2f

.field public static final MAX_SCALE_TEXT:F = 8.5f

.field public static final MIN_SCALE:F = 0.5f

.field public static final MIN_SCALE_IMAGE:F = 0.25f

.field public static final MIN_SCALE_TEXT:F = 0.5f


# instance fields
.field private mColor:Lcn/highlight/lib_doodle/IDoodleColor;

.field private mDoodle:Lcn/highlight/lib_doodle/IDoodle;

.field private mHasAdded:Z

.field private mIsDrawOptimize:Z

.field private mIsNeedClipOutside:Z

.field private mItemListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItemListener;",
            ">;"
        }
    .end annotation
.end field

.field private mItemRotate:F

.field private mLocation:Landroid/graphics/PointF;

.field private mMaxScale:F

.field private mMinScale:F

.field private mPen:Lcn/highlight/lib_doodle/IDoodlePen;

.field private mPivotX:F

.field private mPivotY:F

.field private mScale:F

.field private mShape:Lcn/highlight/lib_doodle/IDoodleShape;

.field private mSize:F


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcn/highlight/lib_doodle/DoodleItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/DoodlePaintAttrs;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mIsDrawOptimize:Z

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mIsNeedClipOutside:Z

    const/high16 v1, 0x3f000000    # 0.5f

    .line 36
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    const v1, 0x4019999a

    .line 37
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mScale:F

    .line 40
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mHasAdded:Z

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemListeners:Ljava/util/List;

    .line 49
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->setDoodle(Lcn/highlight/lib_doodle/IDoodle;)V

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->pen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    .line 52
    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->shape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    .line 53
    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->size()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mSize:F

    .line 54
    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodlePaintAttrs;->color()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    :cond_0
    return-void
.end method


# virtual methods
.method public addItemListener(Lcn/highlight/lib_doodle/IDoodleItemListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 309
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract doDraw(Landroid/graphics/Canvas;)V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 193
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->drawBefore(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 196
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    .line 197
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    iget v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotX:F

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotY:F

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 199
    iget v3, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemRotate:F

    invoke-virtual {p1, v3, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 200
    iget v3, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mScale:F

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 201
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->doDraw(Landroid/graphics/Canvas;)V

    .line 202
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 204
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->drawAfter(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawAfter(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected drawBefore(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getColor()Lcn/highlight/lib_doodle/IDoodleColor;
    .locals 1

    .line 181
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    return-object v0
.end method

.method public getDoodle()Lcn/highlight/lib_doodle/IDoodle;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    return-object v0
.end method

.method public getItemRotate()F
    .locals 1

    .line 104
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemRotate:F

    return v0
.end method

.method public getLocation()Landroid/graphics/PointF;
    .locals 1

    .line 142
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 304
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 290
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    return v0
.end method

.method public getPen()Lcn/highlight/lib_doodle/IDoodlePen;
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 81
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 92
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotY:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 276
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mScale:F

    return v0
.end method

.method public getShape()Lcn/highlight/lib_doodle/IDoodleShape;
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .line 169
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mSize:F

    return v0
.end method

.method public isDoodleEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedClipOutside()Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mIsNeedClipOutside:Z

    return v0
.end method

.method public onAdd()V
    .locals 1

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mHasAdded:Z

    return-void
.end method

.method public onPropertyChanged(I)V
    .locals 2

    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/IDoodleItemListener;

    invoke-interface {v1, p1}, Lcn/highlight/lib_doodle/IDoodleItemListener;->onPropertyChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRemove()V
    .locals 1

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mHasAdded:Z

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mHasAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    :cond_0
    return-void
.end method

.method public removeItemListener(Lcn/highlight/lib_doodle/IDoodleItemListener;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    const/4 p1, 0x6

    .line 187
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    .line 188
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setDoodle(Lcn/highlight/lib_doodle/IDoodle;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 60
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item\'s doodle object is not null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    return-void
.end method

.method public setDrawOptimize(Z)V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mIsDrawOptimize:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 216
    :cond_0
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mIsDrawOptimize:Z

    return-void
.end method

.method public setItemRotate(F)V
    .locals 0

    .line 97
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mItemRotate:F

    const/4 p1, 0x2

    .line 98
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    .line 99
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setLocation(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 115
    invoke-virtual {p0, p1, p2, v0}, Lcn/highlight/lib_doodle/DoodleItemBase;->setLocation(FFZ)V

    return-void
.end method

.method public setLocation(FFZ)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    .line 125
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 126
    iput p2, v2, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x7

    .line 128
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    if-eqz p3, :cond_0

    .line 131
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotX:F

    add-float/2addr p1, v0

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotX:F

    .line 132
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotY:F

    add-float/2addr p1, v1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotY:F

    const/4 p1, 0x3

    .line 133
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    const/4 p1, 0x4

    .line 134
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setMaxScale(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    .line 296
    :cond_0
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 299
    :cond_1
    :goto_0
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    .line 300
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->setScale(F)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 2

    .line 280
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    .line 282
    :cond_0
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 285
    :cond_1
    :goto_0
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    .line 286
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->setScale(F)V

    return-void
.end method

.method public setNeedClipOutside(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mIsNeedClipOutside:Z

    return-void
.end method

.method public setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    .line 153
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotX:F

    const/4 p1, 0x3

    .line 76
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 86
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPivotY:F

    const/4 p1, 0x4

    .line 87
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    return-void
.end method

.method public setScale(F)V
    .locals 3

    .line 254
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v0, v1, :cond_0

    .line 255
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    const/high16 v0, 0x41080000    # 8.5f

    .line 256
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    .line 258
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    const v0, 0x40a66666

    .line 259
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    goto :goto_0

    .line 261
    :cond_1
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    const v0, 0x4019999a

    .line 262
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    .line 264
    :goto_0
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMinScale:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_2

    goto :goto_1

    .line 266
    :cond_2
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mMaxScale:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, p1

    .line 269
    :goto_1
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mScale:F

    const/4 p1, 0x1

    .line 270
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    .line 271
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setShape(Lcn/highlight/lib_doodle/IDoodleShape;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    .line 164
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    .line 174
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleItemBase;->mSize:F

    const/4 p1, 0x5

    .line 175
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleItemBase;->onPropertyChanged(I)V

    .line 176
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleItemBase;->refresh()V

    return-void
.end method
