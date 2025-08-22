.class public Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseLockGJb.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private area:I

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private lockParam:I

.field private safeCertificationFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->safeCertificationFlag:I

    .line 24
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x62

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 34
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;-><init>()V

    if-eqz p1, :cond_5

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

    const/16 v1, 0x20

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->antennaEnable:Ljava/lang/Long;

    const/16 v1, 0x8

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->area:I

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->lockParam:I

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 43
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->safeCertificationFlag:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 56
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 57
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->hexPassword:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v2, 0x10

    .line 47
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 48
    new-array v3, v2, [B

    if-lez v2, :cond_1

    .line 50
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 51
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 139
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;)V

    .line 159
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setRtCode(B)V

    .line 161
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getArea()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->area:I

    return v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getLockParam()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->lockParam:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 112
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 115
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->lockParam:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 117
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 119
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 120
    array-length v2, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 121
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 124
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 125
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    :cond_1
    const v1, 0x7fffffff

    .line 128
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->safeCertificationFlag:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x3

    .line 129
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 130
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->safeCertificationFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 132
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->cData:[B

    .line 133
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setArea(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->area:I

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setLockParam(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->lockParam:I

    return-void
.end method
