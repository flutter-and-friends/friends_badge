.class public abstract Lcom/gg/reader/api/utils/SimpleBitBuffer;
.super Lcom/gg/reader/api/utils/BitBuffer;
.source "SimpleBitBuffer.java"


# instance fields
.field protected limit:I

.field protected offset:I

.field private position:I

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/gg/reader/api/utils/BitBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method protected advance(IZ)V
    .locals 1

    .line 23
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    if-eqz p2, :cond_0

    .line 24
    iget p1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    iget p2, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->size:I

    if-le p1, p2, :cond_0

    .line 25
    iput p1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->size:I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 143
    :cond_1
    instance-of v2, p1, Lcom/gg/reader/api/utils/BitBuffer;

    if-nez v2, :cond_2

    return v1

    .line 146
    :cond_2
    check-cast p1, Lcom/gg/reader/api/utils/BitBuffer;

    .line 147
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->size()I

    move-result v2

    .line 148
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position()I

    move-result v3

    .line 152
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    :cond_4
    :goto_0
    if-ge v5, v2, :cond_7

    sub-int v6, v2, v5

    const/4 v7, 0x7

    if-le v6, v7, :cond_6

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->getByte()B

    move-result v6

    .line 157
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v6, v7, :cond_5

    .line 170
    :goto_1
    invoke-virtual {p0, v3}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 171
    invoke-virtual {p1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    return v1

    :cond_5
    add-int/lit8 v5, v5, 0x7

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 164
    :try_start_1
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->getBoolean()Z

    move-result v6

    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->getBoolean()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v6, v7, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 170
    invoke-virtual {p0, v3}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 171
    invoke-virtual {p1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 172
    throw v0

    .line 170
    :cond_7
    invoke-virtual {p0, v3}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 171
    invoke-virtual {p1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    return v0
.end method

.method public getBoolean()Z
    .locals 5

    .line 61
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    iget v1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0, v2, v1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->advance(IZ)V

    .line 63
    div-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v3}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v3

    rem-int/lit8 v0, v0, 0x8

    const/16 v4, 0x80

    ushr-int v0, v4, v0

    and-int/2addr v0, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getByte()B
    .locals 6

    .line 69
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    iget v1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0, v1, v2}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->advance(IZ)V

    .line 71
    div-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v3

    rem-int/2addr v0, v1

    const/16 v4, 0xff

    ushr-int v5, v4, v0

    and-int/2addr v3, v5

    shl-int/2addr v3, v0

    int-to-byte v3, v3

    if-lez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 72
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v2

    and-int/2addr v2, v4

    sub-int/2addr v1, v0

    ushr-int v0, v2, v1

    or-int/2addr v0, v3

    int-to-byte v3, v0

    :cond_0
    return v3
.end method

.method public getByte(I)B
    .locals 9

    .line 78
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    iget v1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, p1, v1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->advance(IZ)V

    .line 80
    div-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v2

    rem-int/lit8 v3, v0, 0x8

    const/16 v4, 0x80

    ushr-int v3, v4, v3

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v3

    add-int/lit8 p1, p1, -0x1

    rsub-int/lit8 v2, p1, 0x8

    const v4, 0xff00

    shl-int v5, v4, v2

    const v6, 0xffff

    and-int/2addr v5, v6

    .line 84
    rem-int/lit8 v6, v0, 0x8

    ushr-int/2addr v5, v6

    int-to-short v5, v5

    .line 86
    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v7

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x8

    and-int/2addr v4, v7

    shl-int/2addr v4, v6

    int-to-byte v4, v4

    rsub-int/lit8 v7, v6, 0x8

    const/16 v8, 0xff

    if-ge v7, p1, :cond_1

    add-int/2addr v0, v3

    .line 88
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v0

    and-int/lit16 v3, v5, 0xff

    and-int/2addr v0, v3

    and-int/2addr v0, v8

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, -0x8

    sub-int v3, p1, v6

    ushr-int/2addr v0, v3

    or-int/2addr v0, v4

    int-to-byte v4, v0

    :cond_1
    and-int/lit16 v0, v4, 0xff

    ushr-int/2addr v0, v2

    int-to-byte v0, v0

    if-eqz v1, :cond_2

    shl-int p1, v8, p1

    and-int/2addr p1, v8

    or-int/2addr v0, p1

    :cond_2
    int-to-byte p1, v0

    return p1
.end method

.method public getByteUnsigned(I)B
    .locals 6

    .line 96
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    iget v1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, p1, v1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->advance(IZ)V

    rsub-int/lit8 v1, p1, 0x8

    const v2, 0xff00

    shl-int v3, v2, v1

    const v4, 0xffff

    and-int/2addr v3, v4

    .line 98
    rem-int/lit8 v4, v0, 0x8

    ushr-int/2addr v3, v4

    int-to-short v3, v3

    .line 100
    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v5

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/2addr v2, v5

    shl-int/2addr v2, v4

    int-to-byte v2, v2

    rsub-int/lit8 v5, v4, 0x8

    if-ge v5, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 102
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v0

    and-int/lit16 v3, v3, 0xff

    and-int/2addr v0, v3

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x8

    sub-int/2addr p1, v4

    ushr-int p1, v0, p1

    or-int/2addr p1, v2

    int-to-byte v2, p1

    :cond_0
    and-int/lit16 p1, v2, 0xff

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->size()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public limit()I
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawLength()I

    move-result v0

    return v0
.end method

.method public offset()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    return v0
.end method

.method public position()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    return v0
.end method

.method public position(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 178
    iput p1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    return-object p0
.end method

.method public putBoolean(Z)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 5

    .line 31
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    iget v1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, v1, v1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->advance(IZ)V

    .line 33
    div-int/lit8 v1, v0, 0x8

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v2

    rem-int/lit8 v0, v0, 0x8

    const/16 v3, 0x80

    ushr-int v4, v3, v0

    not-int v4, v4

    and-int/2addr v2, v4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    ushr-int p1, v3, v0

    add-int/2addr v2, p1

    int-to-byte p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawSet(IB)V

    return-object p0
.end method

.method public putByte(B)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 7

    .line 39
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    iget v1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 40
    invoke-virtual {p0, v2, v1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->advance(IZ)V

    .line 41
    div-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v3}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v4

    rem-int/2addr v0, v2

    const/16 v5, 0xff

    ushr-int v6, v5, v0

    not-int v6, v6

    int-to-byte v6, v6

    and-int/2addr v4, v6

    int-to-byte v4, v4

    and-int/2addr p1, v5

    ushr-int v5, p1, v0

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    .line 42
    invoke-virtual {p0, v3, v4}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawSet(IB)V

    if-lez v0, :cond_0

    add-int/2addr v3, v1

    sub-int/2addr v2, v0

    shl-int/2addr p1, v2

    int-to-byte p1, p1

    .line 44
    invoke-virtual {p0, v3, p1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawSet(IB)V

    :cond_0
    return-object p0
.end method

.method public putByte(BI)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 7

    .line 50
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->offset:I

    iget v1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->position:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, p2, v1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->advance(IZ)V

    rsub-int/lit8 v2, p2, 0x8

    const/16 v3, 0xff

    ushr-int v4, v3, v2

    and-int/2addr p1, v4

    shl-int/2addr p1, v2

    and-int/2addr p1, v3

    int-to-byte p1, p1

    .line 53
    div-int/lit8 v2, v0, 0x8

    invoke-virtual {p0, v2}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawGet(I)B

    move-result v4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v5, v0, 0x8

    shl-int v6, v3, v5

    and-int/2addr v4, v6

    and-int/2addr p1, v3

    ushr-int v0, p1, v0

    or-int/2addr v0, v4

    and-int/2addr v0, v3

    int-to-byte v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawSet(IB)V

    if-ge v5, p2, :cond_0

    add-int/2addr v2, v1

    shl-int/2addr p1, v5

    and-int/2addr p1, v3

    int-to-byte p1, p1

    .line 55
    invoke-virtual {p0, v2, p1}, Lcom/gg/reader/api/utils/SimpleBitBuffer;->rawSet(IB)V

    :cond_0
    return-object p0
.end method

.method protected abstract rawGet(I)B
.end method

.method protected abstract rawLength()I
.end method

.method protected abstract rawSet(IB)V
.end method

.method public size()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->size:I

    return v0
.end method

.method public size(I)Lcom/gg/reader/api/utils/BitBuffer;
    .locals 0

    .line 115
    iput p1, p0, Lcom/gg/reader/api/utils/SimpleBitBuffer;->size:I

    return-object p0
.end method
