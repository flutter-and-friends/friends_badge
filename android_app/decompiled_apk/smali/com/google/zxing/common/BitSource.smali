.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source "BitSource.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getBitOffset()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    return v0
.end method

.method public getByteOffset()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    return v0
.end method

.method public readBits(I)I
    .locals 9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_5

    const/16 v1, 0x20

    if-gt p1, v1, :cond_5

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-gt p1, v1, :cond_5

    .line 70
    iget v1, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/16 v4, 0x8

    if-lez v1, :cond_1

    rsub-int/lit8 v1, v1, 0x8

    if-ge p1, v1, :cond_0

    move v5, p1

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    sub-int/2addr v1, v5

    rsub-int/lit8 v6, v5, 0x8

    shr-int v6, v3, v6

    shl-int/2addr v6, v1

    .line 75
    iget-object v7, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v8, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/2addr v6, v7

    shr-int v1, v6, v1

    sub-int/2addr p1, v5

    .line 77
    iget v6, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 78
    iget v5, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-ne v5, v4, :cond_2

    .line 79
    iput v2, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v8, v0

    .line 80
    iput v8, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-lez p1, :cond_4

    :goto_2
    if-ge p1, v4, :cond_3

    if-lez p1, :cond_4

    sub-int/2addr v4, p1

    shr-int v0, v3, v4

    shl-int/2addr v0, v4

    shl-int/2addr v1, p1

    .line 96
    iget-object v2, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v3, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v2, v2, v3

    and-int/2addr v0, v2

    shr-int/2addr v0, v4

    or-int/2addr v1, v0

    .line 97
    iget v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/zxing/common/BitSource;->bitOffset:I

    goto :goto_3

    :cond_3
    shl-int/lit8 v1, v1, 0x8

    .line 87
    iget-object v2, p0, Lcom/google/zxing/common/BitSource;->bytes:[B

    iget v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v2, v2, v5

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/2addr v5, v0

    .line 88
    iput v5, p0, Lcom/google/zxing/common/BitSource;->byteOffset:I

    add-int/lit8 p1, p1, -0x8

    goto :goto_2

    :cond_4
    :goto_3
    return v1

    .line 64
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
