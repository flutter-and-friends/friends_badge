.class public Lcn/forward/androids/views/StringScrollPicker;
.super Lcn/forward/androids/views/ScrollPickerView;
.source "StringScrollPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/forward/androids/views/ScrollPickerView<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mEndColor:I

.field private mMaxLineWidth:I

.field private mMaxTextSize:I

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private mMinTextSize:I

.field private mPaint:Landroid/text/TextPaint;

.field private mStartColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/StringScrollPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcn/forward/androids/views/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x18

    .line 33
    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    const/16 p1, 0x20

    .line 34
    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    const/high16 p1, -0x1000000

    .line 36
    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mStartColor:I

    const p3, -0x777778

    .line 37
    iput p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    const/4 p3, -0x1

    .line 39
    iput p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    .line 40
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    .line 51
    new-instance p3, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    .line 52
    iget-object p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p3, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    invoke-direct {p0, p2}, Lcn/forward/androids/views/StringScrollPicker;->init(Landroid/util/AttributeSet;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    const-string v0, "one"

    const-string v1, "two"

    const-string v2, "three"

    const-string v3, "four"

    const-string v4, "five"

    const-string v5, "six"

    const-string v6, "seven"

    const-string v7, "eight"

    const-string v8, "nine"

    const-string v9, "ten"

    const-string v10, "eleven"

    const-string v11, "twelve"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Lcn/forward/androids/views/StringScrollPicker;->setData(Ljava/util/List;)V

    return-void
.end method

.method private computeColor(IIF)V
    .locals 3

    .line 217
    iget v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_5

    .line 230
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 231
    iget p2, p0, Lcn/forward/androids/views/StringScrollPicker;->mStartColor:I

    iget p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    invoke-static {p2, p3, p1}, Lcn/forward/androids/utils/ColorUtil;->computeGradientColor(IIF)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    cmpg-float v2, p3, v0

    if-ltz v2, :cond_3

    :cond_2
    if-ne p1, v1, :cond_4

    cmpl-float p1, p3, v0

    if-lez p1, :cond_4

    .line 223
    :cond_3
    iget v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    goto :goto_1

    :cond_4
    int-to-float p1, p2

    .line 225
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float p2, p1, p2

    div-float/2addr p2, p1

    .line 227
    iget p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mStartColor:I

    iget p3, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    invoke-static {p1, p3, p2}, Lcn/forward/androids/utils/ColorUtil;->computeGradientColor(IIF)I

    move-result v0

    .line 234
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcn/forward/androids/views/StringScrollPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/R$styleable;->StringScrollPicker:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    sget v0, Lcn/forward/androids/R$styleable;->StringScrollPicker_spv_min_text_size:I

    iget v1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    .line 69
    sget v0, Lcn/forward/androids/R$styleable;->StringScrollPicker_spv_max_text_size:I

    iget v1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    .line 71
    sget v0, Lcn/forward/androids/R$styleable;->StringScrollPicker_spv_start_color:I

    iget v1, p0, Lcn/forward/androids/views/StringScrollPicker;->mStartColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mStartColor:I

    .line 73
    sget v0, Lcn/forward/androids/R$styleable;->StringScrollPicker_spv_end_color:I

    iget v1, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    .line 75
    sget v0, Lcn/forward/androids/R$styleable;->StringScrollPicker_spv_max_line_width:I

    iget v1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    .line 76
    sget v0, Lcn/forward/androids/R$styleable;->StringScrollPicker_spv_alignment:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 78
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 80
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    .line 84
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method


# virtual methods
.method public drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;IIFF)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 163
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcn/forward/androids/views/StringScrollPicker;->getItemSize()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    .line 169
    iget-object v5, v0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v5, v0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v8, v7

    iget v9, v0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    sub-int/2addr v9, v7

    int-to-float v7, v9

    mul-float v7, v7, v3

    int-to-float v9, v4

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 175
    iget-object v5, v0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v8, v7

    iget v9, v0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    sub-int/2addr v9, v7

    int-to-float v7, v9

    int-to-float v9, v4

    .line 176
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v9, v10

    mul-float v7, v7, v10

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    .line 175
    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 179
    iget-object v5, v0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 181
    :cond_3
    iget-object v5, v0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v8, v7

    iget v9, v0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    sub-int/2addr v9, v7

    int-to-float v7, v9

    neg-float v9, v3

    mul-float v7, v7, v9

    int-to-float v9, v4

    div-float/2addr v7, v9

    add-float/2addr v8, v7

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v5, v0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 188
    :goto_0
    new-instance v15, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iget-object v9, v0, Lcn/forward/androids/views/StringScrollPicker;->mPaint:Landroid/text/TextPaint;

    iget v10, v0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    iget-object v11, v0, Lcn/forward/androids/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v15

    move-object/from16 p2, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/text/StaticLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcn/forward/androids/views/StringScrollPicker;->isHorizontal()Z

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v6, :cond_5

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcn/forward/androids/views/StringScrollPicker;->getItemWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    div-float/2addr v6, v7

    add-float v5, p6, v6

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcn/forward/androids/views/StringScrollPicker;->getItemHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    goto :goto_1

    .line 197
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/forward/androids/views/StringScrollPicker;->getItemWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v5

    div-float v5, v6, v7

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcn/forward/androids/views/StringScrollPicker;->getItemHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v6, p6, v6

    .line 201
    :goto_1
    invoke-direct {v0, v2, v4, v3}, Lcn/forward/androids/views/StringScrollPicker;->computeColor(IIF)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v2, p2

    .line 206
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getEndColor()I
    .locals 1

    .line 115
    iget v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    return v0
.end method

.method public getMaxLineWidth()I
    .locals 1

    .line 128
    iget v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    return v0
.end method

.method public getMaxTextSize()I
    .locals 1

    .line 123
    iget v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    return v0
.end method

.method public getMinTextSize()I
    .locals 1

    .line 119
    iget v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    return v0
.end method

.method public getStartColor()I
    .locals 1

    .line 111
    iget v0, p0, Lcn/forward/androids/views/StringScrollPicker;->mStartColor:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Lcn/forward/androids/views/ScrollPickerView;->onSizeChanged(IIII)V

    .line 154
    invoke-virtual {p0}, Lcn/forward/androids/views/StringScrollPicker;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMeasureWidth:I

    .line 155
    invoke-virtual {p0}, Lcn/forward/androids/views/StringScrollPicker;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMeasureHeight:I

    .line 156
    iget p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    if-gez p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcn/forward/androids/views/StringScrollPicker;->getItemWidth()I

    move-result p1

    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    :cond_0
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mAlignment:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public setColor(II)V
    .locals 0

    .line 93
    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mStartColor:I

    .line 94
    iput p2, p0, Lcn/forward/androids/views/StringScrollPicker;->mEndColor:I

    .line 95
    invoke-virtual {p0}, Lcn/forward/androids/views/StringScrollPicker;->invalidate()V

    return-void
.end method

.method public setMaxLineWidth(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxLineWidth:I

    return-void
.end method

.method public setTextSize(II)V
    .locals 0

    .line 105
    iput p1, p0, Lcn/forward/androids/views/StringScrollPicker;->mMinTextSize:I

    .line 106
    iput p2, p0, Lcn/forward/androids/views/StringScrollPicker;->mMaxTextSize:I

    .line 107
    invoke-virtual {p0}, Lcn/forward/androids/views/StringScrollPicker;->invalidate()V

    return-void
.end method
