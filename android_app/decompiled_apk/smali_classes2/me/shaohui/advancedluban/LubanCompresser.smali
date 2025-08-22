.class Lme/shaohui/advancedluban/LubanCompresser;
.super Ljava/lang/Object;
.source "LubanCompresser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Luban Compress"


# instance fields
.field private mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private final mLuban:Lme/shaohui/advancedluban/LubanBuilder;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/LubanBuilder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    return-void
.end method

.method static synthetic access$000(Lme/shaohui/advancedluban/LubanCompresser;)Lme/shaohui/advancedluban/LubanBuilder;
    .locals 0

    .line 27
    iget-object p0, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    return-object p0
.end method

.method static synthetic access$100(Lme/shaohui/advancedluban/LubanCompresser;ILjava/io/File;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Lme/shaohui/advancedluban/LubanCompresser;->compressImage(ILjava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private compress(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    .line 265
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 266
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 267
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 269
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 270
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 273
    :goto_0
    div-int v4, v2, v1

    if-gt v4, p3, :cond_1

    div-int v4, v3, v1

    if-le v4, p2, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 278
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 280
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private compress(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p3, p4}, Lme/shaohui/advancedluban/LubanCompresser;->compress(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 322
    invoke-static {p5, p1}, Lme/shaohui/advancedluban/LubanCompresser;->rotatingImage(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 324
    invoke-direct {p0, p2, p1, p6, p7}, Lme/shaohui/advancedluban/LubanCompresser;->saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;J)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private compressImage(ILjava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-object p2

    .line 75
    :cond_0
    invoke-direct {p0, p2}, Lme/shaohui/advancedluban/LubanCompresser;->customCompress(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    invoke-direct {p0, p2}, Lme/shaohui/advancedluban/LubanCompresser;->thirdCompress(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 77
    :cond_2
    invoke-direct {p0, p2}, Lme/shaohui/advancedluban/LubanCompresser;->firstCompress(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private customCompress(Ljava/io/File;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lme/shaohui/advancedluban/LubanCompresser;->getCacheFilePath()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-direct {p0, v1}, Lme/shaohui/advancedluban/LubanCompresser;->getImageSpinAngle(Ljava/lang/String;)I

    move-result v5

    .line 194
    iget-object v0, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v0, v0, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    const-wide/16 v3, 0x400

    if-lez v0, :cond_0

    iget-object v0, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v0, v0, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    int-to-long v6, v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    div-long/2addr v8, v3

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    iget-object v0, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v0, v0, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    int-to-long v3, v0

    move-wide v6, v3

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    div-long/2addr v6, v3

    .line 197
    :goto_0
    invoke-static {v1}, Lme/shaohui/advancedluban/LubanCompresser;->getImageSize(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v3, 0x0

    .line 198
    aget v4, v0, v3

    const/4 v8, 0x1

    .line 199
    aget v9, v0, v8

    .line 201
    iget-object v10, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v10, v10, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    const/high16 v11, 0x44800000    # 1024.0f

    if-lez v10, :cond_1

    iget-object v10, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v10, v10, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    int-to-float v10, v10

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-float v12, v12

    div-float/2addr v12, v11

    cmpg-float v10, v10, v12

    if-gez v10, :cond_1

    .line 203
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-float v10, v12

    div-float/2addr v10, v11

    iget-object v12, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v12, v12, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    int-to-float v12, v12

    div-float/2addr v10, v12

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v10, v12

    int-to-float v4, v4

    div-float/2addr v4, v10

    float-to-int v4, v4

    int-to-float v9, v9

    div-float/2addr v9, v10

    float-to-int v9, v9

    .line 209
    :cond_1
    iget-object v10, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v10, v10, Lme/shaohui/advancedluban/LubanBuilder;->maxWidth:I

    if-lez v10, :cond_2

    .line 210
    iget-object v10, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v10, v10, Lme/shaohui/advancedluban/LubanBuilder;->maxWidth:I

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 212
    :cond_2
    iget-object v10, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v10, v10, Lme/shaohui/advancedluban/LubanBuilder;->maxHeight:I

    if-lez v10, :cond_3

    .line 213
    iget-object v10, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v10, v10, Lme/shaohui/advancedluban/LubanBuilder;->maxHeight:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_3
    int-to-float v4, v4

    .line 215
    aget v10, v0, v3

    int-to-float v10, v10

    div-float/2addr v4, v10

    int-to-float v9, v9

    aget v10, v0, v8

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 216
    aget v3, v0, v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 217
    aget v0, v0, v8

    int-to-float v0, v0

    mul-float v0, v0, v4

    float-to-int v8, v0

    .line 220
    iget-object v0, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget v0, v0, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-float v9, v9

    div-float/2addr v9, v11

    cmpl-float v0, v0, v9

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-nez v0, :cond_4

    return-object p1

    :cond_4
    move-object v0, p0

    move v4, v8

    .line 224
    invoke-direct/range {v0 .. v7}, Lme/shaohui/advancedluban/LubanCompresser;->compress(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private firstCompress(Ljava/io/File;)Ljava/io/File;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-direct/range {p0 .. p0}, Lme/shaohui/advancedluban/LubanCompresser;->getCacheFilePath()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x5

    div-long/2addr v3, v5

    move-object/from16 v8, p0

    .line 159
    invoke-direct {v8, v1}, Lme/shaohui/advancedluban/LubanCompresser;->getImageSpinAngle(Ljava/lang/String;)I

    move-result v5

    .line 160
    invoke-static {v1}, Lme/shaohui/advancedluban/LubanCompresser;->getImageSize(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v6, 0x0

    .line 162
    aget v7, v0, v6

    const/4 v9, 0x1

    aget v10, v0, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3fe2000000000000L    # 0.5625

    const/16 v15, 0x500

    const-wide/16 v16, 0x0

    if-gt v7, v10, :cond_4

    .line 163
    aget v7, v0, v6

    int-to-double v6, v7

    aget v10, v0, v9

    int-to-double v9, v10

    div-double/2addr v6, v9

    cmpg-double v9, v6, v11

    if-gtz v9, :cond_1

    cmpl-double v9, v6, v13

    if-lez v9, :cond_1

    const/4 v9, 0x0

    .line 165
    aget v3, v0, v9

    if-le v3, v15, :cond_0

    const/16 v6, 0x500

    goto :goto_0

    :cond_0
    aget v3, v0, v9

    move v6, v3

    :goto_0
    const/16 v18, 0x1

    .line 166
    aget v3, v0, v18

    mul-int v3, v3, v6

    aget v0, v0, v9

    div-int v0, v3, v0

    const/16 v3, 0x3c

    int-to-long v3, v3

    move/from16 v19, v6

    move v6, v0

    move/from16 v0, v19

    goto :goto_2

    :cond_1
    const/16 v18, 0x1

    cmpg-double v9, v6, v13

    if-gtz v9, :cond_3

    .line 169
    aget v6, v0, v18

    const/16 v7, 0x2d0

    if-le v6, v7, :cond_2

    const/16 v6, 0x2d0

    goto :goto_1

    :cond_2
    aget v6, v0, v18

    :goto_1
    const/4 v10, 0x0

    .line 170
    aget v7, v0, v10

    mul-int v7, v7, v6

    aget v0, v0, v18

    div-int v0, v7, v0

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    move-wide/from16 v3, v16

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_2
    move-wide/from16 v19, v3

    move v3, v0

    move v4, v6

    move-wide/from16 v6, v19

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    const/16 v18, 0x1

    .line 174
    aget v6, v0, v18

    int-to-double v6, v6

    aget v9, v0, v10

    int-to-double v13, v9

    div-double/2addr v6, v13

    cmpg-double v9, v6, v11

    if-gtz v9, :cond_6

    const-wide/high16 v11, 0x3fe2000000000000L    # 0.5625

    cmpl-double v9, v6, v11

    if-lez v9, :cond_6

    .line 176
    aget v3, v0, v18

    if-le v3, v15, :cond_5

    goto :goto_3

    :cond_5
    aget v15, v0, v18

    :goto_3
    const/4 v9, 0x0

    .line 177
    aget v3, v0, v9

    mul-int v3, v3, v15

    aget v0, v0, v18

    div-int/2addr v3, v0

    const/16 v0, 0x3c

    int-to-long v6, v0

    move v4, v15

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    const-wide/high16 v10, 0x3fe2000000000000L    # 0.5625

    cmpg-double v12, v6, v10

    if-gtz v12, :cond_8

    .line 180
    aget v6, v0, v9

    const/16 v7, 0x2d0

    if-le v6, v7, :cond_7

    const/4 v6, 0x1

    const/16 v15, 0x2d0

    goto :goto_4

    :cond_7
    aget v15, v0, v9

    const/4 v6, 0x1

    .line 181
    :goto_4
    aget v6, v0, v6

    mul-int v6, v6, v15

    aget v0, v0, v9

    div-int/2addr v6, v0

    move-wide/from16 v19, v3

    move v4, v6

    move-wide/from16 v6, v19

    move v3, v15

    goto :goto_5

    :cond_8
    move-wide/from16 v6, v16

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    .line 186
    invoke-direct/range {v0 .. v7}, Lme/shaohui/advancedluban/LubanCompresser;->compress(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getCacheFilePath()Ljava/lang/String;
    .locals 4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Luban_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget-object v1, v1, Lme/shaohui/advancedluban/LubanBuilder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v1, v2, :cond_0

    const-string v1, ".webp"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".jpg"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget-object v2, v2, Lme/shaohui/advancedluban/LubanBuilder;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageSize(Ljava/lang/String;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 245
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 246
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 247
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 248
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 250
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x0

    aput p0, v0, v3

    .line 251
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, v0, v2

    return-object v0
.end method

.method private getImageSpinAngle(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, 0x1

    .line 291
    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x10e

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    goto :goto_0

    :cond_2
    const/16 p1, 0xb4

    :goto_0
    return p1
.end method

.method private static rotatingImage(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 336
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p0, p0

    .line 337
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private saveImage(Ljava/lang/String;Landroid/graphics/Bitmap;J)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Luban Compressbitmap cannot be null"

    .line 353
    invoke-static {p2, v0}, Lme/shaohui/advancedluban/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 361
    :cond_0
    iget-object v0, p0, Lme/shaohui/advancedluban/LubanCompresser;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1

    .line 362
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 363
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lme/shaohui/advancedluban/LubanCompresser;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_0
    const/16 v0, 0x64

    .line 369
    iget-object v1, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget-object v1, v1, Lme/shaohui/advancedluban/LubanBuilder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lme/shaohui/advancedluban/LubanCompresser;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, v1, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 371
    :goto_1
    iget-object v1, p0, Lme/shaohui/advancedluban/LubanCompresser;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    cmp-long v3, v1, p3

    if-lez v3, :cond_2

    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    .line 372
    iget-object v1, p0, Lme/shaohui/advancedluban/LubanCompresser;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v0, v0, -0x6

    .line 374
    iget-object v1, p0, Lme/shaohui/advancedluban/LubanCompresser;->mLuban:Lme/shaohui/advancedluban/LubanBuilder;

    iget-object v1, v1, Lme/shaohui/advancedluban/LubanBuilder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lme/shaohui/advancedluban/LubanCompresser;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2, v1, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 376
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 378
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object p3, p0, Lme/shaohui/advancedluban/LubanCompresser;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 380
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 382
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private thirdCompress(Ljava/io/File;)Ljava/io/File;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct/range {p0 .. p0}, Lme/shaohui/advancedluban/LubanCompresser;->getCacheFilePath()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, p0

    .line 89
    invoke-direct {v8, v1}, Lme/shaohui/advancedluban/LubanCompresser;->getImageSpinAngle(Ljava/lang/String;)I

    move-result v5

    .line 90
    invoke-static {v1}, Lme/shaohui/advancedluban/LubanCompresser;->getImageSize(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v3, 0x0

    aget v0, v0, v3

    .line 91
    invoke-static {v1}, Lme/shaohui/advancedluban/LubanCompresser;->getImageSize(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v6, 0x1

    aget v4, v4, v6

    if-le v0, v4, :cond_0

    const/4 v3, 0x1

    .line 93
    :cond_0
    rem-int/lit8 v7, v0, 0x2

    if-ne v7, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 94
    :cond_1
    rem-int/lit8 v7, v4, 0x2

    if-ne v7, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-le v0, v4, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v0

    :goto_0
    if-le v0, v4, :cond_4

    move v9, v0

    goto :goto_1

    :cond_4
    move v9, v4

    :goto_1
    int-to-double v10, v7

    int-to-double v12, v9

    div-double/2addr v10, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x400

    const-wide/high16 v18, 0x3fe2000000000000L    # 0.5625

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    cmpg-double v22, v10, v14

    if-gtz v22, :cond_a

    cmpl-double v14, v10, v18

    if-lez v14, :cond_a

    const/16 v10, 0x680

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    if-ge v9, v10, :cond_6

    .line 103
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    div-long v18, v18, v16

    const-wide/16 v15, 0x96

    cmp-long v6, v18, v15

    if-gez v6, :cond_5

    return-object p1

    :cond_5
    mul-int v7, v7, v9

    int-to-double v6, v7

    const-wide/high16 v9, 0x409a000000000000L    # 1664.0

    .line 107
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v6, v9

    const-wide v9, 0x4062c00000000000L    # 150.0

    mul-double v6, v6, v9

    cmpg-double v9, v6, v11

    if-gez v9, :cond_f

    :goto_2
    move-wide v6, v11

    goto/16 :goto_4

    :cond_6
    const/16 v0, 0x137e

    const-wide v15, 0x4072c00000000000L    # 300.0

    if-lt v9, v10, :cond_7

    if-ge v9, v0, :cond_7

    .line 110
    div-int/lit8 v0, v7, 0x2

    .line 111
    div-int/lit8 v4, v9, 0x2

    mul-int v6, v0, v4

    int-to-double v6, v6

    const-wide v9, 0x40a37e0000000000L    # 2495.0

    .line 112
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v6, v9

    mul-double v6, v6, v15

    cmpg-double v9, v6, v11

    if-gez v9, :cond_f

    goto :goto_2

    :cond_7
    const-wide/high16 v10, 0x40a4000000000000L    # 2560.0

    if-lt v9, v0, :cond_8

    const/16 v0, 0x2800

    if-ge v9, v0, :cond_8

    .line 115
    div-int/lit8 v0, v7, 0x4

    .line 116
    div-int/lit8 v4, v9, 0x4

    mul-int v6, v0, v4

    int-to-double v6, v6

    .line 117
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v6, v9

    mul-double v6, v6, v15

    cmpg-double v9, v6, v20

    if-gez v9, :cond_f

    move-wide/from16 v6, v20

    goto/16 :goto_4

    .line 120
    :cond_8
    div-int/lit16 v0, v9, 0x500

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 121
    :cond_9
    div-int v4, v7, v0

    .line 122
    div-int v0, v9, v0

    mul-int v6, v4, v0

    int-to-double v6, v6

    .line 123
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    div-double/2addr v6, v9

    mul-double v6, v6, v15

    cmpg-double v9, v6, v20

    if-gez v9, :cond_e

    goto :goto_3

    :cond_a
    cmpg-double v0, v10, v18

    if-gtz v0, :cond_d

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v10, v14

    if-lez v0, :cond_d

    const/16 v0, 0x500

    if-ge v9, v0, :cond_b

    .line 127
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v10

    div-long v10, v10, v16

    const-wide/16 v12, 0xc8

    cmp-long v0, v10, v12

    if-gez v0, :cond_b

    return-object p1

    .line 131
    :cond_b
    div-int/lit16 v0, v9, 0x500

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 132
    :cond_c
    div-int v4, v7, v0

    .line 133
    div-int v0, v9, v0

    mul-int v6, v4, v0

    int-to-double v6, v6

    const-wide v9, 0x414c200000000000L    # 3686400.0

    div-double/2addr v6, v9

    const-wide/high16 v9, 0x4079000000000000L    # 400.0

    mul-double v6, v6, v9

    cmpg-double v9, v6, v20

    if-gez v9, :cond_e

    goto :goto_3

    :cond_d
    const-wide/high16 v14, 0x4094000000000000L    # 1280.0

    div-double v10, v14, v10

    div-double/2addr v12, v10

    .line 137
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v0, v12

    .line 138
    div-int v4, v7, v0

    .line 139
    div-int v0, v9, v0

    mul-int v6, v4, v0

    int-to-double v6, v6

    mul-double v10, v10, v14

    div-double/2addr v6, v10

    const-wide v9, 0x407f400000000000L    # 500.0

    mul-double v6, v6, v9

    cmpg-double v9, v6, v20

    if-gez v9, :cond_e

    :goto_3
    move-wide/from16 v6, v20

    :cond_e
    move/from16 v23, v4

    move v4, v0

    move/from16 v0, v23

    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    move v9, v4

    goto :goto_5

    :cond_10
    move v9, v0

    :goto_5
    if-eqz v3, :cond_11

    move v4, v0

    :cond_11
    double-to-long v6, v6

    move-object/from16 v0, p0

    move v3, v9

    .line 144
    invoke-direct/range {v0 .. v7}, Lme/shaohui/advancedluban/LubanCompresser;->compress(Ljava/lang/String;Ljava/lang/String;IIIJ)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method multiAction(Ljava/util/List;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 51
    new-instance v2, Lme/shaohui/advancedluban/LubanCompresser$2;

    invoke-direct {v2, p0, v1}, Lme/shaohui/advancedluban/LubanCompresser$2;-><init>(Lme/shaohui/advancedluban/LubanCompresser;Ljava/io/File;)V

    invoke-static {v2}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Lme/shaohui/advancedluban/LubanCompresser$3;

    invoke-direct {p1, p0}, Lme/shaohui/advancedluban/LubanCompresser$3;-><init>(Lme/shaohui/advancedluban/LubanCompresser;)V

    invoke-static {v0, p1}, Lrx/Observable;->zip(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object p1

    .line 67
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method singleAction(Ljava/io/File;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lrx/Observable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lme/shaohui/advancedluban/LubanCompresser$1;

    invoke-direct {v0, p0, p1}, Lme/shaohui/advancedluban/LubanCompresser$1;-><init>(Lme/shaohui/advancedluban/LubanCompresser;Ljava/io/File;)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object p1

    .line 45
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
