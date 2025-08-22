.class public Lcn/forward/androids/views/MaskImageView;
.super Lcn/forward/androids/views/PaddingImageView;
.source "MaskImageView.java"


# static fields
.field public static final MASK_LEVEL_BACKGROUND:I = 0x1

.field public static final MASK_LEVEL_FOREGROUND:I = 0x2


# instance fields
.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mIsIgnoreAlpha:Z

.field private mIsShowMaskOnClick:Z

.field private mLastColorFilter:Landroid/graphics/ColorFilter;

.field private mMaskColor:I

.field private mMaskLevel:I

.field private mPressedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcn/forward/androids/views/MaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/MaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcn/forward/androids/views/PaddingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcn/forward/androids/views/MaskImageView;->mIsIgnoreAlpha:Z

    .line 24
    iput-boolean p1, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    const p1, 0xffffff

    .line 25
    iput p1, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 26
    iput p1, p0, Lcn/forward/androids/views/MaskImageView;->mPressedAlpha:F

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcn/forward/androids/views/MaskImageView;->mMaskLevel:I

    .line 30
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/MaskImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 44
    invoke-direct {p0, p2}, Lcn/forward/androids/views/MaskImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/R$styleable;->MaskImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    sget v1, Lcn/forward/androids/R$styleable;->MaskImageView_miv_is_ignore_alpha:I

    iget-boolean v2, p0, Lcn/forward/androids/views/MaskImageView;->mIsIgnoreAlpha:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/forward/androids/views/MaskImageView;->mIsIgnoreAlpha:Z

    .line 54
    sget v1, Lcn/forward/androids/R$styleable;->MaskImageView_miv_is_show_mask_on_click:I

    iget-boolean v2, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    .line 55
    sget v1, Lcn/forward/androids/R$styleable;->MaskImageView_miv_mask_color:I

    iget v2, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    .line 56
    sget v1, Lcn/forward/androids/R$styleable;->MaskImageView_miv_mask_level:I

    iget v2, p0, Lcn/forward/androids/views/MaskImageView;->mMaskLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/MaskImageView;->mMaskLevel:I

    .line 57
    sget v1, Lcn/forward/androids/R$styleable;->MaskImageView_miv_pressed_alpha:I

    iget v2, p0, Lcn/forward/androids/views/MaskImageView;->mPressedAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcn/forward/androids/views/MaskImageView;->mPressedAlpha:F

    .line 59
    iget v1, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {p0, v1}, Lcn/forward/androids/views/MaskImageView;->setMaskColor(I)V

    .line 61
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcn/forward/androids/views/SelectorAttrs;->obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setColorMatrix([F)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/forward/androids/views/MaskImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 68
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v0, p0, Lcn/forward/androids/views/MaskImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object p1, p0, Lcn/forward/androids/views/MaskImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method private setDrawableColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 77
    iget v0, p0, Lcn/forward/androids/views/MaskImageView;->mMaskLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 78
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcn/forward/androids/views/MaskImageView;->mLastColorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 86
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcn/forward/androids/views/MaskImageView;->mLastColorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_2

    return-void

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 94
    :cond_3
    :goto_0
    iput-object p1, p0, Lcn/forward/androids/views/MaskImageView;->mLastColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcn/forward/androids/views/MaskImageView;->mIsIgnoreAlpha:Z

    if-eqz v0, :cond_1

    .line 107
    iget-boolean v0, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/forward/androids/views/MaskImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, v0}, Lcn/forward/androids/views/MaskImageView;->setDrawableColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Lcn/forward/androids/views/MaskImageView;->setDrawableColorFilter(Landroid/graphics/ColorFilter;)V

    .line 114
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcn/forward/androids/views/PaddingImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 156
    invoke-super {p0}, Lcn/forward/androids/views/PaddingImageView;->drawableStateChanged()V

    .line 157
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public getMaskColor()I
    .locals 1

    .line 188
    iget v0, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    return v0
.end method

.method public getMaskLevel()I
    .locals 1

    .line 228
    iget v0, p0, Lcn/forward/androids/views/MaskImageView;->mMaskLevel:I

    return v0
.end method

.method public getShadeColor()I
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->getMaskColor()I

    move-result v0

    return v0
.end method

.method public isIsIgnoreAlpha()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcn/forward/androids/views/MaskImageView;->mIsIgnoreAlpha:Z

    return v0
.end method

.method public isIsShowMaskOnClick()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcn/forward/androids/views/MaskImageView;->mIsIgnoreAlpha:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0}, Lcn/forward/androids/views/MaskImageView;->setDrawableColorFilter(Landroid/graphics/ColorFilter;)V

    .line 122
    iget v0, p0, Lcn/forward/androids/views/MaskImageView;->mMaskLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 123
    iget-boolean v0, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget v0, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcn/forward/androids/views/PaddingImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-super {p0, p1}, Lcn/forward/androids/views/PaddingImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    iget-boolean v0, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    iget v0, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-super {p0, p1}, Lcn/forward/androids/views/PaddingImageView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setIsIgnoreAlpha(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcn/forward/androids/views/MaskImageView;->mIsIgnoreAlpha:Z

    .line 166
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setIsShowMaskOnClick(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcn/forward/androids/views/MaskImageView;->mIsShowMaskOnClick:Z

    .line 175
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 7

    .line 213
    iput p1, p0, Lcn/forward/androids/views/MaskImageView;->mMaskColor:I

    .line 215
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    const v3, 0x3e19999a

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    sub-float v2, v1, v0

    const v3, 0x3f933333

    mul-float v2, v2, v3

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    .line 219
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    const/4 v6, 0x4

    aput v5, v3, v6

    const/4 v5, 0x5

    aput v4, v3, v5

    const/4 v5, 0x6

    aput v2, v3, v5

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v5, 0x8

    aput v4, v3, v5

    .line 220
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v0

    const/16 v6, 0x9

    aput v5, v3, v6

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v5, 0xc

    aput v2, v3, v5

    const/16 v2, 0xd

    aput v4, v3, v2

    .line 221
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/16 v0, 0xe

    aput p1, v3, v0

    const/16 p1, 0xf

    aput v4, v3, p1

    const/16 p1, 0x10

    aput v4, v3, p1

    const/16 p1, 0x11

    aput v4, v3, p1

    const/16 p1, 0x12

    aput v1, v3, p1

    const/16 p1, 0x13

    aput v4, v3, p1

    .line 218
    invoke-direct {p0, v3}, Lcn/forward/androids/views/MaskImageView;->setColorMatrix([F)V

    .line 224
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setMaskLevel(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcn/forward/androids/views/MaskImageView;->mMaskLevel:I

    .line 233
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcn/forward/androids/views/PaddingImageView;->setPressed(Z)V

    if-eqz p1, :cond_0

    .line 145
    iget p1, p0, Lcn/forward/androids/views/MaskImageView;->mPressedAlpha:F

    invoke-virtual {p0, p1}, Lcn/forward/androids/views/MaskImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 147
    invoke-virtual {p0, p1}, Lcn/forward/androids/views/MaskImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public setPressedAlpha(F)V
    .locals 0

    .line 237
    iput p1, p0, Lcn/forward/androids/views/MaskImageView;->mPressedAlpha:F

    .line 238
    invoke-virtual {p0}, Lcn/forward/androids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setShadeColor(I)V
    .locals 0

    .line 184
    invoke-virtual {p0, p1}, Lcn/forward/androids/views/MaskImageView;->setMaskColor(I)V

    return-void
.end method
