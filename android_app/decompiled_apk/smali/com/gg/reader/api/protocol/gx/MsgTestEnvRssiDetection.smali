.class public Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestEnvRssiDetection.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private currentRssi:I

.field private frequencyPoint:I

.field private rssiFrequency:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x7

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;-><init>()V

    if-eqz p1, :cond_1

    .line 32
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 35
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->antennaEnable:Ljava/lang/Long;

    const/16 v0, 0x8

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->frequencyPoint:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 4

    .line 90
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->rssiFrequency:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 92
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->currentRssi:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 93
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 101
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;)V

    .line 110
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->setRtCode(B)V

    .line 112
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->setRtMsg(Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 116
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 117
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->rssiFrequency:Ljava/lang/Long;

    .line 118
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->currentRssi:I

    :cond_1
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getCurrentRssi()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->currentRssi:I

    return v0
.end method

.method public getFrequencyPoint()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->frequencyPoint:I

    return v0
.end method

.method public getRssiFrequency()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->rssiFrequency:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 78
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 80
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->frequencyPoint:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 81
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    .line 82
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setCurrentRssi(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->currentRssi:I

    return-void
.end method

.method public setFrequencyPoint(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->frequencyPoint:I

    return-void
.end method

.method public setRssiFrequency(Ljava/lang/Long;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->rssiFrequency:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgTestEnvRssiDetection{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frequencyPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->frequencyPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssiFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->rssiFrequency:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiDetection;->currentRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
