.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetUdpParam.java"


# instance fields
.field private ip:Ljava/lang/String;

.field private onOrOff:I

.field private period:I

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const-string v0, "0.0.0.0"

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->ip:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->port:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->period:I

    .line 21
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x27

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    const-string v0, "."

    .line 31
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;-><init>()V

    if-eqz p1, :cond_4

    .line 33
    :try_start_0
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 36
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->onOrOff:I

    .line 37
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 38
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    const/16 v5, 0x10

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->period:I

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->port:I

    goto :goto_0

    .line 41
    :cond_3
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

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->ip:Ljava/lang/String;
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

    .line 118
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;)V

    .line 124
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->setRtCode(B)V

    .line 126
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getOnOrOff()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->onOrOff:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->period:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->port:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 90
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 91
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->onOrOff:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 92
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->onOrOff:I

    const/4 v3, 0x1

    if-ne v3, v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->ip:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0, v3, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 95
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->ip:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->port:I

    const/16 v3, 0x10

    const v4, 0x7fffffff

    if-eq v4, v1, :cond_1

    const/4 v1, 0x2

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->port:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 106
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->period:I

    if-eq v4, v1, :cond_2

    const/4 v1, 0x3

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 108
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->period:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->cData:[B

    .line 113
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->dataLen:I

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->ip:Ljava/lang/String;

    return-void
.end method

.method public setOnOrOff(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->onOrOff:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->period:I

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetUdpParam;->port:I

    return-void
.end method
