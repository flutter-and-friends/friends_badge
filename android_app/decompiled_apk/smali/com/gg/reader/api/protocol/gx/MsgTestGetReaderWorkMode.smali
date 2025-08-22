.class public Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestGetReaderWorkMode.java"


# instance fields
.field private baudRate232:I

.field private baudRate485:I

.field private dataBit485:I

.field private parityBit485:I

.field private stopBit485:I

.field private workMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate485:I

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataBit485:I

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->parityBit485:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->stopBit485:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate232:I

    .line 21
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x12

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;-><init>()V

    if-eqz p1, :cond_1

    .line 33
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->workMode:I

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate485:I

    .line 38
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataBit485:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->parityBit485:I

    .line 40
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->stopBit485:I

    .line 41
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate232:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 3

    .line 104
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->workMode:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 106
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate485:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 107
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataBit485:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 108
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->parityBit485:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->stopBit485:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 110
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate232:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 111
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->cData:[B

    .line 112
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 122
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->workMode:I

    .line 123
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate485:I

    .line 124
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataBit485:I

    .line 125
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->parityBit485:I

    .line 126
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->stopBit485:I

    .line 127
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate232:I

    .line 128
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getBaudRate232()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate232:I

    return v0
.end method

.method public getBaudRate485()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate485:I

    return v0
.end method

.method public getDataBit485()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataBit485:I

    return v0
.end method

.method public getParityBit485()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->parityBit485:I

    return v0
.end method

.method public getStopBit485()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->stopBit485:I

    return v0
.end method

.method public getWorkMode()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->workMode:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setBaudRate232(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate232:I

    return-void
.end method

.method public setBaudRate485(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate485:I

    return-void
.end method

.method public setDataBit485(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataBit485:I

    return-void
.end method

.method public setParityBit485(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->parityBit485:I

    return-void
.end method

.method public setStopBit485(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->stopBit485:I

    return-void
.end method

.method public setWorkMode(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->workMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgTestGetReaderWorkMode{workMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->workMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baudRate485="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate485:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataBit485="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->dataBit485:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parityBit485="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->parityBit485:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stopBit485="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->stopBit485:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baudRate232="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestGetReaderWorkMode;->baudRate232:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
