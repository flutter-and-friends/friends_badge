.class public Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestSerialNoSet.java"


# instance fields
.field private readerSerialNumber:Ljava/lang/String;

.field private tuYaAuthKey:Ljava/lang/String;

.field private tuYaPid:Ljava/lang/String;

.field private tuYaShortUrl:Ljava/lang/String;

.field private tuYaUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 19
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x10

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;-><init>()V

    if-eqz p1, :cond_1

    .line 31
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 34
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 36
    new-instance v1, Ljava/lang/String;

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    const-string v0, "ASCII"

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->readerSerialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 122
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;)V

    .line 128
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->setRtCode(B)V

    .line 130
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaAuthKey()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaPid()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaPid:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaShortUrl()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaShortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaUuid()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaUuid:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 86
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->readerSerialNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 89
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 91
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaPid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v3, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 93
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaPid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 94
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaPid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 98
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 100
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaAuthKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 104
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaAuthKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 106
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaAuthKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaShortUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    .line 110
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 111
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaShortUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaShortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 115
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->cData:[B

    .line 116
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->dataLen:I

    :cond_4
    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setTuYaAuthKey(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaAuthKey:Ljava/lang/String;

    return-void
.end method

.method public setTuYaPid(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaPid:Ljava/lang/String;

    return-void
.end method

.method public setTuYaShortUrl(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaShortUrl:Ljava/lang/String;

    return-void
.end method

.method public setTuYaUuid(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSerialNoSet;->tuYaUuid:Ljava/lang/String;

    return-void
.end method
