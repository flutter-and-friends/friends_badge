.class public Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseWriteGJb.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private area:I

.field private bwriteData:[B

.field private errorIndex:I

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private hexWriteData:Ljava/lang/String;

.field private safeCertificationFlag:I

.field private start:I

.field private stayCarrierWave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->safeCertificationFlag:I

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->stayCarrierWave:I

    .line 28
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 29
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x61

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 38
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;-><init>()V

    if-eqz p1, :cond_6

    .line 40
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 43
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->antennaEnable:Ljava/lang/Long;

    const/16 v1, 0x8

    .line 44
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->area:I

    const/16 v2, 0x10

    .line 45
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->start:I

    .line 46
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 48
    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->bwriteData:[B

    .line 49
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->bwriteData:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexWriteData:Ljava/lang/String;

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    array-length v4, p1

    if-ge v3, v4, :cond_6

    .line 52
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->stayCarrierWave:I

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->safeCertificationFlag:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    new-array v3, v3, [B

    .line 65
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 66
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexPassword:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 57
    new-array v4, v3, [B

    if-lez v3, :cond_1

    .line 59
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 60
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 202
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;)V

    .line 222
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    array-length v1, v1

    if-lt v1, v2, :cond_0

    .line 223
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setRtCode(B)V

    .line 224
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setRtMsg(Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    array-length v0, v0

    if-le v0, v2, :cond_1

    .line 229
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 230
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 231
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x10

    .line 232
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->errorIndex:I

    :cond_1
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getArea()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->area:I

    return v0
.end method

.method public getBwriteData()[B
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->bwriteData:[B

    return-object v0
.end method

.method public getErrorIndex()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->errorIndex:I

    return v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHexWriteData()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexWriteData:Ljava/lang/String;

    return-object v0
.end method

.method public getSafeCertificationFlag()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->safeCertificationFlag:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->start:I

    return v0
.end method

.method public getStayCarrierWave()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->stayCarrierWave:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 167
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 169
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->area:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 170
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->start:I

    int-to-long v1, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 171
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->bwriteData:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 172
    array-length v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 173
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->bwriteData:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 177
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 178
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 179
    array-length v2, v1

    invoke-virtual {v0, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 180
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 183
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 184
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 187
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->safeCertificationFlag:I

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_3

    const/4 v1, 0x3

    .line 188
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 189
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->safeCertificationFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 191
    :cond_3
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->stayCarrierWave:I

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    .line 192
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 193
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->stayCarrierWave:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 195
    :cond_4
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    .line 196
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setArea(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->area:I

    return-void
.end method

.method public setBwriteData([B)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->bwriteData:[B

    return-void
.end method

.method public setErrorIndex(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->errorIndex:I

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setHexWriteData(Ljava/lang/String;)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexWriteData:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->hexWriteData:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->bwriteData:[B

    :cond_0
    return-void
.end method

.method public setSafeCertificationFlag(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->safeCertificationFlag:I

    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->start:I

    return-void
.end method

.method public setStayCarrierWave(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->stayCarrierWave:I

    return-void
.end method
