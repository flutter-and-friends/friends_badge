.class public abstract Lcom/gg/reader/api/utils/BitBuffer;
.super Ljava/lang/Object;
.source "BitBuffer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    .line 1005
    new-instance v0, Lcom/gg/reader/api/utils/ArrayBitBuffer;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;-><init>(I)V

    return-object v0
.end method

.method public static allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    .line 1015
    new-instance v0, Lcom/gg/reader/api/utils/DynamicBitBuffer;

    invoke-direct {v0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;-><init>()V

    return-object v0
.end method

.method public static allocateDynamic(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    .line 1026
    new-instance v0, Lcom/gg/reader/api/utils/DynamicBitBuffer;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;-><init>(I)V

    return-object v0
.end method

.method public static wrap([B)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    .line 1037
    new-instance v0, Lcom/gg/reader/api/utils/ArrayBitBuffer;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asByteArray()[B
    .locals 5

    .line 929
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x7

    .line 930
    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 931
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    const/4 v3, 0x0

    .line 932
    invoke-virtual {p0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    :goto_0
    mul-int/lit8 v4, v3, 0x8

    if-ge v4, v0, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 936
    :cond_0
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    return-object v1
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public get([B)[B
    .locals 2

    .line 787
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public get([BI)[B
    .locals 2

    .line 864
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->get([BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public get([BII)[B
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get([BIII)[B
    .locals 1

    :goto_0
    if-le p2, p3, :cond_0

    .line 851
    invoke-virtual {p0, p4}, Lcom/gg/reader/api/utils/BitBuffer;->getByte(I)B

    move-result v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get([I)[I
    .locals 2

    .line 812
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([III)[I

    move-result-object p1

    return-object p1
.end method

.method public get([II)[I
    .locals 2

    .line 891
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->get([IIII)[I

    move-result-object p1

    return-object p1
.end method

.method public get([III)[I
    .locals 1

    :goto_0
    if-le p2, p3, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getInt()I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get([IIII)[I
    .locals 1

    :goto_0
    if-le p2, p3, :cond_0

    .line 878
    invoke-virtual {p0, p4}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v0

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get([J)[J
    .locals 2

    .line 837
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([JII)[J

    move-result-object p1

    return-object p1
.end method

.method public get([JI)[J
    .locals 2

    .line 918
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->get([JIII)[J

    move-result-object p1

    return-object p1
.end method

.method public get([JII)[J
    .locals 2

    :goto_0
    if-le p2, p3, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getLong()J

    move-result-wide v0

    aput-wide v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get([JIII)[J
    .locals 2

    :goto_0
    if-le p2, p3, :cond_0

    .line 905
    invoke-virtual {p0, p4}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v0

    aput-wide v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public get([Z)[Z
    .locals 2

    .line 762
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([ZII)[Z

    move-result-object p1

    return-object p1
.end method

.method public get([ZII)[Z
    .locals 1

    :goto_0
    if-le p2, p3, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getBoolean()Z

    move-result v0

    aput-boolean v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .locals 1

    .line 680
    new-array p1, p1, [B

    .line 681
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    .line 682
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public abstract getBoolean()Z
.end method

.method public abstract getByte()B
.end method

.method public abstract getByte(I)B
.end method

.method public abstract getByteUnsigned(I)B
.end method

.method public getDouble()D
    .locals 2

    .line 672
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat()F
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2

    .line 562
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getInt(I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getBoolean()Z

    move-result v1

    const/4 v2, -0x1

    add-int/2addr p1, v2

    move v0, p1

    const/4 v3, 0x0

    :cond_1
    const/4 v4, 0x7

    if-le v0, v4, :cond_2

    shl-int/lit8 v3, v3, 0x8

    .line 578
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_2
    shl-int/2addr v3, v0

    .line 581
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    sub-int/2addr v0, v0

    :goto_0
    if-gtz v0, :cond_1

    if-eqz v1, :cond_3

    shl-int p1, v2, p1

    or-int/2addr v3, p1

    :cond_3
    return v3
.end method

.method public getIntUnsigned(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    shl-int/lit8 v0, v0, 0x8

    .line 599
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, -0x8

    goto :goto_0

    :cond_1
    shl-int/2addr v0, p1

    .line 602
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    sub-int/2addr p1, p1

    :goto_0
    if-gtz p1, :cond_0

    return v0
.end method

.method public getLong()J
    .locals 7

    .line 613
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 614
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 615
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public getLong(I)J
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 625
    :cond_0
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getBoolean()Z

    move-result v2

    add-int/lit8 p1, p1, -0x1

    move-wide v3, v0

    move v0, p1

    :cond_1
    const/16 v1, 0x1f

    const-wide v5, 0xffffffffL

    if-le v0, v1, :cond_2

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    .line 631
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getInt()I

    move-result v1

    int-to-long v7, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    add-int/lit8 v0, v0, -0x20

    goto :goto_0

    :cond_2
    shl-long/2addr v3, v0

    .line 634
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    int-to-long v7, v1

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    sub-int/2addr v0, v0

    :goto_0
    if-gtz v0, :cond_1

    if-eqz v2, :cond_3

    const-wide/16 v0, -0x1

    int-to-long v5, p1

    long-to-int p1, v5

    shl-long/2addr v0, p1

    or-long/2addr v3, v0

    :cond_3
    return-wide v3
.end method

.method public getLongUnsigned(I)J
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/16 v2, 0x1f

    const-wide v3, 0xffffffffL

    if-le p1, v2, :cond_1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 651
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getInt()I

    move-result v2

    int-to-long v5, v2

    and-long v2, v5, v3

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, -0x20

    goto :goto_0

    :cond_1
    shl-long/2addr v0, p1

    .line 654
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    int-to-long v5, v2

    and-long v2, v5, v3

    or-long/2addr v0, v2

    sub-int/2addr p1, p1

    :goto_0
    if-gtz p1, :cond_0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 692
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public getString(II)Ljava/lang/String;
    .locals 3

    .line 719
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 721
    invoke-virtual {p0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    :cond_0
    new-instance p1, Ljava/lang/String;

    const-string p2, "ASCII"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public getString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 706
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public getString(ILjava/nio/charset/Charset;I)Ljava/lang/String;
    .locals 3

    .line 733
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 735
    invoke-virtual {p0, p3}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public abstract hashCode()I
.end method

.method public abstract limit()I
.end method

.method public abstract position()I
.end method

.method public abstract position(I)Lcom/gg/reader/api/utils/BitBuffer;
.end method

.method public put(B)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(BI)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 275
    invoke-virtual {p0, p1, p2}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(BI)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(I)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(II)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(J)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(J)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(JI)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 295
    invoke-virtual {p0, p1, p2, p3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/gg/reader/api/utils/BitBuffer;)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 3

    .line 324
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->size()I

    move-result v0

    .line 325
    :goto_0
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    sub-int v1, v0, v1

    if-lez v1, :cond_1

    .line 326
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    sub-int v1, v0, v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->getBoolean()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Z)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putString(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/gg/reader/api/utils/BitBuffer;->putString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/nio/ByteBuffer;)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 342
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 343
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put(B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put(Z)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putBoolean(Z)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public put([B)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 396
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put([BII)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public put([BI)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 476
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->put([BIII)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public put([BII)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 384
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put(B)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put([BIII)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 463
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0, p4}, Lcom/gg/reader/api/utils/BitBuffer;->put(BI)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put([I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 422
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put([III)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public put([II)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 504
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->put([IIII)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public put([III)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 410
    aget v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put(I)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put([IIII)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 491
    aget v0, p1, p2

    invoke-virtual {p0, v0, p4}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put([J)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 448
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put([JII)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public put([JI)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 532
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->put([JIII)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public put([JII)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 436
    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(J)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put([JIII)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 519
    aget-wide v0, p1, p2

    invoke-virtual {p0, v0, v1, p4}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put([Z)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 370
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put([ZII)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public put([ZII)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    :goto_0
    if-le p2, p3, :cond_0

    .line 358
    aget-boolean v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put(Z)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putBigInteger(Ljava/math/BigInteger;I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 3

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    .line 164
    new-array v0, p2, [B

    .line 165
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 166
    array-length v2, p1

    sub-int/2addr p2, v2

    array-length v2, p1

    invoke-static {p1, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 170
    :goto_0
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public putBit(Z)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putBoolean(Z)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract putBoolean(Z)Lcom/gg/reader/api/utils/BitBuffer;
.end method

.method public abstract putByte(B)Lcom/gg/reader/api/utils/BitBuffer;
.end method

.method public abstract putByte(BI)Lcom/gg/reader/api/utils/BitBuffer;
.end method

.method public putDouble(D)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 152
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(J)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public putFloat(F)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 141
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(I)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public putInt(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public putInt(II)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x7

    const/16 v1, 0xff

    if-le p2, v0, :cond_1

    add-int/lit8 v0, p2, -0x8

    shl-int/2addr v1, v0

    and-int/2addr v1, p1

    ushr-int v0, v1, v0

    int-to-byte v0, v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p2, p2, -0x8

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, -0x8

    neg-int v0, v0

    shr-int v0, v1, v0

    and-int/2addr v0, p1

    int-to-byte v0, v0

    .line 104
    invoke-virtual {p0, v0, p2}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(BI)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 p2, 0x0

    :goto_0
    if-gtz p2, :cond_0

    return-object p0
.end method

.method public putLong(J)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 3

    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p1

    const/16 v2, 0x38

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 77
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide/high16 v0, 0xff000000000000L

    and-long/2addr v0, p1

    const/16 v2, 0x30

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 78
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide v0, 0xff0000000000L

    and-long/2addr v0, p1

    const/16 v2, 0x28

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 79
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide v0, 0xff00000000L

    and-long/2addr v0, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 80
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide v0, 0xff000000L

    and-long/2addr v0, p1

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 81
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide/32 v0, 0xff0000

    and-long/2addr v0, p1

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 82
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide/32 v0, 0xff00

    and-long/2addr v0, p1

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    .line 83
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    const-wide/16 v0, 0xff

    and-long/2addr p1, v0

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 84
    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    return-object p0
.end method

.method public putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 7

    if-nez p3, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x1f

    const-wide/16 v1, 0x20

    const-wide v3, 0xffffffffL

    if-le p3, v0, :cond_1

    int-to-long v5, p3

    sub-long/2addr v5, v1

    long-to-int v0, v5

    shl-long v1, v3, v0

    and-long/2addr v1, p1

    ushr-long v0, v1, v0

    long-to-int v1, v0

    .line 124
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(I)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 p3, p3, -0x20

    goto :goto_0

    :cond_1
    int-to-long v5, p3

    sub-long/2addr v5, v1

    neg-long v0, v5

    long-to-int v1, v0

    shr-long v0, v3, v1

    and-long/2addr v0, p1

    long-to-int v1, v0

    .line 127
    invoke-virtual {p0, v1, p3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 p3, 0x0

    :goto_0
    if-gtz p3, :cond_0

    return-object p0
.end method

.method public putString(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 3

    const-string v0, "UTF-8"

    .line 181
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 182
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 3

    const-string v0, "ASCII"

    .line 210
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 211
    invoke-virtual {p0, v2, p2}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(BI)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    .line 196
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(B)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/nio/charset/Charset;I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 2

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    .line 227
    invoke-virtual {p0, v1, p3}, Lcom/gg/reader/api/utils/BitBuffer;->putByte(BI)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public putToByteBuffer(Ljava/nio/ByteBuffer;)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    .line 958
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public rewind()Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract size()I
.end method

.method public abstract size(I)Lcom/gg/reader/api/utils/BitBuffer;
.end method

.method public abstract slice()Lcom/gg/reader/api/utils/BitBuffer;
.end method

.method public abstract slice(I)Lcom/gg/reader/api/utils/BitBuffer;
.end method

.method public abstract slice(II)Lcom/gg/reader/api/utils/BitBuffer;
.end method
