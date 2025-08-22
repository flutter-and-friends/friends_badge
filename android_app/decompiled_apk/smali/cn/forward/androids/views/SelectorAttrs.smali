.class public Lcn/forward/androids/views/SelectorAttrs;
.super Ljava/lang/Object;
.source "SelectorAttrs.java"


# static fields
.field public static final LINE:I = 0x2

.field public static final OVAL:I = 0x1

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 25

    move-object/from16 v0, p1

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 41
    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    return-void

    .line 45
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 46
    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    return-void

    .line 51
    :cond_1
    sget-object v2, Lcn/forward/androids/R$styleable;->SelectorAttrs:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 56
    instance-of v4, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 71
    :cond_2
    sget v4, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_pressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_pressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 72
    :cond_5
    :goto_0
    sget v4, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_pressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 73
    instance-of v6, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_6

    const/4 v4, 0x0

    :cond_6
    if-nez v4, :cond_4

    .line 77
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 80
    :goto_1
    sget v7, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_selected:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-nez v7, :cond_9

    sget v7, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_selected:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 81
    :cond_9
    :goto_2
    sget v7, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_selected:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 82
    instance-of v8, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_a

    const/4 v7, 0x0

    :cond_a
    if-nez v7, :cond_8

    .line 86
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 89
    :goto_3
    sget v9, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_disable:I

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-nez v9, :cond_d

    sget v9, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_disable:I

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_4

    :cond_b
    const/4 v9, 0x0

    :cond_c
    const/4 v10, 0x0

    goto :goto_5

    .line 90
    :cond_d
    :goto_4
    sget v9, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_disable:I

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 91
    instance-of v10, v9, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_e

    const/4 v9, 0x0

    :cond_e
    if-nez v9, :cond_c

    .line 95
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :goto_5
    const/4 v11, 0x0

    if-nez v1, :cond_10

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_f

    .line 103
    sget v13, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background:I

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 104
    sget v12, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background:I

    invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 107
    :cond_f
    instance-of v13, v12, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v13, :cond_10

    .line 108
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 109
    check-cast v12, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v12

    .line 110
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_6
    if-eqz v6, :cond_11

    .line 115
    invoke-virtual {v6, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_11
    if-eqz v8, :cond_12

    .line 118
    invoke-virtual {v8, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_12
    if-eqz v10, :cond_13

    .line 121
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 126
    :cond_13
    sget v14, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_shape:I

    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 127
    sget v14, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_shape:I

    invoke-virtual {v2, v14, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    if-eqz v13, :cond_14

    .line 129
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_14
    if-eqz v6, :cond_15

    .line 132
    invoke-virtual {v6, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_15
    if-eqz v8, :cond_16

    .line 135
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_16
    if-eqz v10, :cond_18

    .line 138
    invoke-virtual {v10, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_7

    :cond_17
    const/4 v14, 0x0

    .line 145
    :cond_18
    :goto_7
    sget v15, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_corners:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v5, 0x8

    if-eqz v15, :cond_1d

    .line 146
    sget v15, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_corners:I

    invoke-virtual {v2, v15, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    if-eqz v13, :cond_19

    int-to-float v3, v15

    .line 149
    invoke-virtual {v13, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_19
    if-eqz v6, :cond_1a

    int-to-float v3, v15

    .line 152
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1a
    if-eqz v8, :cond_1b

    int-to-float v3, v15

    .line 155
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1b
    if-eqz v10, :cond_1c

    int-to-float v3, v15

    .line 158
    invoke-virtual {v10, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1c
    new-array v3, v5, [F

    int-to-float v5, v15

    aput v5, v3, v11

    const/16 v23, 0x1

    aput v5, v3, v23

    const/16 v21, 0x2

    aput v5, v3, v21

    aput v5, v3, v20

    aput v5, v3, v19

    aput v5, v3, v18

    aput v5, v3, v17

    aput v5, v3, v16

    goto :goto_8

    :cond_1d
    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 169
    :goto_8
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_corner_topLeft:I

    invoke-virtual {v2, v5, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 171
    sget v11, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_corner_topRight:I

    invoke-virtual {v2, v11, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object/from16 v24, v3

    .line 173
    sget v3, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_corner_bottomLeft:I

    invoke-virtual {v2, v3, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 175
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_corner_bottomRight:I

    invoke-virtual {v2, v0, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ne v5, v15, :cond_1f

    if-ne v11, v15, :cond_1f

    if-ne v3, v15, :cond_1f

    if-eq v0, v15, :cond_1e

    goto :goto_9

    :cond_1e
    move-object/from16 v15, v24

    goto :goto_a

    :cond_1f
    :goto_9
    const/16 v15, 0x8

    new-array v15, v15, [F

    int-to-float v5, v5

    const/16 v22, 0x0

    aput v5, v15, v22

    const/16 v22, 0x1

    aput v5, v15, v22

    int-to-float v5, v11

    const/4 v11, 0x2

    aput v5, v15, v11

    aput v5, v15, v20

    int-to-float v0, v0

    aput v0, v15, v19

    aput v0, v15, v18

    int-to-float v0, v3

    aput v0, v15, v17

    aput v0, v15, v16

    if-eqz v13, :cond_20

    .line 186
    invoke-virtual {v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_20
    if-eqz v6, :cond_21

    .line 189
    invoke-virtual {v6, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_21
    if-eqz v8, :cond_22

    .line 192
    invoke-virtual {v8, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_22
    if-eqz v10, :cond_23

    .line 195
    invoke-virtual {v10, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 201
    :cond_23
    :goto_a
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_width:I

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    if-eq v0, v3, :cond_27

    const/4 v5, 0x0

    if-eqz v13, :cond_24

    .line 204
    invoke-virtual {v13, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_24
    if-eqz v6, :cond_25

    .line 207
    invoke-virtual {v6, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_25
    if-eqz v8, :cond_26

    .line 210
    invoke-virtual {v8, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_26
    if-eqz v10, :cond_27

    .line 213
    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 217
    :cond_27
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_color:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 218
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_color:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    if-eqz v13, :cond_28

    .line 220
    invoke-virtual {v13, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_28
    if-eqz v6, :cond_29

    .line 223
    invoke-virtual {v6, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_29
    if-eqz v8, :cond_2a

    .line 226
    invoke-virtual {v8, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2a
    if-eqz v10, :cond_2b

    .line 229
    invoke-virtual {v10, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2b
    if-eqz v13, :cond_2c

    .line 235
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2c
    if-eqz v6, :cond_2d

    .line 239
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_pressed:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 240
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_pressed:I

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 241
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2d
    if-eqz v6, :cond_2e

    .line 243
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_pressed:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 244
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_pressed:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 245
    invoke-virtual {v6, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2e
    if-eqz v8, :cond_2f

    .line 247
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_selected:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 248
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_selected:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 249
    invoke-virtual {v8, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2f
    if-eqz v8, :cond_30

    .line 251
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_selected:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 252
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_selected:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 253
    invoke-virtual {v8, v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_30
    if-eqz v10, :cond_31

    .line 255
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_disable:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 256
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_disable:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 257
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_31
    if-eqz v10, :cond_32

    .line 259
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_disable:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 260
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_border_disable:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 261
    invoke-virtual {v10, v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 267
    :cond_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_3d

    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple:I

    .line 268
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 271
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 272
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_33

    .line 274
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 275
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v3, v2}, Lcn/forward/androids/views/SelectorAttrs;->parseRippleMaskShape(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;)V

    .line 277
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple:I

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_c

    .line 279
    :cond_33
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_34
    if-nez v13, :cond_36

    if-eqz v6, :cond_35

    goto :goto_b

    .line 289
    :cond_35
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    .line 283
    :cond_36
    :goto_b
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 284
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 285
    invoke-virtual {v0, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 286
    sget v3, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_c
    if-nez v6, :cond_3b

    if-eqz v4, :cond_37

    goto :goto_f

    :cond_37
    if-nez v1, :cond_39

    if-eqz v13, :cond_38

    goto :goto_d

    :cond_38
    move-object v3, v0

    const/4 v5, 0x2

    goto :goto_11

    .line 300
    :cond_39
    :goto_d
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v4, v5, [Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3a

    move-object v6, v1

    goto :goto_e

    :cond_3a
    move-object v6, v13

    :goto_e
    const/4 v11, 0x0

    aput-object v6, v4, v11

    const/4 v12, 0x1

    aput-object v0, v4, v12

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    :cond_3b
    :goto_f
    const/4 v5, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 295
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    new-array v14, v5, [Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3c

    goto :goto_10

    :cond_3c
    move-object v4, v6

    :goto_10
    aput-object v4, v14, v11

    aput-object v0, v14, v12

    invoke-direct {v3, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 305
    :goto_11
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v4, v5, [I

    .line 306
    fill-array-data v4, :array_0

    invoke-virtual {v0, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_14

    :cond_3d
    if-nez v6, :cond_3f

    if-eqz v4, :cond_3e

    goto :goto_12

    :cond_3e
    const/4 v0, 0x0

    goto :goto_14

    :cond_3f
    :goto_12
    if-eqz v4, :cond_40

    goto :goto_13

    :cond_40
    move-object v4, v6

    .line 310
    :goto_13
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 311
    fill-array-data v3, :array_1

    invoke-virtual {v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object v0, v5

    :goto_14
    if-nez v8, :cond_41

    if-eqz v7, :cond_44

    :cond_41
    if-eqz v7, :cond_42

    goto :goto_15

    :cond_42
    move-object v7, v8

    :goto_15
    if-nez v0, :cond_43

    .line 318
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    :cond_43
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 320
    fill-array-data v3, :array_2

    invoke-virtual {v0, v3, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_44
    if-nez v10, :cond_45

    if-eqz v9, :cond_48

    :cond_45
    if-eqz v9, :cond_46

    goto :goto_16

    :cond_46
    move-object v9, v10

    :goto_16
    if-nez v0, :cond_47

    .line 326
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    :cond_47
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, -0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 328
    invoke-virtual {v0, v3, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_48
    if-nez v1, :cond_4a

    if-eqz v13, :cond_49

    goto :goto_18

    :cond_49
    :goto_17
    move-object v1, v0

    move-object/from16 v0, p1

    goto :goto_19

    :cond_4a
    :goto_18
    if-nez v0, :cond_4b

    .line 333
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    :cond_4b
    const/4 v3, 0x0

    new-array v3, v3, [I

    if-eqz v1, :cond_4c

    move-object v13, v1

    .line 335
    :cond_4c
    invoke-virtual {v0, v3, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 342
    :goto_19
    invoke-static {v0, v2, v1}, Lcn/forward/androids/views/SelectorAttrs;->parseRipple(Landroid/view/View;Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_4d

    if-eqz v1, :cond_4d

    .line 346
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_4d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method

.method private static parseRipple(Landroid/view/View;Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 355
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 364
    sget v1, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 365
    sget v1, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 366
    instance-of v3, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_0
    if-nez v1, :cond_2

    .line 370
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 371
    invoke-static {v2, p1}, Lcn/forward/androids/views/SelectorAttrs;->parseRippleMaskShape(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;)V

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 374
    :cond_2
    :goto_0
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    sget v4, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple:I

    .line 375
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-direct {v3, p1, p2, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static parseRippleMaskShape(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 386
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 388
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask_shape:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    .line 390
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask_shape:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 392
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 394
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 396
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 403
    :cond_3
    :goto_0
    sget v0, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask_corners:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v5, v0

    .line 405
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 407
    sget v5, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask_corner_topLeft:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 409
    sget v6, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask_corner_topRight:I

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 411
    sget v7, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask_corner_bottomLeft:I

    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 413
    sget v8, Lcn/forward/androids/R$styleable;->SelectorAttrs_sel_background_ripple_mask_corner_bottomRight:I

    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-ne v5, v0, :cond_4

    if-ne v6, v0, :cond_4

    if-ne v7, v0, :cond_4

    if-eq p1, v0, :cond_5

    :cond_4
    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float v5, v5

    aput v5, v0, v1

    aput v5, v0, v3

    int-to-float v1, v6

    aput v1, v0, v4

    aput v1, v0, v2

    const/4 v1, 0x4

    int-to-float p1, p1

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 p1, 0x6

    int-to-float v1, v7

    aput v1, v0, p1

    const/4 p1, 0x7

    aput v1, v0, p1

    .line 417
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_5
    return-void
.end method
