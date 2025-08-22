.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetHttpParam.java"


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

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->period:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->format:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->timeout:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->openCache:I

    .line 24
    :try_start_0
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 25
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "0001"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v2, 0x29

    iput-byte v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 28
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6

    .line 34
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;-><init>()V

    if-eqz p1, :cond_3

    .line 36
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->onOrOff:I

    const/16 v2, 0x10

    .line 40
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->period:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->format:I

    .line 42
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->timeout:I

    .line 43
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->openCache:I

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 45
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 50
    new-instance v4, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    const-string v5, "ASCII"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->reportAddress:Ljava/lang/String;
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

    .line 127
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;)V

    .line 133
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->setRtCode(B)V

    .line 135
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFormat()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->format:I

    return v0
.end method

.method public getOnOrOff()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->onOrOff:I

    return v0
.end method

.method public getOpenCache()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->openCache:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->period:I

    return v0
.end method

.method public getReportAddress()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->reportAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->timeout:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 110
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 111
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->onOrOff:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->period:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 113
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->format:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->timeout:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 115
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->openCache:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 116
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->reportAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 118
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->reportAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 119
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->reportAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 121
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->cData:[B

    .line 122
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->dataLen:I

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->format:I

    return-void
.end method

.method public setOnOrOff(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->onOrOff:I

    return-void
.end method

.method public setOpenCache(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->openCache:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->period:I

    return-void
.end method

.method public setReportAddress(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->reportAddress:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetHttpParam;->timeout:I

    return-void
.end method
