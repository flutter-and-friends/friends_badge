.class public Lcom/uhf/api/cls/R2000WriteFlashSendData;
.super Ljava/lang/Object;
.source "R2000WriteFlashSendData.java"


# instance fields
.field data:[B

.field writeaddress:I

.field writeflag:B

.field writelength:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p2, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->writeaddress:I

    int-to-byte p1, p1

    .line 16
    iput-byte p1, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->writeflag:B

    .line 17
    array-length p1, p3

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->writelength:I

    .line 18
    iput-object p3, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->data:[B

    return-void
.end method


# virtual methods
.method public To_CmdData()[B
    .locals 6

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-byte v1, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->writeflag:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 28
    iget v2, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->writeaddress:I

    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    const/high16 v3, 0xff0000

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v1, v5

    const v3, 0xff00

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    const/4 v5, 0x2

    aput-byte v3, v1, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/4 v2, 0x0

    .line 33
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 34
    aget-byte v3, v1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iget v1, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->writelength:I

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/uhf/api/cls/R2000WriteFlashSendData;->data:[B

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 39
    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 42
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_2

    .line 43
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method
