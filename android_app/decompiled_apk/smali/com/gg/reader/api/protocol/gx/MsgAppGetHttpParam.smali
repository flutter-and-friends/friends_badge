.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetHttpParam.java"


# instance fields
.field private format:I

.field private onOrOff:I

.field private openCache:I

.field private period:I

.field private reportAddress:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->period:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->format:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->timeout:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->openCache:I

    .line 23
    :try_start_0
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 24
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "0001"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v2, 0x2a

    iput-byte v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 27
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 33
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;-><init>()V

    if-eqz p1, :cond_3

    .line 35
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 38
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->onOrOff:I

    const/16 v2, 0x10

    .line 39
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->period:I

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->format:I

    .line 41
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->timeout:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->openCache:I

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 44
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 49
    new-instance v4, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    const-string v5, "ASCII"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 4

    .line 117
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 118
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->onOrOff:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 119
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->period:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 120
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->format:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 121
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 122
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->openCache:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 123
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 125
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->cData:[B

    .line 128
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 7

    .line 135
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->cData:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 138
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->onOrOff:I

    const/16 v3, 0x10

    .line 139
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->period:I

    .line 140
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->format:I

    .line 141
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->timeout:I

    .line 142
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->openCache:I

    .line 143
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    div-int/2addr v4, v2

    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->cData:[B

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 144
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 150
    :try_start_0
    new-instance v5, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    const-string v6, "ASCII"

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->setRtCode(B)V

    :cond_3
    return-void
.end method

.method public getFormat()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->format:I

    return v0
.end method

.method public getOnOrOff()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->onOrOff:I

    return v0
.end method

.method public getOpenCache()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->openCache:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->period:I

    return v0
.end method

.method public getReportAddress()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->timeout:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->format:I

    return-void
.end method

.method public setOnOrOff(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->onOrOff:I

    return-void
.end method

.method public setOpenCache(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->openCache:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->period:I

    return-void
.end method

.method public setReportAddress(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetHttpParam{onOrOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->onOrOff:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->period:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", openCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->openCache:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reportAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetHttpParam;->reportAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
