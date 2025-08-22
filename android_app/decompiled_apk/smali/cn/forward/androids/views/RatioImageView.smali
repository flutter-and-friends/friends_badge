.class public Lcn/forward/androids/views/RatioImageView;
.super Landroid/widget/ImageView;
.source "RatioImageView.java"


# instance fields
.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mDrawableSizeRatio:F

.field private mHeightRatio:F

.field private mIsHeightFitDrawableSizeRatio:Z

.field private mIsWidthFitDrawableSizeRatio:Z

.field private mMaxHeightWhenHeightFixDrawable:I

.field private mMaxWidthWhenWidthFixDrawable:I

.field private mWidthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcn/forward/androids/views/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    iput p1, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    const/4 p3, -0x1

    .line 29
    iput p3, p0, Lcn/forward/androids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    .line 30
    iput p3, p0, Lcn/forward/androids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    .line 33
    iput p1, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    .line 34
    iput p1, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    .line 36
    iput p3, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    .line 37
    iput p3, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    .line 49
    invoke-direct {p0, p2}, Lcn/forward/androids/views/RatioImageView;->init(Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 53
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    :cond_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/R$styleable;->RatioImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_is_width_fix_drawable_size_ratio:I

    iget-boolean v2, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 66
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_is_height_fix_drawable_size_ratio:I

    iget-boolean v2, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    .line 68
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_max_width_when_width_fix_drawable:I

    iget v2, p0, Lcn/forward/androids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    .line 70
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_max_height_when_height_fix_drawable:I

    iget v2, p0, Lcn/forward/androids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    .line 72
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_height_to_width_ratio:I

    iget v2, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    .line 74
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_width_to_height_ratio:I

    iget v2, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    .line 76
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_width:I

    iget v2, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    .line 77
    sget v1, Lcn/forward/androids/R$styleable;->RatioImageView_riv_height:I

    iget v2, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcn/forward/androids/views/SelectorAttrs;->obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private onSetDrawable()V
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-boolean v1, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    iget v1, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    .line 91
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    .line 92
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDrawableSizeRatio()F
    .locals 1

    .line 259
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    return v0
.end method

.method public getHeightRatio()F
    .locals 1

    .line 255
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    return v0
.end method

.method public getWidthRatio()F
    .locals 1

    .line 251
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    return v0
.end method

.method public isIsHeightFitDrawableSizeRatio()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    return v0
.end method

.method public isIsWidthFitDrawableSizeRatio()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 116
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 118
    iget-boolean v2, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-eqz v2, :cond_0

    .line 119
    iput v0, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    goto :goto_0

    .line 120
    :cond_0
    iget-boolean v2, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    .line 121
    iput v2, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    .line 125
    :cond_1
    :goto_0
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    goto :goto_1

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u9ad8\u5ea6\u548c\u5bbd\u5ea6\u4e0d\u80fd\u540c\u65f6\u8bbe\u7f6e\u767e\u5206\u6bd4\uff01\uff01"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_3
    :goto_1
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 131
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    if-lez v0, :cond_4

    goto :goto_2

    .line 134
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_2
    if-gtz v0, :cond_5

    .line 137
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    :cond_5
    int-to-float p1, v0

    .line 140
    iget p2, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 141
    iget-boolean v1, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcn/forward/androids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    if-lez v1, :cond_6

    if-le p1, v1, :cond_6

    int-to-float p1, v1

    div-float/2addr p1, p2

    float-to-int v0, p1

    move p1, v1

    .line 146
    :cond_6
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 147
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 146
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_4

    .line 148
    :cond_7
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 150
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    if-lez v0, :cond_8

    goto :goto_3

    .line 153
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_3
    if-gtz v0, :cond_9

    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    :cond_9
    int-to-float p1, v0

    .line 159
    iget p2, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 160
    iget-boolean v1, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcn/forward/androids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    if-lez v1, :cond_a

    if-le p1, v1, :cond_a

    int-to-float p1, v1

    div-float/2addr p1, p2

    float-to-int v0, p1

    move p1, v1

    .line 165
    :cond_a
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 166
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 165
    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_4

    .line 167
    :cond_b
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    if-lez v0, :cond_c

    iget v1, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    if-lez v1, :cond_c

    .line 170
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 171
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 170
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_4

    .line 173
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_4
    return-void
.end method

.method public setHeightRatio(F)V
    .locals 2

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    iput-boolean v0, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 222
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 224
    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    .line 225
    iput p1, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    .line 226
    iget v1, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    cmpl-float p1, p1, p1

    if-eqz p1, :cond_1

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 107
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-direct {p0}, Lcn/forward/androids/views/RatioImageView;->onSetDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    invoke-direct {p0}, Lcn/forward/androids/views/RatioImageView;->onSetDrawable()V

    return-void
.end method

.method public setIsFitDrawableSizeRatio(ZZ)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    .line 185
    iput v0, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    iput v0, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    .line 186
    iget-boolean v1, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 187
    iget-boolean v2, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    .line 188
    iput-boolean p1, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 189
    iput-boolean p2, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    .line 190
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 192
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    .line 193
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    goto :goto_0

    .line 195
    :cond_0
    iput v0, p0, Lcn/forward/androids/views/RatioImageView;->mDrawableSizeRatio:F

    .line 197
    :goto_0
    iget-boolean p1, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-ne v1, p1, :cond_1

    iget-boolean p1, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eq v2, p1, :cond_2

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 2

    .line 232
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    .line 233
    iget v1, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    .line 234
    iput p1, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    .line 235
    iput p2, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    .line 236
    iget p1, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredWidth:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcn/forward/androids/views/RatioImageView;->mDesiredHeight:I

    if-eq v1, p1, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setWidthRatio(F)V
    .locals 2

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcn/forward/androids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    iput-boolean v0, p0, Lcn/forward/androids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 209
    iget v0, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 210
    iput v1, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    .line 211
    iput p1, p0, Lcn/forward/androids/views/RatioImageView;->mWidthRatio:F

    cmpl-float p1, p1, p1

    if-nez p1, :cond_0

    .line 212
    iget p1, p0, Lcn/forward/androids/views/RatioImageView;->mHeightRatio:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcn/forward/androids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method
