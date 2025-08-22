.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetTcpMode.java"


# instance fields
.field private clientIp:Ljava/lang/String;

.field private clientPort:I

.field private serverPort:I

.field private tcpMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->serverPort:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientPort:I

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x7

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    const-string v0, "."

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;-><init>()V

    if-eqz p1, :cond_4

    .line 32
    :try_start_0
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 35
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->tcpMode:I

    .line 36
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 37
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x10

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientPort:I

    goto :goto_0

    .line 43
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientIp:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->serverPort:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 113
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;)V

    .line 119
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->setRtCode(B)V

    .line 121
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getClientPort()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientPort:I

    return v0
.end method

.method public getServerPort()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->serverPort:I

    return v0
.end method

.method public getTcpMode()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->tcpMode:I

    return v0
.end method

.method public pack()V
    .locals 8

    .line 90
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->tcpMode:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 92
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->serverPort:I

    const/16 v2, 0x10

    const v4, 0x7fffffff

    if-eq v4, v1, :cond_0

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 94
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->serverPort:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientIp:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v5, "\\."

    .line 97
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    .line 98
    invoke-virtual {v0, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    array-length v5, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v1, v6

    .line 100
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientPort:I

    if-eq v4, v1, :cond_2

    const/4 v1, 0x3

    .line 104
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientPort:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 107
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->cData:[B

    .line 108
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->dataLen:I

    return-void
.end method

.method public setClientIp(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientIp:Ljava/lang/String;

    return-void
.end method

.method public setClientPort(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->clientPort:I

    return-void
.end method

.method public setServerPort(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->serverPort:I

    return-void
.end method

.method public setTcpMode(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetTcpMode;->tcpMode:I

    return-void
.end method
