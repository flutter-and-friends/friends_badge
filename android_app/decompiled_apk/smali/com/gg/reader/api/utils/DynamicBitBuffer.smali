.class public Lcom/gg/reader/api/utils/DynamicBitBuffer;
.super Lcom/gg/reader/api/utils/SimpleBitBuffer;
.source "DynamicBitBuffer.java"


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x100


# instance fields
.field private bytes:[B


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->toBytes(I)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 36
    new-array p1, p1, [B

    .line 37
    iget-object v0, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object p1, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    return-void
.end method

.method private static toBytes(I)I
    .locals 1

    .line 24
    rem-int/lit8 v0, p0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method protected rawGet(I)B
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 30
    invoke-direct {p0, v0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->ensureCapacity(I)V

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected rawLength()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected rawSet(IB)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 44
    invoke-direct {p0, v0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->ensureCapacity(I)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public slice()Lcom/gg/reader/api/utils/BitBuffer;
    .locals 4

    .line 55
    new-instance v0, Lcom/gg/reader/api/utils/ArrayBitBuffer;

    iget-object v1, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->position()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/ArrayBitBuffer;-><init>([BII)V

    return-object v0
.end method

.method public slice(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->slice(II)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 3

    .line 59
    new-instance v0, Lcom/gg/reader/api/utils/ArrayBitBuffer;

    iget-object v1, p0, Lcom/gg/reader/api/utils/DynamicBitBuffer;->bytes:[B

    invoke-virtual {p0}, Lcom/gg/reader/api/utils/DynamicBitBuffer;->size()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {v0, v1, p2, p1}, Lcom/gg/reader/api/utils/ArrayBitBuffer;-><init>([BII)V

    return-object v0
.end method
