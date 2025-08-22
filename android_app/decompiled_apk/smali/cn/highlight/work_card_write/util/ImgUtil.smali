.class public Lcn/highlight/work_card_write/util/ImgUtil;
.super Ljava/lang/Object;
.source "ImgUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 277
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p1

    .line 278
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 289
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    .line 291
    aget v3, v2, v3

    const/4 v4, 0x5

    .line 292
    aget v2, v2, v4

    sub-float/2addr p1, v3

    sub-float/2addr v1, v2

    .line 294
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 296
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 298
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 299
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 300
    invoke-virtual {v2, p0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method private static findNearestColor(Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;)B
    .locals 9

    const/4 v0, 0x0

    const v1, 0x2fa04

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x2fa04

    .line 381
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 382
    iget-object v4, p0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget-object v5, p1, v1

    iget-object v5, v5, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v5, v5, v0

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v5

    .line 383
    iget-object v5, p0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-object v7, p1, v1

    iget-object v7, v7, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v6, v7, v6

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v5, v6

    .line 384
    iget-object v6, p0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aget-object v8, p1, v1

    iget-object v8, v8, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v7, v8, v7

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v6, v7

    mul-int v4, v4, v4

    mul-int v5, v5, v5

    add-int/2addr v4, v5

    mul-int v6, v6, v6

    add-int/2addr v4, v6

    if-ge v4, v3, :cond_0

    move v2, v1

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static floydSteinberg(Landroid/graphics/Bitmap;IZ)[B
    .locals 12

    .line 314
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 316
    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    .line 319
    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    .line 320
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 321
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 322
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    .line 326
    new-instance v9, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v9, v6, v8, v7}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    .line 327
    aget-object v6, v2, v4

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 332
    rem-int/lit8 p0, v0, 0x4

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, p0

    .line 334
    invoke-static {p1}, Lcn/highlight/work_card_write/util/ImgUtil;->getPalette(I)[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    move-result-object v5

    invoke-static {v2, v5, p2}, Lcn/highlight/work_card_write/util/ImgUtil;->floydSteinbergDither([[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;Z)[[B

    move-result-object p2

    mul-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x3

    mul-int p0, p0, v1

    add-int/2addr v2, p0

    .line 335
    new-array p0, v2, [B

    add-int/lit8 v2, v1, -0x1

    move v5, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_7

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v6, v0, :cond_6

    .line 341
    aget-object v8, p2, v6

    aget-byte v8, v8, v2

    const/4 v9, 0x2

    if-nez v8, :cond_2

    mul-int v8, v5, v4

    add-int/2addr v8, v7

    .line 344
    aput-byte v3, p0, v8

    add-int/lit8 v10, v8, 0x1

    .line 345
    aput-byte v3, p0, v10

    add-int/2addr v8, v9

    .line 346
    aput-byte v3, p0, v8

    goto :goto_4

    .line 347
    :cond_2
    aget-object v8, p2, v6

    aget-byte v8, v8, v2

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_3

    mul-int v8, v5, v4

    add-int/2addr v8, v7

    .line 350
    aput-byte v10, p0, v8

    add-int/lit8 v11, v8, 0x1

    .line 351
    aput-byte v10, p0, v11

    add-int/2addr v8, v9

    .line 352
    aput-byte v10, p0, v8

    goto :goto_4

    .line 353
    :cond_3
    aget-object v8, p2, v6

    aget-byte v8, v8, v2

    if-ne v8, v9, :cond_4

    if-ne p1, v11, :cond_4

    mul-int v8, v5, v4

    add-int/2addr v8, v7

    .line 356
    aput-byte v3, p0, v8

    add-int/lit8 v11, v8, 0x1

    .line 357
    aput-byte v3, p0, v11

    add-int/2addr v8, v9

    .line 358
    aput-byte v10, p0, v8

    goto :goto_4

    .line 359
    :cond_4
    aget-object v8, p2, v6

    aget-byte v8, v8, v2

    if-ne v8, v9, :cond_5

    if-ne p1, v9, :cond_5

    mul-int v8, v5, v4

    add-int/2addr v8, v7

    .line 362
    aput-byte v10, p0, v8

    add-int/lit8 v11, v8, 0x1

    .line 363
    aput-byte v10, p0, v11

    add-int/2addr v8, v9

    .line 364
    aput-byte v3, p0, v8

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x3

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_7
    return-object p0
.end method

.method public static floydSteinbergDither([[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;Z)[[B
    .locals 13

    .line 417
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, B

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    .line 420
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    .line 421
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 422
    aget-object v4, p0, v2

    aget-object v4, v4, v3

    .line 423
    invoke-static {v4, p1}, Lcn/highlight/work_card_write/util/ImgUtil;->findNearestColor(Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;)B

    move-result v5

    .line 424
    aget-object v6, v0, v2

    aput-byte v5, v6, v3

    if-nez p2, :cond_3

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 428
    iget-object v7, v4, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v7, v7, v6

    and-int/lit16 v7, v7, 0xff

    aget-object v8, p1, v5

    iget-object v8, v8, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr v7, v8

    add-int/lit8 v8, v3, 0x1

    .line 429
    aget-object v9, p0, v1

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 430
    aget-object v9, p0, v2

    aget-object v9, v9, v8

    iget-object v9, v9, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-object v10, p0, v2

    aget-object v10, v10, v8

    iget-object v10, v10, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v10, v10, v6

    mul-int/lit8 v11, v7, 0x7

    shr-int/lit8 v11, v11, 0x4

    invoke-static {v10, v11}, Lcn/highlight/work_card_write/util/ImgUtil;->plus_truncate_uchar(BI)B

    move-result v10

    aput-byte v10, v9, v6

    :cond_0
    add-int/lit8 v9, v2, 0x1

    .line 432
    array-length v10, p0

    if-ge v9, v10, :cond_2

    add-int/lit8 v10, v3, -0x1

    if-lez v10, :cond_1

    .line 434
    aget-object v11, p0, v9

    aget-object v11, v11, v10

    iget-object v11, v11, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-object v12, p0, v9

    aget-object v10, v12, v10

    iget-object v10, v10, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v10, v10, v6

    mul-int/lit8 v12, v7, 0x3

    shr-int/lit8 v12, v12, 0x4

    invoke-static {v10, v12}, Lcn/highlight/work_card_write/util/ImgUtil;->plus_truncate_uchar(BI)B

    move-result v10

    aput-byte v10, v11, v6

    .line 436
    :cond_1
    aget-object v10, p0, v9

    aget-object v10, v10, v3

    iget-object v10, v10, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-object v11, p0, v9

    aget-object v11, v11, v3

    iget-object v11, v11, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v11, v11, v6

    mul-int/lit8 v12, v7, 0x5

    shr-int/lit8 v12, v12, 0x4

    invoke-static {v11, v12}, Lcn/highlight/work_card_write/util/ImgUtil;->plus_truncate_uchar(BI)B

    move-result v11

    aput-byte v11, v10, v6

    .line 437
    aget-object v10, p0, v1

    array-length v10, v10

    if-ge v8, v10, :cond_2

    .line 438
    aget-object v10, p0, v9

    aget-object v10, v10, v8

    iget-object v10, v10, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-object v9, p0, v9

    aget-object v8, v9, v8

    iget-object v8, v8, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;->channels:[B

    aget-byte v8, v8, v6

    shr-int/lit8 v7, v7, 0x4

    invoke-static {v8, v7}, Lcn/highlight/work_card_write/util/ImgUtil;->plus_truncate_uchar(BI)B

    move-result v7

    aput-byte v7, v10, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public static getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 26
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getPalette(I)[Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xff

    const/4 v4, 0x0

    if-ne p0, v2, :cond_0

    new-array p0, v0, [Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    .line 480
    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v4, v4, v4}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v4

    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v3, v3, v3}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v2

    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v3, v4, v4}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v1

    goto :goto_0

    :cond_0
    if-ne p0, v1, :cond_1

    new-array p0, v0, [Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    .line 483
    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v4, v4, v4}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v4

    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v3, v3, v3}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v2

    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v3, v3, v4}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v1

    goto :goto_0

    :cond_1
    new-array p0, v1, [Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    .line 486
    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v4, v4, v4}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v4

    new-instance v0, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;

    invoke-direct {v0, v3, v3, v3}, Lcn/highlight/work_card_write/util/ImgUtil$RGBTriple;-><init>(III)V

    aput-object v0, p0, v2

    :goto_0
    return-object p0
.end method

.method public static gray2Binary(Landroid/graphics/Bitmap;Ljava/lang/String;)[[B
    .locals 5

    const/4 v0, 0x0

    .line 37
    check-cast v0, [[B

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x13b1cc

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x2630656

    if-eq v1, v2, :cond_1

    const v2, 0x49fe632e    # 2083941.8f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u9ed1\u767d\u7ea2\u9ec4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "\u9ed1\u767d\u7ea2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "\u9ed1\u767d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_2

    .line 46
    :cond_4
    invoke-static {p0}, Lcn/highlight/work_card_write/util/ImgUtil;->gray2Binary_BWYR(Landroid/graphics/Bitmap;)[[B

    move-result-object v0

    goto :goto_2

    .line 43
    :cond_5
    invoke-static {p0}, Lcn/highlight/work_card_write/util/ImgUtil;->gray2Binary_BWR(Landroid/graphics/Bitmap;)[[B

    move-result-object v0

    goto :goto_2

    .line 40
    :cond_6
    invoke-static {p0}, Lcn/highlight/work_card_write/util/ImgUtil;->gray2Binary_BW(Landroid/graphics/Bitmap;)[[B

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method public static gray2Binary_2(Landroid/graphics/Bitmap;)[[B
    .locals 18

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 215
    rem-int/lit8 v3, v2, 0x8

    const/4 v4, 0x1

    div-int/lit8 v5, v2, 0x8

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v5, v4

    :goto_0
    new-array v5, v5, [B

    .line 216
    div-int/lit8 v2, v2, 0x8

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v4

    :goto_1
    new-array v2, v2, [B

    .line 220
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v6, p0

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_4

    .line 230
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    const/high16 v10, 0xff0000

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0x10

    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v12, v10

    float-to-double v12, v12

    const-wide v14, 0x3fd3333333333333L    # 0.3

    mul-double v12, v12, v14

    int-to-float v14, v11

    float-to-double v14, v14

    const-wide v16, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    int-to-float v14, v9

    float-to-double v14, v14

    const-wide v16, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v12, v12

    const/16 v13, 0x78

    if-gt v12, v13, :cond_2

    const/4 v12, 0x0

    goto :goto_4

    :cond_2
    const/4 v12, 0x1

    :goto_4
    if-le v10, v13, :cond_3

    if-ge v11, v13, :cond_3

    if-ge v9, v13, :cond_3

    const/4 v9, 0x1

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    .line 262
    :goto_5
    div-int/lit8 v10, v8, 0x8

    mul-int v10, v10, v1

    add-int/2addr v10, v1

    sub-int/2addr v10, v4

    sub-int/2addr v10, v7

    .line 264
    aget-byte v11, v5, v10

    shl-int/2addr v11, v4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 265
    aget-byte v11, v2, v10

    shl-int/2addr v11, v4

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    .line 268
    array-length v1, v5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 269
    aput-object v5, v0, v6

    .line 270
    aput-object v2, v0, v4

    return-object v0
.end method

.method public static gray2Binary_BW(Landroid/graphics/Bitmap;)[[B
    .locals 18

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 55
    rem-int/lit8 v3, v2, 0x8

    const/4 v4, 0x1

    div-int/lit8 v5, v2, 0x8

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v5, v4

    :goto_0
    new-array v5, v5, [B

    .line 56
    div-int/lit8 v2, v2, 0x8

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v4

    :goto_1
    new-array v2, v2, [B

    .line 60
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v6, p0

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_4

    .line 69
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    const/high16 v10, 0xff0000

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0x10

    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v12, v10

    float-to-double v12, v12

    const-wide v14, 0x3fd3333333333333L    # 0.3

    mul-double v12, v12, v14

    int-to-float v14, v11

    float-to-double v14, v14

    const-wide v16, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    int-to-float v14, v9

    float-to-double v14, v14

    const-wide v16, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v12, v12

    const/16 v13, 0x5f

    if-gt v12, v13, :cond_2

    const/4 v12, 0x1

    goto :goto_4

    :cond_2
    const/4 v12, 0x0

    :goto_4
    if-le v10, v13, :cond_3

    if-ge v11, v13, :cond_3

    if-ge v9, v13, :cond_3

    const/4 v9, 0x1

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    .line 99
    :goto_5
    div-int/lit8 v10, v8, 0x8

    mul-int v10, v10, v1

    add-int/2addr v10, v1

    sub-int/2addr v10, v4

    sub-int/2addr v10, v7

    .line 101
    aget-byte v11, v5, v10

    shl-int/2addr v11, v4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 102
    aget-byte v11, v2, v10

    shl-int/2addr v11, v4

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    .line 105
    array-length v1, v5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 106
    aput-object v5, v0, v6

    .line 107
    aput-object v2, v0, v4

    return-object v0
.end method

.method public static gray2Binary_BWR(Landroid/graphics/Bitmap;)[[B
    .locals 18

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 115
    rem-int/lit8 v3, v2, 0x8

    const/4 v4, 0x1

    div-int/lit8 v5, v2, 0x8

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v5, v4

    :goto_0
    new-array v5, v5, [B

    .line 116
    div-int/lit8 v2, v2, 0x8

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v4

    :goto_1
    new-array v2, v2, [B

    .line 119
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v6, p0

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_5

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v0, :cond_4

    .line 126
    invoke-virtual {v3, v8, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    const/high16 v10, 0xff0000

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0x10

    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v12, v10

    float-to-double v12, v12

    const-wide v14, 0x3fd3333333333333L    # 0.3

    mul-double v12, v12, v14

    int-to-float v14, v11

    float-to-double v14, v14

    const-wide v16, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    int-to-float v14, v9

    float-to-double v14, v14

    const-wide v16, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v12, v12

    const/16 v13, 0x5f

    if-gt v12, v13, :cond_2

    const/4 v12, 0x0

    goto :goto_4

    :cond_2
    const/4 v12, 0x1

    :goto_4
    if-le v10, v13, :cond_3

    if-ge v11, v13, :cond_3

    if-ge v9, v13, :cond_3

    const/4 v9, 0x1

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    .line 152
    :goto_5
    div-int/lit8 v10, v8, 0x8

    mul-int v10, v10, v1

    add-int/2addr v10, v1

    sub-int/2addr v10, v4

    sub-int/2addr v10, v7

    .line 153
    aget-byte v11, v5, v10

    shl-int/2addr v11, v4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v10

    .line 154
    aget-byte v11, v2, v10

    shl-int/2addr v11, v4

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    .line 157
    array-length v1, v5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 158
    aput-object v5, v0, v6

    .line 159
    aput-object v2, v0, v4

    return-object v0
.end method

.method public static gray2Binary_BWYR(Landroid/graphics/Bitmap;)[[B
    .locals 17

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 167
    rem-int/lit8 v3, v2, 0x4

    const/4 v4, 0x1

    div-int/lit8 v2, v2, 0x4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :goto_0
    new-array v2, v2, [B

    .line 170
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v5, p0

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v0, :cond_4

    .line 176
    invoke-virtual {v3, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    const/high16 v9, 0xff0000

    and-int/2addr v9, v8

    shr-int/lit8 v9, v9, 0x10

    const v10, 0xff00

    and-int/2addr v10, v8

    shr-int/lit8 v10, v10, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v11, v9

    float-to-double v11, v11

    const-wide v13, 0x3fd3333333333333L    # 0.3

    mul-double v11, v11, v13

    int-to-float v13, v10

    float-to-double v13, v13

    const-wide v15, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v13, v13, v15

    add-double/2addr v11, v13

    int-to-float v13, v8

    float-to-double v13, v13

    const-wide v15, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v13, v13, v15

    add-double/2addr v11, v13

    double-to-int v11, v11

    const/16 v12, 0x5f

    if-gt v11, v12, :cond_1

    const/4 v11, 0x0

    goto :goto_3

    :cond_1
    const/4 v11, 0x1

    :goto_3
    if-le v9, v12, :cond_2

    if-ge v10, v12, :cond_2

    if-ge v8, v12, :cond_2

    const/4 v11, 0x3

    :cond_2
    const/4 v13, 0x2

    if-le v9, v12, :cond_3

    if-le v10, v12, :cond_3

    if-ge v8, v12, :cond_3

    const/4 v11, 0x2

    .line 203
    :cond_3
    div-int/lit8 v8, v7, 0x4

    mul-int v8, v8, v1

    add-int/2addr v8, v6

    .line 204
    aget-byte v9, v2, v8

    shl-int/2addr v9, v13

    or-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 207
    :cond_5
    array-length v0, v2

    filled-new-array {v4, v0}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    .line 208
    aput-object v2, v0, v5

    return-object v0
.end method

.method private static plus_truncate_uchar(BI)B
    .locals 2

    and-int/lit16 v0, p0, 0xff

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    add-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method
