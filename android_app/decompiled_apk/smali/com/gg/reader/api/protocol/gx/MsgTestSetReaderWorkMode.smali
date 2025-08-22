.class public Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestSetReaderWorkMode.java"


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

    .line 23
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate485:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->dataBit485:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->parityBit485:I

    .line 19
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->stopBit485:I

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate232:I

    .line 25
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x11

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 35
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;-><init>()V

    if-eqz p1, :cond_3

    .line 37
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->workMode:I

    .line 41
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 42
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate232:I

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate485:I

    .line 46
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->dataBit485:I

    .line 47
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->parityBit485:I

    .line 48
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->stopBit485:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 141
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;)V

    .line 147
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->setRtCode(B)V

    .line 149
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getBaudRate232()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate232:I

    return v0
.end method

.method public getBaudRate485()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate485:I

    return v0
.end method

.method public getDataBit485()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->dataBit485:I

    return v0
.end method

.method public getParityBit485()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->parityBit485:I

    return v0
.end method

.method public getStopBit485()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->stopBit485:I

    return v0
.end method

.method public getWorkMode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->workMode:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 111
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 112
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->workMode:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 113
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate485:I

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_0

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 115
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate485:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 118
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->dataBit485:I

    if-eq v3, v1, :cond_1

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 122
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->parityBit485:I

    if-eq v3, v1, :cond_2

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 126
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->stopBit485:I

    if-eq v3, v1, :cond_3

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 130
    :cond_3
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate232:I

    if-eq v3, v1, :cond_4

    const/4 v1, 0x2

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 132
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate232:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 135
    :cond_4
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->cData:[B

    .line 136
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->dataLen:I

    return-void
.end method

.method public setBaudRate232(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate232:I

    return-void
.end method

.method public setBaudRate485(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->baudRate485:I

    return-void
.end method

.method public setDataBit485(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->dataBit485:I

    return-void
.end method

.method public setParityBit485(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->parityBit485:I

    return-void
.end method

.method public setStopBit485(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->stopBit485:I

    return-void
.end method

.method public setWorkMode(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetReaderWorkMode;->workMode:I

    return-void
.end method
