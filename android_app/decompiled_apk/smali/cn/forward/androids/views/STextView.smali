.class public Lcn/forward/androids/views/STextView;
.super Lcn/forward/androids/views/PaddingTextView;
.source "STextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcn/forward/androids/views/STextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/STextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcn/forward/androids/views/PaddingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0, p2}, Lcn/forward/androids/views/STextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 8

    .line 47
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x4

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    const/4 v6, 0x1

    aput-object v4, v2, v6

    new-array v4, v6, [I

    const v7, -0x101009e

    aput v7, v4, v5

    aput-object v4, v2, v3

    new-array v4, v5, [I

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v1, v1, [I

    aput p1, v1, v5

    aput p2, v1, v6

    aput p3, v1, v3

    aput p4, v1, v7

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 6

    .line 34
    invoke-virtual {p0}, Lcn/forward/androids/views/STextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/R$styleable;->STextView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcn/forward/androids/views/STextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 37
    sget v2, Lcn/forward/androids/R$styleable;->STextView_stv_text_color_selected:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 38
    sget v3, Lcn/forward/androids/R$styleable;->STextView_stv_text_color_pressed:I

    sget v4, Lcn/forward/androids/R$styleable;->STextView_mtv_text_color_pressed:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 39
    sget v4, Lcn/forward/androids/R$styleable;->STextView_stv_text_color_disable:I

    sget v5, Lcn/forward/androids/R$styleable;->STextView_mtv_text_color_disable:I

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 40
    invoke-direct {p0, v3, v2, v4, v1}, Lcn/forward/androids/views/STextView;->createColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/forward/androids/views/STextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-virtual {p0}, Lcn/forward/androids/views/STextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcn/forward/androids/views/SelectorAttrs;->obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method
