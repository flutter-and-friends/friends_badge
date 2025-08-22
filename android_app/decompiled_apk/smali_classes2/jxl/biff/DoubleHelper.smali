.class public Ljxl/biff/DoubleHelper;
.super Ljava/lang/Object;
.source "DoubleHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIEEEBytes(D[BI)V
    .locals 4

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 77
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const-wide/32 v1, 0xff00

    and-long/2addr v1, p0

    const/16 v3, 0x8

    shr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 78
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const-wide/32 v1, 0xff0000

    and-long/2addr v1, p0

    const/16 v3, 0x10

    shr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 79
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const-wide/32 v1, -0x1000000

    and-long/2addr v1, p0

    const/16 v3, 0x18

    shr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 80
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const-wide v1, 0xff00000000L

    and-long/2addr v1, p0

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 81
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const-wide v1, 0xff0000000000L

    and-long/2addr v1, p0

    const/16 v3, 0x28

    shr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 82
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    const-wide/high16 v1, 0xff000000000000L

    and-long/2addr v1, p0

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 83
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x7

    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x38

    shr-long/2addr p0, v0

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 84
    aput-byte p0, p2, p3

    return-void
.end method

.method public static getIEEEDouble([BI)D
    .locals 7

    .line 43
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    .line 45
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    add-int/lit8 v3, p1, 0x6

    aget-byte v3, p0, v3

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    invoke-static {v1, v2, v3, p0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p0

    const/high16 p1, -0x80000000

    and-int/2addr p1, p0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v1, 0x7fffffff

    and-int/2addr p0, v1

    int-to-long v1, p0

    const-wide v3, 0x100000000L

    mul-long v1, v1, v3

    int-to-long v5, v0

    if-gez v0, :cond_1

    add-long/2addr v5, v3

    :cond_1
    add-long/2addr v1, v5

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    if-eqz p1, :cond_2

    neg-double v0, v0

    :cond_2
    return-wide v0
.end method
