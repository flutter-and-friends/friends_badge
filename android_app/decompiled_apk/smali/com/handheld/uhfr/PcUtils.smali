.class public Lcom/handheld/uhfr/PcUtils;
.super Ljava/lang/Object;
.source "PcUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPc(I)Ljava/lang/String;
    .locals 1

    shl-int/lit8 p0, p0, 0xb

    .line 41
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Lcom/gg/reader/api/utils/BitBuffer;->put(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 p0, 0x10

    .line 43
    invoke-virtual {v0, p0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 p0, 0x2

    new-array p0, p0, [B

    .line 45
    invoke-virtual {v0, p0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 46
    invoke-static {p0}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValueLen(I)I
    .locals 1

    .line 30
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    .line 31
    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 33
    :cond_0
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static getValueLen(Ljava/lang/String;)I
    .locals 1

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static getValueLen([B)I
    .locals 1

    .line 20
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 21
    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 23
    :cond_0
    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static padRight(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 4

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    if-gtz v0, :cond_0

    return-object p0

    .line 55
    :cond_0
    new-array v0, p1, [C

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    if-ge p0, p1, :cond_1

    .line 58
    aput-char p2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
