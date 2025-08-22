.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetBaseband.java"


# instance fields
.field private baseSpeed:I

.field private inventoryFlag:I

.field private qValue:I

.field private session:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xb

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    if-eqz p1, :cond_5

    .line 32
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 35
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 36
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    goto :goto_0

    .line 39
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 115
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;)V

    .line 126
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setRtCode(B)V

    .line 128
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBaseSpeed()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    return v0
.end method

.method public getInventoryFlag()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    return v0
.end method

.method public getqValue()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 92
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 93
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    const v2, 0x7fffffff

    const/16 v3, 0x8

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 94
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 95
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 97
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    .line 98
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 101
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    if-eq v2, v1, :cond_2

    const/4 v1, 0x3

    .line 102
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    if-eq v2, v1, :cond_3

    const/4 v1, 0x4

    .line 106
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 107
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    .line 110
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->dataLen:I

    return-void
.end method

.method public setBaseSpeed(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->baseSpeed:I

    return-void
.end method

.method public setInventoryFlag(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->inventoryFlag:I

    return-void
.end method

.method public setSession(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->session:I

    return-void
.end method

.method public setqValue(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->qValue:I

    return-void
.end method
