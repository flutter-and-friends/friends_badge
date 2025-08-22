.class public Lcn/highlight/tx/utils/CRC16Util;
.super Ljava/lang/Object;
.source "CRC16Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendCrc16([B)[B
    .locals 4

    .line 32
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcn/highlight/tx/utils/CRC16Util;->getCrc16([BII)[B

    move-result-object v0

    .line 33
    array-length v2, p0

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 34
    array-length v3, p0

    invoke-static {p0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    array-length p0, p0

    array-length v3, v0

    invoke-static {v0, v1, v2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static varargs appendCrc16([Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [B

    move-object v2, v1

    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 14
    aget-object v3, p0, v1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    .line 16
    array-length v4, v2

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v4, v4, [B

    new-array v5, v5, [B

    aput-byte v3, v5, v0

    .line 18
    array-length v3, v2

    invoke-static {v2, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    array-length v2, v2

    array-length v3, v5

    invoke-static {v5, v0, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    move-object v2, v4

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v2}, Lcn/highlight/tx/utils/CRC16Util;->appendCrc16([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCrc16([BII)[B
    .locals 3

    add-int/2addr p2, p1

    const v0, 0xffff

    :goto_0
    if-ge p1, p2, :cond_2

    const v1, 0xff00

    and-int/2addr v1, v0

    and-int/lit16 v0, v0, 0xff

    .line 55
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v0, v2

    or-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    and-int/lit8 v2, v0, 0x1

    if-lez v2, :cond_0

    shr-int/lit8 v0, v0, 0x1

    const v2, 0xa001

    xor-int/2addr v0, v2

    goto :goto_2

    :cond_0
    shr-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {v0}, Lcn/highlight/tx/utils/CRC16Util;->intToBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method private static intToBytes(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method
