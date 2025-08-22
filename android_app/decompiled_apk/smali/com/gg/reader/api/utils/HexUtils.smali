.class public Lcom/gg/reader/api/utils/HexUtils;
.super Ljava/lang/Object;
.source "HexUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2Hex(B)Ljava/lang/String;
    .locals 2

    and-int/lit16 p0, p0, 0xff

    .line 171
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 300
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 303
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static bytes2HexString([BII)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    .line 274
    array-length v0, p0

    if-lez v0, :cond_3

    add-int v0, p1, p2

    .line 277
    array-length v1, p0

    if-gt v0, v1, :cond_2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 285
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 287
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->byte2Hex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 282
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 278
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 275
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static bytes2Int([B)I
    .locals 1

    const/4 v0, 0x0

    .line 370
    invoke-static {p0, v0}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([BI)I

    move-result p0

    return p0
.end method

.method public static bytes2Int([BI)I
    .locals 3

    if-eqz p0, :cond_0

    .line 353
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_0

    .line 357
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 354
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static bytes2Short([B)S
    .locals 1

    const/4 v0, 0x0

    .line 329
    invoke-static {p0, v0}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Short([BI)S

    move-result p0

    return p0
.end method

.method public static bytes2Short([BI)S
    .locals 2

    if-eqz p0, :cond_0

    .line 314
    array-length v0, p0

    add-int/lit8 v1, p1, 0x2

    if-lt v0, v1, :cond_0

    .line 318
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    .line 315
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static charToByte(C)B
    .locals 1

    .line 57
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    const-string v0, "0123456789ABCDEF"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static hex2Byte(Ljava/lang/String;)B
    .locals 3

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 73
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 75
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result p0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public static hex2Int(Ljava/lang/String;)I
    .locals 4

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 112
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 115
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v0

    shl-int/lit8 v0, v0, 0x1c

    const/4 v2, 0x1

    .line 116
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    const/4 v2, 0x2

    .line 117
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v0, v2

    const/4 v2, 0x3

    .line 118
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    const/4 v2, 0x4

    .line 119
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v0, v3

    const/4 v3, 0x5

    .line 120
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v1, v3, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x6

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v1

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    const/4 v1, 0x7

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static hex2Long(Ljava/lang/String;)J
    .locals 10

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000000000000000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 137
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 140
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v0

    shl-int/lit8 v0, v0, 0x1c

    const/4 v2, 0x1

    .line 141
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    const/4 v2, 0x2

    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v0, v2

    const/4 v2, 0x3

    .line 143
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    const/4 v2, 0x4

    .line 144
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    const/16 v4, 0xc

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    const/4 v3, 0x5

    .line 145
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    const/16 v5, 0x8

    shl-int/2addr v3, v5

    or-int/2addr v0, v3

    const/4 v3, 0x6

    .line 146
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    const/4 v3, 0x7

    .line 147
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v0, v3

    int-to-long v6, v0

    shl-long/2addr v6, v1

    .line 149
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v0

    shl-int/2addr v0, v4

    const/16 v3, 0x9

    .line 150
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    shl-int/2addr v3, v5

    or-int/2addr v0, v3

    const/16 v3, 0xa

    .line 151
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    shl-int/2addr v3, v2

    or-int/2addr v0, v3

    const/16 v3, 0xb

    .line 152
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    or-int/2addr v0, v3

    int-to-long v8, v0

    or-long/2addr v6, v8

    shl-long v0, v6, v1

    .line 154
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v3

    shl-int/2addr v3, v4

    const/16 v4, 0xd

    .line 155
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v4

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    const/16 v4, 0xe

    .line 156
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v4

    shl-int/lit8 v2, v4, 0x4

    or-int/2addr v2, v3

    const/16 v3, 0xf

    .line 157
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result p0

    or-int/2addr p0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hex2Short(Ljava/lang/String;)S
    .locals 3

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 91
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 94
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v0

    shl-int/lit8 v0, v0, 0xc

    const/4 v2, 0x1

    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x2

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result v2

    shl-int/lit8 v1, v2, 0x4

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->charToByte(C)B

    move-result p0

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .locals 5

    if-eqz p0, :cond_4

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    const/4 v1, 0x0

    .line 241
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 242
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 243
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->isHexDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    .line 249
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 252
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 253
    new-array p0, p0, [B

    const/4 v1, 0x0

    .line 256
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    add-int/lit8 v3, v1, 0x2

    .line 257
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hex2Byte(Ljava/lang/String;)B

    move-result v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_1

    :cond_3
    return-object p0

    .line 235
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static int2Bytes(I)[B
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

.method public static int2Hex(I)Ljava/lang/String;
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-short v0, v0

    .line 206
    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->short2Hex(S)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p0, v1

    int-to-short p0, p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->short2Hex(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isHexString(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 42
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->isHexDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static long2Bytes(J)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/16 v2, 0x38

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    shr-long v2, p0, v0

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/4 v2, 0x6

    aput-byte v0, v1, v2

    and-long/2addr p0, v4

    long-to-int p1, p0

    int-to-byte p0, p1

    const/4 p1, 0x7

    aput-byte p0, v1, p1

    return-object v1
.end method

.method public static long2Hex(J)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v1, v0

    .line 221
    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->int2Hex(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int p1, p0

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->int2Hex(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static short2Bytes(S)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static short2Hex(S)Ljava/lang/String;
    .locals 2

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 191
    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->byte2Hex(B)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->byte2Hex(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
