.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetBaseband.java"


# instance fields
.field private baseSpeed:I

.field private inventoryFlag:I

.field private qValue:I

.field private session:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xc

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    .line 34
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    .line 35
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 6

    .line 83
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    const/16 v2, 0x8

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_0

    .line 85
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 87
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    if-eq v3, v1, :cond_1

    .line 88
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 90
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    if-eq v3, v1, :cond_2

    .line 91
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 93
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    if-eq v3, v1, :cond_3

    .line 94
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 96
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    .line 97
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 107
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    .line 108
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    .line 109
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    .line 110
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    .line 111
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getBaseSpeed()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    return v0
.end method

.method public getInventoryFlag()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    return v0
.end method

.method public getqValue()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setBaseSpeed(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    return-void
.end method

.method public setInventoryFlag(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    return-void
.end method

.method public setSession(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    return-void
.end method

.method public setqValue(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetBaseband{baseSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->baseSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", qValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->qValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->session:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->inventoryFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
