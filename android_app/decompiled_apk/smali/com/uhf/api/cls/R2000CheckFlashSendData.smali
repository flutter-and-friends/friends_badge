.class public Lcom/uhf/api/cls/R2000CheckFlashSendData;
.super Ljava/lang/Object;
.source "R2000CheckFlashSendData.java"


# instance fields
.field crc:[B

.field data1:I

.field data2:I

.field data3:I

.field data4:I

.field paddress:I

.field plength:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 6

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    array-length v0, p2

    const/4 v1, 0x4

    div-int/2addr v0, v1

    iput v0, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->plength:I

    .line 17
    iput p1, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->paddress:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 19
    :goto_0
    array-length v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v0, v2, :cond_4

    .line 21
    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    .line 22
    iget v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data1:I

    aget-byte v3, p2, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data1:I

    goto :goto_1

    :cond_0
    if-ne v2, v5, :cond_1

    .line 24
    iget v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data2:I

    aget-byte v3, p2, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data2:I

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    .line 26
    iget v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data3:I

    aget-byte v3, p2, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data3:I

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    .line 28
    iget v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data4:I

    aget-byte v3, p2, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data4:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-array p2, v1, [B

    .line 30
    iput-object p2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->crc:[B

    .line 31
    iget-object p2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->crc:[B

    iget v0, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data1:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    .line 32
    iget p1, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data2:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, v5

    .line 33
    iget p1, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data3:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, v4

    .line 34
    iget p1, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->data4:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p2, v3

    return-void
.end method


# virtual methods
.method public To_CmdData()[B
    .locals 11

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 43
    iget v3, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->paddress:I

    const/high16 v4, -0x1000000

    and-int v5, v3, v4

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v2, v6

    const/high16 v5, 0xff0000

    and-int v7, v3, v5

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v2, v8

    const v7, 0xff00

    and-int v9, v3, v7

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    const/4 v10, 0x2

    aput-byte v9, v2, v10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v9, 0x3

    aput-byte v3, v2, v9

    new-array v1, v1, [B

    .line 49
    iget v3, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->plength:I

    and-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v6

    and-int v4, v3, v5

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    and-int v4, v3, v7

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    const/4 v3, 0x0

    .line 53
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 54
    aget-byte v4, v2, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 56
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 57
    aget-byte v3, v1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 59
    :goto_2
    iget-object v2, p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;->crc:[B

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 60
    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 61
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 62
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_3

    .line 63
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    return-object v1
.end method
