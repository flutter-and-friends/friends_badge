.class public Lcn/highlight/core/zxing/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7

    .line 20
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 21
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    mul-int v1, p2, p1

    mul-int/lit8 v1, v1, 0x4

    int-to-long v1, v1

    .line 25
    sget-wide v3, Lcn/highlight/core/zxing/utils/AppliationUtil;->FREE_MEMORY:J

    const-wide/32 v5, 0x100000

    mul-long v3, v3, v5

    const-wide/16 v5, 0x4

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3

    mul-long v3, v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    add-int/lit8 p2, p2, -0x32

    add-int/lit8 p1, p1, -0x32

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-gt v0, p2, :cond_2

    if-le p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 32
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 33
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-ge p2, p0, :cond_3

    move p0, p2

    :cond_3
    :goto_2
    if-nez p0, :cond_4

    return v1

    :cond_4
    return p0
.end method

.method public static decodeBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 43
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 45
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 47
    invoke-static {v0, p1, p2}, Lcn/highlight/core/zxing/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 50
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
