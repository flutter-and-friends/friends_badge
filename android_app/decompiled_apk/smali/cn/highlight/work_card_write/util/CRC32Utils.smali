.class public Lcn/highlight/work_card_write/util/CRC32Utils;
.super Ljava/lang/Object;
.source "CRC32Utils.java"


# static fields
.field private static final POLY:I = -0x12477ce0

.field private static final TABLE_SIZE:I = 0x100

.field private static final table:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 7
    sput-object v1, Lcn/highlight/work_card_write/util/CRC32Utils;->table:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    shl-int/lit8 v3, v2, 0x18

    move v4, v3

    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    const/high16 v5, -0x80000000

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    shl-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_2

    :cond_0
    shl-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 19
    :cond_1
    sget-object v3, Lcn/highlight/work_card_write/util/CRC32Utils;->table:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crc32([B)I
    .locals 5

    .line 25
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v3, p0, v1

    shr-int/lit8 v4, v2, 0x18

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 27
    sget-object v4, Lcn/highlight/work_card_write/util/CRC32Utils;->table:[I

    aget v3, v4, v3

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static crc32([BI)I
    .locals 4

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    shr-int/lit8 v3, p1, 0x18

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 p1, p1, 0x8

    .line 36
    sget-object v3, Lcn/highlight/work_card_write/util/CRC32Utils;->table:[I

    aget v2, v3, v2

    xor-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static toByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x3

    aput-byte p0, v0, v1

    return-object v0
.end method
