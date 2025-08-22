.class public final Ljxl/biff/IntegerHelper;
.super Ljava/lang/Object;
.source "IntegerHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFourBytes(I[BI)V
    .locals 2

    .line 143
    invoke-static {p0}, Ljxl/biff/IntegerHelper;->getFourBytes(I)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 144
    aget-byte v0, p0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    .line 145
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    .line 146
    aget-byte v1, p0, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    add-int/2addr p2, v0

    .line 147
    aget-byte p0, p0, v0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static getFourBytes(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const v1, 0xffff

    and-int/2addr v1, p0

    const/high16 v2, -0x10000

    and-int/2addr p0, v2

    shr-int/lit8 p0, p0, 0x10

    const/4 v2, 0x0

    .line 112
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v1, 0x2

    .line 113
    invoke-static {p0, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public static getInt(BB)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method public static getInt(BBBB)I
    .locals 0

    .line 76
    invoke-static {p0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p0

    .line 77
    invoke-static {p2, p3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method public static getShort(BB)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    and-int/lit16 p1, p1, 0xff

    int-to-short p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static getTwoBytes(I[BI)V
    .locals 1

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    .line 129
    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 130
    aput-byte p0, p1, p2

    return-void
.end method

.method public static getTwoBytes(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const v1, 0xff00

    and-int/2addr p0, v1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method
