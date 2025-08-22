.class public Lcom/gg/reader/api/utils/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# instance fields
.field private Buffer:[B

.field private DataCount:I

.field private DataEnd:I

.field private DataStart:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    .line 11
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    .line 12
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    .line 48
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/RingBuffer;->setDataCount(I)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/RingBuffer;->setDataStart(I)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/utils/RingBuffer;->setDataEnd(I)V

    .line 51
    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lcom/gg/reader/api/utils/RingBuffer;->setBuffer([B)V

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    .line 72
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    .line 73
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    return-void
.end method

.method public Clear(I)V
    .locals 4

    .line 78
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    .line 81
    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    .line 82
    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    goto :goto_1

    .line 84
    :cond_0
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    array-length v3, v2

    if-lt v1, v3, :cond_1

    add-int/2addr v0, p1

    .line 85
    array-length v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    goto :goto_0

    :cond_1
    add-int/2addr v0, p1

    .line 87
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    .line 89
    :goto_0
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    :goto_1
    return-void
.end method

.method public GetReserveCount()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public Index(I)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    if-ge p1, v0, :cond_1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int/2addr v0, p1

    .line 58
    aget-byte p1, v2, v0

    return p1

    :cond_0
    add-int/2addr v0, p1

    .line 60
    array-length p1, v2

    sub-int/2addr v0, p1

    aget-byte p1, v2, v0

    return p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "\u73af\u5f62\u7f13\u51b2\u533a\u5f02\u5e38\uff0c\u7d22\u5f15\u6ea2\u51fa"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ReadBuffer([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    if-gt p3, v0, :cond_2

    .line 130
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    add-int v1, v0, p3

    .line 131
    iget-object v2, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 132
    invoke-static {v2, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int v1, v0, p3

    .line 136
    array-length v3, v2

    sub-int/2addr v1, v3

    sub-int/2addr p3, v1

    .line 138
    invoke-static {v2, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    if-eqz v1, :cond_1

    .line 143
    iget-object p3, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    const/4 v0, 0x0

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "\u73af\u5f62\u7f13\u51b2\u533a\u5f02\u5e38\uff0c\u8bfb\u53d6\u957f\u5ea6\u5927\u4e8e\u6570\u636e\u957f\u5ea6"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public WriteBuffer([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/gg/reader/api/utils/RingBuffer;->WriteBuffer([BII)V

    return-void
.end method

.method public WriteBuffer([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    array-length v1, v0

    iget v2, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_2

    .line 98
    iget v1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    add-int v2, v1, p3

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 100
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    .line 102
    iget p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    goto :goto_0

    :cond_0
    add-int v2, v1, p3

    .line 105
    array-length v3, v0

    sub-int/2addr v2, v3

    sub-int/2addr p3, v2

    .line 107
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    add-int/2addr p2, p3

    .line 110
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    if-eqz v2, :cond_1

    .line 112
    iget-object p3, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    invoke-static {p1, p2, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :cond_1
    iget p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    .line 115
    iget p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method public getBuffer()[B
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    return-object v0
.end method

.method public getDataCount()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    return v0
.end method

.method public getDataEnd()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    return v0
.end method

.method public getDataStart()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    return v0
.end method

.method public setBuffer([B)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->Buffer:[B

    return-void
.end method

.method public setDataCount(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataCount:I

    return-void
.end method

.method public setDataEnd(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataEnd:I

    return-void
.end method

.method public setDataStart(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/gg/reader/api/utils/RingBuffer;->DataStart:I

    return-void
.end method
