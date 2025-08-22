.class public Lcn/manytag/rfidapi/uhf/m;
.super Ljava/lang/Object;


# direct methods
.method public static a()[B
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    aput-byte v2, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static a(B)[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x22

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    aput-byte p0, v0, v1

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result p0

    const/4 v1, 0x6

    aput-byte p0, v0, v1

    const/4 p0, 0x7

    const/16 v1, -0x4a

    aput-byte v1, v0, p0

    const/16 p0, 0x8

    const/16 v1, 0x16

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static a(I)[B
    .locals 6

    sget v0, Lcn/manytag/rfidapi/uhf/MST1126;->SOOUND_OFF:I

    const/4 v1, 0x6

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    sget v0, Lcn/manytag/rfidapi/uhf/MST1126;->SOOUND_ON:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x6

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x9

    new-array v0, v0, [B

    const/16 v4, 0x6b

    aput-byte v4, v0, v3

    const/16 v3, 0x68

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    const/4 v3, 0x2

    const/16 v5, 0x10

    aput-byte v5, v0, v3

    const/4 v3, 0x3

    aput-byte v4, v0, v3

    const/4 v3, 0x4

    aput-byte v4, v0, v3

    const/4 v3, 0x5

    aput-byte p0, v0, v3

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result p0

    aput-byte p0, v0, v1

    const/4 p0, 0x7

    const/16 v1, -0x4a

    aput-byte v1, v0, p0

    const/16 p0, 0x16

    aput-byte p0, v0, v2

    return-object v0
.end method

.method public static a(II)[B
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x68

    aput-byte v3, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x34

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v2, 0x4

    aput-byte v2, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcn/manytag/rfidapi/uhf/util/HexUtil;->IntToHex(Ljava/lang/Integer;)B

    move-result p0

    const/4 v2, 0x6

    aput-byte p0, v0, v2

    const/4 p0, 0x7

    aput-byte v1, v0, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcn/manytag/rfidapi/uhf/util/HexUtil;->IntToHex(Ljava/lang/Integer;)B

    move-result p0

    const/16 p1, 0x8

    aput-byte p0, v0, p1

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->c([B)B

    move-result p0

    const/16 p1, 0x9

    aput-byte p0, v0, p1

    const/16 p0, 0xa

    const/16 p1, -0x4a

    aput-byte p1, v0, p0

    const/16 p0, 0xb

    const/16 p1, 0x16

    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static a([B)[B
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x68

    aput-byte v3, v0, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    aput-byte v2, v0, v3

    const/4 v3, 0x4

    aput-byte v4, v0, v3

    aget-byte v1, p0, v1

    const/4 v3, 0x5

    aput-byte v1, v0, v3

    aget-byte p0, p0, v2

    const/4 v1, 0x6

    aput-byte p0, v0, v1

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->d([B)B

    move-result p0

    const/4 v1, 0x7

    aput-byte p0, v0, v1

    const/16 p0, 0x8

    const/16 v1, -0x4a

    aput-byte v1, v0, p0

    const/16 p0, 0x9

    const/16 v1, 0x16

    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static a([BI)[B
    .locals 6

    array-length v0, p0

    add-int/lit8 v0, v0, 0xb

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x6b

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x68

    aput-byte v4, v1, v3

    const/4 v4, 0x2

    const/16 v5, 0x42

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    array-length v5, p0

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcn/manytag/rfidapi/uhf/util/HexUtil;->IntToHex(Ljava/lang/Integer;)B

    move-result v4

    const/4 v5, 0x4

    aput-byte v4, v1, v5

    const/4 v4, 0x5

    aput-byte v3, v1, v4

    const/4 v4, 0x6

    aput-byte v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcn/manytag/rfidapi/uhf/util/HexUtil;->IntToHex(Ljava/lang/Integer;)B

    move-result p1

    const/4 v4, 0x7

    aput-byte p1, v1, v4

    :goto_0
    array-length p1, p0

    if-ge v2, p1, :cond_0

    add-int/lit8 p1, v2, 0x8

    aget-byte v4, p0, v2

    aput-byte v4, v1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, v0, -0x3

    invoke-static {v1}, Lcn/manytag/rfidapi/uhf/m;->c([B)B

    move-result p1

    aput-byte p1, v1, p0

    add-int/lit8 p0, v0, -0x2

    const/16 p1, -0x4a

    aput-byte p1, v1, p0

    sub-int/2addr v0, v3

    const/16 p0, 0x16

    aput-byte p0, v1, v0

    return-object v1
.end method

.method private static b([B)B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static b()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static b(I)[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x20

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcn/manytag/rfidapi/uhf/util/HexUtil;->IntToHex(Ljava/lang/Integer;)B

    move-result p0

    const/4 v1, 0x5

    aput-byte p0, v0, v1

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result p0

    const/4 v1, 0x6

    aput-byte p0, v0, v1

    const/4 p0, 0x7

    const/16 v1, -0x4a

    aput-byte v1, v0, p0

    const/16 p0, 0x8

    const/16 v1, 0x16

    aput-byte v1, v0, p0

    return-object v0
.end method

.method private static c([B)B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static c()[B
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x68

    aput-byte v3, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x44

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static c(I)[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x30

    aput-byte v3, v0, v2

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 p0, 0x5

    aput-byte v1, v0, p0

    const/4 p0, 0x6

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    aput-byte v1, v0, p0

    const/4 p0, 0x7

    const/16 v1, -0x4a

    aput-byte v1, v0, p0

    const/16 p0, 0x8

    const/16 v1, 0x16

    aput-byte v1, v0, p0

    return-object v0
.end method

.method private static d([B)B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    aget-byte v2, p0, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static d()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x21

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static e()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x40

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static f()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x43

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static g()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x31

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static h()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static i()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x32

    aput-byte v3, v0, v2

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    const/4 v3, 0x4

    aput-byte v1, v0, v3

    const/4 v1, 0x5

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static j()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x35

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static k()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/16 v3, 0x23

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static l()[B
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static m()[B
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x68

    aput-byte v3, v0, v2

    const/4 v3, 0x2

    const/16 v4, 0x40

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcn/manytag/rfidapi/uhf/m;->b([B)B

    move-result v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    return-object v0
.end method
