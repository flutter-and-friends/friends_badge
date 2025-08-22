.class public Lcn/highlight/lib_doodle/CopyLocation;
.super Ljava/lang/Object;
.source "CopyLocation.java"


# instance fields
.field private mCopyStartX:F

.field private mCopyStartY:F

.field private mIsCopying:Z

.field private mIsRelocating:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mTemp:Landroid/graphics/PointF;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsRelocating:Z

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsCopying:Z

    .line 24
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTemp:Landroid/graphics/PointF;

    .line 27
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    .line 28
    iget-object v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 29
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 30
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    return-void
.end method


# virtual methods
.method public contains(FFF)Z
    .locals 2

    .line 114
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    sub-float v1, v0, p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v0

    iget p1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    sub-float v0, p1, p2

    sub-float/2addr p1, p2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    mul-float p3, p3, p3

    cmpg-float p1, v1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copy()Lcn/highlight/lib_doodle/CopyLocation;
    .locals 2

    .line 118
    new-instance v0, Lcn/highlight/lib_doodle/CopyLocation;

    invoke-direct {v0}, Lcn/highlight/lib_doodle/CopyLocation;-><init>()V

    .line 119
    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartX:F

    iput v1, v0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartX:F

    .line 120
    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartY:F

    iput v1, v0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartY:F

    .line 121
    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartX:F

    iput v1, v0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartX:F

    .line 122
    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartY:F

    iput v1, v0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartY:F

    .line 123
    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    iput v1, v0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    .line 124
    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    iput v1, v0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    return-object v0
.end method

.method public drawItSelf(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    div-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    const v1, -0x5599999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p2, v2

    const/high16 v3, 0x41000000    # 8.0f

    div-float v3, p2, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, v3, v4}, Lcn/highlight/lib_doodle/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 95
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    div-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    const v1, -0x55000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    const/high16 v3, 0x42000000    # 32.0f

    div-float/2addr p2, v3

    add-float/2addr p2, v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1, p2, v3}, Lcn/highlight/lib_doodle/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 100
    iget-object p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-boolean p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsCopying:Z

    if-nez p2, :cond_0

    .line 102
    iget-object p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x44ff0000    # 2040.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    iget-object v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, p2, v0, v2, v1}, Lcn/highlight/lib_doodle/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    const v0, 0x44000088

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    iget-object v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, p2, v0, v2, v1}, Lcn/highlight/lib_doodle/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public getCopyStartX()F
    .locals 1

    .line 42
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartX:F

    return v0
.end method

.method public getCopyStartY()F
    .locals 1

    .line 46
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartY:F

    return v0
.end method

.method public getTouchStartX()F
    .locals 1

    .line 34
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartX:F

    return v0
.end method

.method public getTouchStartY()F
    .locals 1

    .line 38
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartY:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 50
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 54
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    return v0
.end method

.method public isCopying()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsCopying:Z

    return v0
.end method

.method public isRelocating()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsRelocating:Z

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    iput v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    iput v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartY:F

    iput v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartX:F

    iput v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartY:F

    iput v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartX:F

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsRelocating:Z

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsCopying:Z

    return-void
.end method

.method public setCopying(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsCopying:Z

    return-void
.end method

.method public setRelocating(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mIsRelocating:Z

    return-void
.end method

.method public setStartPosition(FF)V
    .locals 2

    .line 79
    iget v0, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    iget v1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/highlight/lib_doodle/CopyLocation;->setStartPosition(FFFF)V

    return-void
.end method

.method public setStartPosition(FFFF)V
    .locals 0

    .line 83
    iput p3, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartX:F

    .line 84
    iput p4, p0, Lcn/highlight/lib_doodle/CopyLocation;->mCopyStartY:F

    .line 85
    iput p1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartX:F

    .line 86
    iput p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mTouchStartY:F

    return-void
.end method

.method public updateLocation(FF)V
    .locals 0

    .line 74
    iput p1, p0, Lcn/highlight/lib_doodle/CopyLocation;->mX:F

    .line 75
    iput p2, p0, Lcn/highlight/lib_doodle/CopyLocation;->mY:F

    return-void
.end method
