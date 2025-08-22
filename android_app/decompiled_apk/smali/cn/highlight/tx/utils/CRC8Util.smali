.class public Lcn/highlight/tx/utils/CRC8Util;
.super Ljava/lang/Object;
.source "CRC8Util.java"


# static fields
.field static crc8_tab:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    sput-object v0, Lcn/highlight/tx/utils/CRC8Util;->crc8_tab:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x5et
        -0x44t
        -0x1et
        0x61t
        0x3ft
        -0x23t
        -0x7dt
        -0x3et
        -0x64t
        0x7et
        0x20t
        -0x5dt
        -0x3t
        0x1ft
        0x41t
        -0x63t
        -0x3dt
        0x21t
        0x7ft
        -0x4t
        -0x5et
        0x40t
        0x1et
        0x5ft
        0x1t
        -0x1dt
        -0x43t
        0x3et
        0x60t
        -0x7et
        -0x24t
        0x23t
        0x7dt
        -0x61t
        -0x3ft
        0x42t
        0x1ct
        -0x2t
        -0x60t
        -0x1ft
        -0x41t
        0x5dt
        0x3t
        -0x80t
        -0x22t
        0x3ct
        0x62t
        -0x42t
        -0x20t
        0x2t
        0x5ct
        -0x21t
        -0x7ft
        0x63t
        0x3dt
        0x7ct
        0x22t
        -0x40t
        -0x62t
        0x1dt
        0x43t
        -0x5ft
        -0x1t
        0x46t
        0x18t
        -0x6t
        -0x5ct
        0x27t
        0x79t
        -0x65t
        -0x3bt
        -0x7ct
        -0x26t
        0x38t
        0x66t
        -0x1bt
        -0x45t
        0x59t
        0x7t
        -0x25t
        -0x7bt
        0x67t
        0x39t
        -0x46t
        -0x1ct
        0x6t
        0x58t
        0x19t
        0x47t
        -0x5bt
        -0x5t
        0x78t
        0x26t
        -0x3ct
        -0x66t
        0x65t
        0x3bt
        -0x27t
        -0x79t
        0x4t
        0x5at
        -0x48t
        -0x1at
        -0x59t
        -0x7t
        0x1bt
        0x45t
        -0x3at
        -0x68t
        0x7at
        0x24t
        -0x8t
        -0x5at
        0x44t
        0x1at
        -0x67t
        -0x39t
        0x25t
        0x7bt
        0x3at
        0x64t
        -0x7at
        -0x28t
        0x5bt
        0x5t
        -0x19t
        -0x47t
        -0x74t
        -0x2et
        0x30t
        0x6et
        -0x13t
        -0x4dt
        0x51t
        0xft
        0x4et
        0x10t
        -0xet
        -0x54t
        0x2ft
        0x71t
        -0x6dt
        -0x33t
        0x11t
        0x4ft
        -0x53t
        -0xdt
        0x70t
        0x2et
        -0x34t
        -0x6et
        -0x2dt
        -0x73t
        0x6ft
        0x31t
        -0x4et
        -0x14t
        0xet
        0x50t
        -0x51t
        -0xft
        0x13t
        0x4dt
        -0x32t
        -0x70t
        0x72t
        0x2ct
        0x6dt
        0x33t
        -0x2ft
        -0x71t
        0xct
        0x52t
        -0x50t
        -0x12t
        0x32t
        0x6ct
        -0x72t
        -0x30t
        0x53t
        0xdt
        -0x11t
        -0x4ft
        -0x10t
        -0x52t
        0x4ct
        0x12t
        -0x6ft
        -0x31t
        0x2dt
        0x73t
        -0x36t
        -0x6ct
        0x76t
        0x28t
        -0x55t
        -0xbt
        0x17t
        0x49t
        0x8t
        0x56t
        -0x4ct
        -0x16t
        0x69t
        0x37t
        -0x2bt
        -0x75t
        0x57t
        0x9t
        -0x15t
        -0x4bt
        0x36t
        0x68t
        -0x76t
        -0x2ct
        -0x6bt
        -0x35t
        0x29t
        0x77t
        -0xct
        -0x56t
        0x48t
        0x16t
        -0x17t
        -0x49t
        0x55t
        0xbt
        -0x78t
        -0x2at
        0x34t
        0x6at
        0x2bt
        0x75t
        -0x69t
        -0x37t
        0x4at
        0x14t
        -0xat
        -0x58t
        0x74t
        0x2at
        -0x38t
        -0x6at
        0x15t
        0x4bt
        -0x57t
        -0x9t
        -0x4at
        -0x18t
        0xat
        0x54t
        -0x29t
        -0x77t
        0x6bt
        0x35t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcCrc8([B)B
    .locals 2

    .line 16
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcn/highlight/tx/utils/CRC8Util;->calcCrc8([BIIB)B

    move-result p0

    return p0
.end method

.method public static calcCrc8([BII)B
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, p2, v0}, Lcn/highlight/tx/utils/CRC8Util;->calcCrc8([BIIB)B

    move-result p0

    return p0
.end method

.method public static calcCrc8([BIIB)B
    .locals 3

    move v0, p3

    move p3, p1

    :goto_0
    add-int v1, p1, p2

    if-ge p3, v1, :cond_0

    .line 63
    sget-object v1, Lcn/highlight/tx/utils/CRC8Util;->crc8_tab:[B

    aget-byte v2, p0, p3

    xor-int/2addr v0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v0, v1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static calcCrc82([B)B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 23
    aget-byte v3, p0, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_0

    shl-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    xor-int/lit16 v3, v3, 0x107

    goto :goto_2

    :cond_0
    shl-int/lit8 v3, v3, 0x1

    :goto_2
    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    return v2
.end method
