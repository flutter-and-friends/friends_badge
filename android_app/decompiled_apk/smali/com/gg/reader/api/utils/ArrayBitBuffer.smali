.class public Lcom/gg/reader/api/utils/ArrayBitBuffer;
.super Lcom/gg/reader/api/utils/SimpleBitBuffer;
.source "ArrayBitBuffer.java"


# instance fields
.field private bytes:[B


# direct methods
.method protected constructor <init>(I)V
    .locals 6

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;-><init>()V

    int-to-long v0, p1

    const-wide/16 v2, 0x8

    .line 21
    rem-long v4, v0, v2

    sub-long v4, v2, v4

    add-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v1, v0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->bytes:[B

    .line 22
    iput p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->limit:I

    .line 23
    iget p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->limit:I

    iput p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->size:I

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->bytes:[B

    .line 28
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->limit:I

    .line 29
    iget p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->limit:I

    iput p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->size:I

    return-void
.end method

.method protected constructor <init>([BII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->bytes:[B

    .line 15
    iput p2, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->limit:I

    .line 16
    iput p3, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->offset:I

    .line 17
    iput p2, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->size:I

    return-void
.end method


# virtual methods
.method public limit()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->limit:I

    return v0
.end method

.method protected rawGet(I)B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected rawLength()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->limit:I

    return v0
.end method

.method protected rawSet(IB)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->bytes:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public slice()Lcom/gg/reader/api/utils/BitBuffer;
    .locals 5

    .line 53
    new-instance v0, Lcom/gg/reader/api/utils/ArrayBitBuffer;

    iget-object v1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->bytes:[B

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->offset:I

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/ArrayBitBuffer;-><init>([BII)V

    return-object v0
.end method

.method public slice(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;->slice(II)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 3

    .line 57
    new-instance v0, Lcom/gg/reader/api/utils/ArrayBitBuffer;

    iget-object v1, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->bytes:[B

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/ArrayBitBuffer;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget v2, p0, Lcom/gg/reader/api/utils/ArrayBitBuffer;->offset:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, p2, v2}, Lcom/gg/reader/api/utils/ArrayBitBuffer;-><init>([BII)V

    return-object v0
.end method
