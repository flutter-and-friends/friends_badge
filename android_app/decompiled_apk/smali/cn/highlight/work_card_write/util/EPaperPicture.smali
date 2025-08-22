.class public Lcn/highlight/work_card_write/util/EPaperPicture;
.super Ljava/lang/Object;
.source "EPaperPicture.java"


# static fields
.field private static curPal:[I

.field private static dstBmp:Landroid/graphics/Bitmap;

.field private static dstH:I

.field private static dstW:I

.field private static palettes:[[I

.field private static srcBmp:Landroid/graphics/Bitmap;

.field private static srcH:I

.field private static srcW:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 23
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v1

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_3

    aput-object v4, v0, v2

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    sput-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->palettes:[[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        -0x1
        -0x10000
    .end array-data

    :array_2
    .array-data 4
        -0x1000000
        -0x1
        -0x777778
    .end array-data

    :array_3
    .array-data 4
        -0x1000000
        -0x1
        -0x777778
        -0x10000
    .end array-data

    :array_4
    .array-data 4
        -0x1000000
        -0x1
    .end array-data

    :array_5
    .array-data 4
        -0x1000000
        -0x1
        -0x100
    .end array-data

    :array_6
    .array-data 4
        -0x1000000
        -0x1
        -0x100
        -0x10000
    .end array-data

    :array_7
    .array-data 4
        -0x1000000
        -0x1
        -0xff0100
        -0xffff01
        -0x10000
        -0x100
        -0x8000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVal([DIDDDD)V
    .locals 4

    mul-int/lit8 p1, p1, 0x3

    mul-double p2, p2, p8

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    div-double/2addr p2, v0

    .line 76
    aget-wide v2, p0, p1

    add-double/2addr p2, v2

    aput-wide p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    mul-double p4, p4, p8

    div-double/2addr p4, v0

    .line 77
    aget-wide v2, p0, p2

    add-double/2addr p4, v2

    aput-wide p4, p0, p2

    add-int/lit8 p1, p1, 0x2

    mul-double p6, p6, p8

    div-double/2addr p6, v0

    .line 78
    aget-wide p2, p0, p1

    add-double/2addr p6, p2

    aput-wide p6, p0, p1

    return-void
.end method

.method public static convertToBlackWhiteRed(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    .line 376
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 378
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    .line 379
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 380
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    .line 382
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 383
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    .line 384
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const-wide v7, 0x3fd322d0e5604189L    # 0.299

    int-to-double v9, v5

    mul-double v9, v9, v7

    const-wide v7, 0x3fe2c8b439581062L    # 0.587

    int-to-double v5, v6

    mul-double v5, v5, v7

    add-double/2addr v9, v5

    const-wide v5, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v7, v4

    mul-double v7, v7, v5

    add-double/2addr v9, v7

    double-to-int v4, v9

    .line 388
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 390
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const/16 v6, 0xff

    if-eq v5, v6, :cond_0

    const/high16 v4, -0x10000

    .line 394
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static createIndexedImage(Landroid/graphics/Bitmap;ZIII)Landroid/graphics/Bitmap;
    .locals 37

    .line 99
    sput-object p0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    .line 100
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    .line 104
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->palettes:[[I

    aget-object v0, v0, p4

    sput-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    .line 106
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    .line 107
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    .line 109
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcW:I

    .line 110
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcH:I

    .line 112
    sget v7, Lcn/highlight/work_card_write/util/EPaperPicture;->srcW:I

    sget v8, Lcn/highlight/work_card_write/util/EPaperPicture;->srcH:I

    mul-int v0, v7, v8

    new-array v0, v0, [I

    .line 113
    sget v1, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    sget v2, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    mul-int v1, v1, v2

    new-array v10, v1, [I

    .line 116
    sget-object v1, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 120
    :goto_0
    sget v3, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    if-ge v0, v3, :cond_c

    move v3, v2

    const/4 v2, 0x0

    .line 121
    :goto_1
    sget v4, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 122
    invoke-static {v2, v0}, Lcn/highlight/work_card_write/util/EPaperPicture;->nearColor(II)I

    move-result v5

    aput v5, v10, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v3, v2, [[D

    .line 131
    sget v4, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    mul-int/lit8 v5, v4, 0x3

    new-array v5, v5, [D

    aput-object v5, v3, v1

    mul-int/lit8 v4, v4, 0x3

    .line 132
    new-array v4, v4, [D

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    .line 134
    :goto_2
    sget v6, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_2

    .line 135
    aget-object v6, v3, v5

    mul-int/lit8 v9, v4, 0x3

    aput-wide v7, v6, v9

    .line 136
    aget-object v6, v3, v5

    add-int/lit8 v11, v9, 0x1

    aput-wide v7, v6, v11

    .line 137
    aget-object v6, v3, v5

    add-int/2addr v9, v2

    aput-wide v7, v6, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 140
    :goto_3
    sget v11, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    if-ge v4, v11, :cond_c

    .line 141
    sget v11, Lcn/highlight/work_card_write/util/EPaperPicture;->srcH:I

    if-lt v4, v11, :cond_5

    move v11, v9

    const/4 v9, 0x0

    .line 142
    :goto_4
    sget v12, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v9, v12, :cond_4

    .line 143
    sget-object v12, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    add-int v13, v9, v4

    rem-int/2addr v13, v2

    if-nez v13, :cond_3

    const/4 v13, 0x1

    goto :goto_5

    :cond_3
    const/4 v13, 0x0

    :goto_5
    aget v12, v12, v13

    aput v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_4
    move v9, v11

    const/16 v36, 0x1

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v11, v6, 0x1

    and-int/2addr v11, v5

    const/4 v12, 0x0

    .line 149
    :goto_6
    sget v13, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v12, v13, :cond_6

    .line 150
    aget-object v13, v3, v6

    mul-int/lit8 v14, v12, 0x3

    aput-wide v7, v13, v14

    .line 151
    aget-object v13, v3, v6

    add-int/lit8 v15, v14, 0x1

    aput-wide v7, v13, v15

    .line 152
    aget-object v13, v3, v6

    add-int/2addr v14, v2

    aput-wide v7, v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    move v12, v9

    const/4 v9, 0x0

    .line 155
    :goto_7
    sget v13, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v9, v13, :cond_b

    .line 156
    sget v13, Lcn/highlight/work_card_write/util/EPaperPicture;->srcW:I

    if-lt v9, v13, :cond_8

    add-int/lit8 v13, v12, 0x1

    .line 157
    sget-object v14, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    add-int v15, v9, v4

    rem-int/2addr v15, v2

    if-nez v15, :cond_7

    const/4 v15, 0x1

    goto :goto_8

    :cond_7
    const/4 v15, 0x0

    :goto_8
    aget v14, v14, v15

    aput v14, v10, v12

    move/from16 p4, v6

    move v12, v13

    const/16 v36, 0x1

    goto/16 :goto_a

    :cond_8
    mul-int v13, v13, v4

    add-int/2addr v13, v9

    .line 161
    aget v13, v0, v13

    .line 163
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-double v14, v14

    aget-object v16, v3, v11

    mul-int/lit8 v17, v9, 0x3

    aget-wide v18, v16, v17

    add-double v14, v14, v18

    .line 164
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-double v7, v1

    aget-object v1, v3, v11

    add-int/lit8 v16, v17, 0x1

    aget-wide v18, v1, v16

    add-double v7, v7, v18

    .line 165
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    move/from16 p4, v6

    int-to-double v5, v1

    aget-object v1, v3, v11

    add-int/lit8 v17, v17, 0x2

    aget-wide v16, v1, v17

    add-double v5, v5, v16

    .line 167
    sget-object v1, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    move-wide/from16 v20, v14

    move-wide/from16 v22, v7

    move-wide/from16 v24, v5

    invoke-static/range {v20 .. v25}, Lcn/highlight/work_card_write/util/EPaperPicture;->getNear(DDD)I

    move-result v13

    aget v1, v1, v13

    add-int/lit8 v23, v12, 0x1

    .line 168
    aput v1, v10, v12

    .line 170
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-double v12, v12

    sub-double v34, v14, v12

    .line 171
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-double v12, v12

    sub-double/2addr v7, v12

    .line 172
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-double v12, v1

    sub-double/2addr v5, v12

    if-nez v9, :cond_9

    .line 175
    aget-object v13, v3, p4

    const-wide/high16 v21, 0x401c000000000000L    # 7.0

    move v14, v9

    move-wide/from16 v15, v34

    move-wide/from16 v17, v7

    move-wide/from16 v19, v5

    invoke-static/range {v13 .. v22}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 176
    aget-object v24, v3, p4

    add-int/lit8 v1, v9, 0x1

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    move/from16 v25, v1

    move-wide/from16 v26, v34

    move-wide/from16 v28, v7

    move-wide/from16 v30, v5

    invoke-static/range {v24 .. v33}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 177
    aget-object v24, v3, v11

    const-wide/high16 v32, 0x401c000000000000L    # 7.0

    invoke-static/range {v24 .. v33}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    const/16 v36, 0x1

    goto :goto_9

    .line 178
    :cond_9
    sget v1, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    const/16 v36, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ne v9, v1, :cond_a

    .line 179
    aget-object v24, v3, p4

    add-int/lit8 v25, v9, -0x1

    const-wide/high16 v32, 0x401c000000000000L    # 7.0

    move-wide/from16 v26, v34

    move-wide/from16 v28, v7

    move-wide/from16 v30, v5

    invoke-static/range {v24 .. v33}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 180
    aget-object v13, v3, p4

    const-wide/high16 v21, 0x4022000000000000L    # 9.0

    move v14, v9

    move-wide/from16 v15, v34

    move-wide/from16 v17, v7

    move-wide/from16 v19, v5

    invoke-static/range {v13 .. v22}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    goto :goto_9

    .line 182
    :cond_a
    aget-object v24, v3, p4

    add-int/lit8 v25, v9, -0x1

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    move-wide/from16 v26, v34

    move-wide/from16 v28, v7

    move-wide/from16 v30, v5

    invoke-static/range {v24 .. v33}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 183
    aget-object v13, v3, p4

    const-wide/high16 v21, 0x4014000000000000L    # 5.0

    move v14, v9

    move-wide/from16 v15, v34

    move-wide/from16 v17, v7

    move-wide/from16 v19, v5

    invoke-static/range {v13 .. v22}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 184
    aget-object v24, v3, p4

    add-int/lit8 v1, v9, 0x1

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move/from16 v25, v1

    invoke-static/range {v24 .. v33}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 185
    aget-object v24, v3, v11

    const-wide/high16 v32, 0x401c000000000000L    # 7.0

    invoke-static/range {v24 .. v33}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    :goto_9
    move/from16 v12, v23

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, p4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v36, 0x1

    move v6, v11

    move v9, v12

    :goto_b
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_3

    .line 193
    :cond_c
    sget-object v9, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    sget v15, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v16, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    move v12, v15

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 194
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static createIndexedImage2(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 37

    .line 199
    sput-object p0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    .line 201
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    .line 202
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->palettes:[[I

    aget-object v0, v0, p3

    sput-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    .line 203
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    .line 204
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    .line 205
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcW:I

    .line 206
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcH:I

    .line 207
    sget v7, Lcn/highlight/work_card_write/util/EPaperPicture;->srcW:I

    sget v8, Lcn/highlight/work_card_write/util/EPaperPicture;->srcH:I

    mul-int v0, v7, v8

    new-array v0, v0, [I

    .line 208
    sget v1, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    sget v2, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    mul-int v1, v1, v2

    new-array v10, v1, [I

    .line 210
    sget-object v1, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x2

    new-array v2, v1, [[D

    .line 216
    sget v3, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    mul-int/lit8 v4, v3, 0x3

    new-array v4, v4, [D

    aput-object v4, v2, v5

    mul-int/lit8 v3, v3, 0x3

    .line 217
    new-array v3, v3, [D

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    .line 218
    :goto_0
    sget v6, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    const-wide/16 v7, 0x0

    if-ge v3, v6, :cond_0

    .line 219
    aget-object v6, v2, v4

    mul-int/lit8 v9, v3, 0x3

    aput-wide v7, v6, v9

    .line 220
    aget-object v6, v2, v4

    add-int/lit8 v11, v9, 0x1

    aput-wide v7, v6, v11

    .line 221
    aget-object v6, v2, v4

    add-int/2addr v9, v1

    aput-wide v7, v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 224
    :goto_1
    sget v15, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    if-ge v3, v15, :cond_a

    .line 226
    sget v11, Lcn/highlight/work_card_write/util/EPaperPicture;->srcH:I

    if-lt v3, v11, :cond_3

    move v11, v9

    const/4 v9, 0x0

    .line 227
    :goto_2
    sget v12, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v9, v12, :cond_2

    .line 228
    sget-object v12, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    add-int v13, v9, v3

    rem-int/2addr v13, v1

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    :goto_3
    aget v12, v12, v13

    aput v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v25, v2

    move v9, v11

    const/16 v36, 0x1

    goto/16 :goto_9

    :cond_3
    add-int/lit8 v11, v6, 0x1

    and-int/2addr v11, v4

    const/4 v12, 0x0

    .line 233
    :goto_4
    sget v13, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v12, v13, :cond_4

    .line 234
    aget-object v13, v2, v6

    mul-int/lit8 v14, v12, 0x3

    aput-wide v7, v13, v14

    .line 235
    aget-object v13, v2, v6

    add-int/lit8 v15, v14, 0x1

    aput-wide v7, v13, v15

    .line 236
    aget-object v13, v2, v6

    add-int/2addr v14, v1

    aput-wide v7, v13, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    move v12, v9

    const/4 v9, 0x0

    .line 238
    :goto_5
    sget v13, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v9, v13, :cond_9

    .line 239
    sget v13, Lcn/highlight/work_card_write/util/EPaperPicture;->srcW:I

    if-lt v9, v13, :cond_6

    add-int/lit8 v13, v12, 0x1

    .line 240
    sget-object v14, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    add-int v15, v9, v3

    rem-int/2addr v15, v1

    if-nez v15, :cond_5

    const/4 v15, 0x1

    goto :goto_6

    :cond_5
    const/4 v15, 0x0

    :goto_6
    aget v14, v14, v15

    aput v14, v10, v12

    move-object/from16 v25, v2

    move v12, v13

    const/16 v36, 0x1

    goto/16 :goto_8

    :cond_6
    mul-int v13, v13, v3

    add-int/2addr v13, v9

    .line 244
    aget v13, v0, v13

    .line 247
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v14

    int-to-double v14, v14

    aget-object v16, v2, v11

    mul-int/lit8 v17, v9, 0x3

    aget-wide v18, v16, v17

    add-double v14, v14, v18

    .line 248
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-double v7, v5

    aget-object v5, v2, v11

    add-int/lit8 v16, v17, 0x1

    aget-wide v18, v5, v16

    add-double v7, v7, v18

    .line 249
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-double v4, v5

    aget-object v13, v2, v11

    add-int/lit8 v17, v17, 0x2

    aget-wide v16, v13, v17

    add-double v4, v4, v16

    .line 251
    sget-object v13, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    move-wide/from16 v20, v14

    move-wide/from16 v22, v7

    move-wide/from16 v24, v4

    invoke-static/range {v20 .. v25}, Lcn/highlight/work_card_write/util/EPaperPicture;->getNear(DDD)I

    move-result v16

    aget v13, v13, v16

    add-int/lit8 v23, v12, 0x1

    .line 253
    aput v13, v10, v12

    .line 255
    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v12

    move-object/from16 v25, v2

    int-to-double v1, v12

    sub-double v1, v14, v1

    .line 256
    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-double v14, v12

    sub-double/2addr v7, v14

    .line 257
    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    int-to-double v12, v12

    sub-double/2addr v4, v12

    if-nez v9, :cond_7

    .line 260
    aget-object v13, v25, v6

    const-wide/high16 v21, 0x4022000000000000L    # 9.0

    move v14, v9

    move-wide v15, v1

    move-wide/from16 v17, v7

    move-wide/from16 v19, v4

    invoke-static/range {v13 .. v22}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 261
    aget-object v26, v25, v6

    add-int/lit8 v12, v9, 0x1

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    move/from16 v27, v12

    move-wide/from16 v28, v1

    move-wide/from16 v30, v7

    move-wide/from16 v32, v4

    invoke-static/range {v26 .. v35}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 262
    aget-object v26, v25, v11

    const-wide/high16 v34, 0x4010000000000000L    # 4.0

    invoke-static/range {v26 .. v35}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    const/16 v36, 0x1

    goto :goto_7

    .line 263
    :cond_7
    sget v12, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    const/16 v36, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v9, v12, :cond_8

    .line 264
    aget-object v26, v25, v6

    add-int/lit8 v27, v9, -0x1

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    move-wide/from16 v28, v1

    move-wide/from16 v30, v7

    move-wide/from16 v32, v4

    invoke-static/range {v26 .. v35}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 265
    aget-object v13, v25, v6

    const-wide/high16 v21, 0x4022000000000000L    # 9.0

    move v14, v9

    move-wide v15, v1

    move-wide/from16 v17, v7

    move-wide/from16 v19, v4

    invoke-static/range {v13 .. v22}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    goto :goto_7

    .line 267
    :cond_8
    aget-object v26, v25, v6

    add-int/lit8 v27, v9, -0x1

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    move-wide/from16 v28, v1

    move-wide/from16 v30, v7

    move-wide/from16 v32, v4

    invoke-static/range {v26 .. v35}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 268
    aget-object v13, v25, v6

    const-wide/high16 v21, 0x4014000000000000L    # 5.0

    move v14, v9

    move-wide v15, v1

    move-wide/from16 v17, v7

    move-wide/from16 v19, v4

    invoke-static/range {v13 .. v22}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 269
    aget-object v26, v25, v6

    add-int/lit8 v12, v9, 0x1

    move/from16 v27, v12

    invoke-static/range {v26 .. v35}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    .line 270
    aget-object v26, v25, v11

    const-wide/high16 v34, 0x4010000000000000L    # 4.0

    invoke-static/range {v26 .. v35}, Lcn/highlight/work_card_write/util/EPaperPicture;->addVal([DIDDDD)V

    :goto_7
    move/from16 v12, v23

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v25

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_5

    :cond_9
    move-object/from16 v25, v2

    const/16 v36, 0x1

    move v6, v11

    move v9, v12

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v25

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    goto/16 :goto_1

    .line 274
    :cond_a
    sget-object v9, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    sget v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v0

    move v1, v15

    move v15, v0

    move/from16 v16, v1

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 276
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v1, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 277
    :goto_a
    sget v2, Lcn/highlight/work_card_write/util/EPaperPicture;->dstW:I

    if-ge v1, v2, :cond_e

    const/4 v2, 0x0

    .line 278
    :goto_b
    sget v3, Lcn/highlight/work_card_write/util/EPaperPicture;->dstH:I

    if-ge v2, v3, :cond_d

    .line 279
    sget-object v3, Lcn/highlight/work_card_write/util/EPaperPicture;->dstBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 280
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 281
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 282
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 284
    invoke-static {v4, v5, v6}, Lcn/highlight/work_card_write/util/EPaperPicture;->isCloseToYellow(III)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v3, 0xff

    const/16 v4, 0xa5

    if-lez v6, :cond_b

    goto :goto_c

    :cond_b
    const/4 v6, 0x0

    .line 286
    :goto_c
    invoke-static {v3, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto :goto_d

    .line 289
    :cond_c
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    return-object v0
.end method

.method private static getErr(DDDI)D
    .locals 2

    .line 39
    invoke-static {p6}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr p0, v0

    .line 40
    invoke-static {p6}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr p2, v0

    .line 41
    invoke-static {p6}, Landroid/graphics/Color;->blue(I)I

    move-result p6

    int-to-double v0, p6

    sub-double/2addr p4, v0

    mul-double p0, p0, p0

    mul-double p2, p2, p2

    add-double/2addr p0, p2

    mul-double p4, p4, p4

    add-double/2addr p0, p4

    return-wide p0
.end method

.method private static getNear(DDD)I
    .locals 13

    .line 51
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    const/4 v1, 0x0

    aget v8, v0, v1

    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcn/highlight/work_card_write/util/EPaperPicture;->getErr(DDDI)D

    move-result-wide v2

    const/4 v0, 0x1

    .line 52
    :goto_0
    sget-object v4, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 53
    aget v12, v4, v0

    move-wide v6, p0

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-static/range {v6 .. v12}, Lcn/highlight/work_card_write/util/EPaperPicture;->getErr(DDDI)D

    move-result-wide v4

    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    move v1, v0

    move-wide v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static getNear(I)I
    .locals 7

    .line 67
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v1, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-double v3, v0

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v5, p0

    invoke-static/range {v1 .. v6}, Lcn/highlight/work_card_write/util/EPaperPicture;->getNear(DDD)I

    move-result p0

    return p0
.end method

.method private static isCloseToYellow(III)Z
    .locals 1

    const/16 v0, 0xfa

    if-le p0, v0, :cond_0

    if-le p1, v0, :cond_0

    const/16 p0, 0xa

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static nearColor(II)I
    .locals 2

    .line 86
    sget v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcW:I

    if-ge p0, v0, :cond_1

    sget v0, Lcn/highlight/work_card_write/util/EPaperPicture;->srcH:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    sget-object v1, Lcn/highlight/work_card_write/util/EPaperPicture;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p0

    invoke-static {p0}, Lcn/highlight/work_card_write/util/EPaperPicture;->getNear(I)I

    move-result p0

    aget p0, v0, p0

    return p0

    .line 86
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/util/EPaperPicture;->curPal:[I

    add-int/2addr p0, p1

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    aget p0, v0, p0

    return p0
.end method

.method public static toBlackWhiteRed(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 348
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 349
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 350
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    .line 353
    invoke-virtual {p0, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    const-wide v7, 0x3fd322d0e5604189L    # 0.299

    .line 355
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-double v9, v9

    mul-double v9, v9, v7

    const-wide v7, 0x3fe2c8b439581062L    # 0.587

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-double v11, v11

    mul-double v11, v11, v7

    add-double/2addr v9, v11

    const-wide v7, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v11, v6

    mul-double v11, v11, v7

    add-double/2addr v9, v11

    double-to-int v6, v9

    const/16 v7, 0xc0

    if-ge v6, v7, :cond_0

    const/high16 v6, -0x1000000

    goto :goto_2

    :cond_0
    const/16 v7, 0xff

    if-ge v6, v7, :cond_1

    const/4 v6, -0x1

    goto :goto_2

    :cond_1
    const/high16 v6, -0x10000

    .line 369
    :goto_2
    invoke-virtual {v2, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public static toBlackWhiteRedYellow(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 402
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 403
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 404
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 407
    invoke-virtual {p0, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    const-wide v7, 0x3fd322d0e5604189L    # 0.299

    .line 409
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-double v9, v9

    mul-double v9, v9, v7

    const-wide v7, 0x3fe2c8b439581062L    # 0.587

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v11

    int-to-double v11, v11

    mul-double v11, v11, v7

    add-double/2addr v9, v11

    const-wide v7, 0x3fbd2f1a9fbe76c9L    # 0.114

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v11, v6

    mul-double v11, v11, v7

    add-double/2addr v9, v11

    double-to-int v6, v9

    const/16 v7, 0x40

    if-ge v6, v7, :cond_0

    const/high16 v6, -0x1000000

    goto :goto_2

    :cond_0
    const/high16 v7, 0x427c0000    # 63.0f

    const/16 v8, 0x80

    const/high16 v9, 0x437f0000    # 255.0f

    const/16 v10, 0xff

    if-ge v6, v8, :cond_1

    add-int/lit8 v6, v6, -0x40

    int-to-float v6, v6

    div-float/2addr v6, v7

    mul-float v6, v6, v9

    float-to-int v6, v6

    .line 417
    invoke-static {v10, v6, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto :goto_2

    :cond_1
    const/16 v8, 0xc0

    if-ge v6, v8, :cond_2

    sub-int/2addr v8, v6

    int-to-float v7, v8

    const/high16 v8, 0x42800000    # 64.0f

    div-float/2addr v7, v8

    mul-float v7, v7, v9

    float-to-int v7, v7

    add-int/lit8 v6, v6, -0x80

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float v6, v6, v9

    float-to-int v6, v6

    .line 420
    invoke-static {v10, v7, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto :goto_2

    :cond_2
    rsub-int v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v7

    mul-float v6, v6, v9

    float-to-int v6, v6

    .line 423
    invoke-static {v10, v6, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 427
    :goto_2
    invoke-virtual {v2, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 333
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 334
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 336
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 338
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 339
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v4, 0x0

    .line 340
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 341
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 342
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 343
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method public getVal(I)I
    .locals 3

    .line 304
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 305
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v2, 0x7f

    if-ne v0, v2, :cond_1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getVal_7color(I)I
    .locals 3

    .line 317
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 318
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 319
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v2, 0xff

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-nez v0, :cond_2

    if-ne v1, v2, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-ne p1, v2, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    if-ne v0, v2, :cond_4

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    if-ne v0, v2, :cond_5

    if-ne v1, v2, :cond_5

    if-nez p1, :cond_5

    const/4 p1, 0x5

    return p1

    :cond_5
    if-ne v0, v2, :cond_6

    const/16 v0, 0x80

    if-ne v1, v0, :cond_6

    if-nez p1, :cond_6

    const/4 p1, 0x6

    return p1

    :cond_6
    const/4 p1, 0x7

    return p1
.end method
