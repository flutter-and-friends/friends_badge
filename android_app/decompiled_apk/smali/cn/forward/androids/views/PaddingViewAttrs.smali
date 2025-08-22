.class public Lcn/forward/androids/views/PaddingViewAttrs;
.super Ljava/lang/Object;
.source "PaddingViewAttrs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_0

    .line 21
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 25
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 29
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 30
    iget v1, v1, Landroid/util/TypedValue;->type:I

    if-eq v1, v4, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 35
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-lez v1, :cond_9

    if-gtz v3, :cond_2

    goto/16 :goto_2

    .line 41
    :cond_2
    sget-object v0, Lcn/forward/androids/R$styleable;->PaddingViewAttrs:[I

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 42
    sget p2, Lcn/forward/androids/R$styleable;->PaddingViewAttrs_vp_content_width:I

    invoke-virtual {p0, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 43
    sget v0, Lcn/forward/androids/R$styleable;->PaddingViewAttrs_vp_content_height:I

    invoke-virtual {p0, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 44
    sget v2, Lcn/forward/androids/R$styleable;->PaddingViewAttrs_vp_content_padding_left:I

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 45
    sget v5, Lcn/forward/androids/R$styleable;->PaddingViewAttrs_vp_content_padding_top:I

    invoke-virtual {p0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 46
    sget v6, Lcn/forward/androids/R$styleable;->PaddingViewAttrs_vp_content_padding_right:I

    invoke-virtual {p0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 47
    sget v7, Lcn/forward/androids/R$styleable;->PaddingViewAttrs_vp_content_padding_bottom:I

    invoke-virtual {p0, v7, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 48
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-lez p2, :cond_9

    if-lez v0, :cond_9

    if-gt p2, v1, :cond_9

    if-le v0, v3, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr v1, p2

    int-to-float p0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v0, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    if-ltz v2, :cond_4

    add-int/2addr p0, p0

    sub-int v6, p0, v2

    goto :goto_0

    :cond_4
    if-ltz v6, :cond_5

    add-int/2addr p0, p0

    sub-int v2, p0, v6

    goto :goto_0

    :cond_5
    move v2, p0

    move v6, v2

    :goto_0
    if-ltz v5, :cond_6

    add-int/2addr p2, p2

    sub-int v4, p2, v5

    goto :goto_1

    :cond_6
    if-ltz v4, :cond_7

    add-int/2addr p2, p2

    sub-int v5, p2, v4

    goto :goto_1

    :cond_7
    move v4, p2

    move v5, v4

    .line 76
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    if-ne v2, p0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    if-ne v5, p0, :cond_8

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    if-ne v6, p0, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    if-eq v4, p0, :cond_9

    .line 78
    :cond_8
    invoke-virtual {p1, v2, v5, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_9
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x10100f4
        0x10100f5
    .end array-data
.end method
