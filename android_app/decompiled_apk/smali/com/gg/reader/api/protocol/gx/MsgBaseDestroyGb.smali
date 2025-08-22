.class public Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseDestroyGb.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private safeCertificationFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->safeCertificationFlag:I

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x53

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;-><init>()V

    if-eqz p1, :cond_5

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->antennaEnable:Ljava/lang/Long;

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    const/16 v3, 0x8

    div-int/2addr v2, v3

    array-length v4, p1

    if-ge v2, v4, :cond_5

    .line 39
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->safeCertificationFlag:I

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->int2Hex(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->hexPassword:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v2, 0x10

    .line 43
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 44
    new-array v3, v2, [B

    if-lez v2, :cond_1

    .line 46
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 47
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
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

    .line 122
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;)V

    .line 139
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->setRtCode(B)V

    .line 141
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSafeCertificationFlag()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->safeCertificationFlag:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 98
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 101
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 103
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 104
    array-length v3, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    :cond_1
    const v1, 0x7fffffff

    .line 112
    iget v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->safeCertificationFlag:I

    if-eq v1, v3, :cond_2

    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->safeCertificationFlag:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 116
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->cData:[B

    .line 117
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setSafeCertificationFlag(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyGb;->safeCertificationFlag:I

    return-void
.end method
