.class public Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseLock6bGet.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private bMatchTid:[B

.field private hexMatchTid:Ljava/lang/String;

.field private lockIndex:I

.field private lockState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 23
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x43

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;-><init>()V

    if-eqz p1, :cond_1

    .line 35
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 38
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->antennaEnable:Ljava/lang/Long;

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 39
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    .line 40
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->hexMatchTid:Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->lockIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 0

    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 113
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;)V

    .line 119
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setRtCode(B)V

    .line 121
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setRtMsg(Ljava/lang/String;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v2, 0x8

    .line 126
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 127
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 128
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->lockState:I

    :cond_1
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getHexMatchTid()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->hexMatchTid:Ljava/lang/String;

    return-object v0
.end method

.method public getLockIndex()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->lockIndex:I

    return v0
.end method

.method public getLockState()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->lockState:I

    return v0
.end method

.method public getbMatchTid()[B
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 94
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 96
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->lockIndex:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 100
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    .line 101
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setHexMatchTid(Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->hexMatchTid:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->hexMatchTid:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    :cond_0
    return-void
.end method

.method public setLockIndex(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->lockIndex:I

    return-void
.end method

.method public setLockState(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->lockState:I

    return-void
.end method

.method public setbMatchTid([B)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->bMatchTid:[B

    return-void
.end method
