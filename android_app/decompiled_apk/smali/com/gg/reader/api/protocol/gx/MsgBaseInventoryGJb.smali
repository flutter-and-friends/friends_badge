.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryGJb.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private inventoryMode:I

.field private readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

.field private safeCertificationFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    .line 26
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x60

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 36
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;-><init>()V

    if-eqz p1, :cond_7

    .line 38
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    const/16 v1, 0x8

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_7

    .line 44
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 67
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 68
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-array v2, v3, [B

    .line 62
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 63
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    goto :goto_0

    :cond_5
    new-array v2, v3, [B

    .line 57
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 58
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    goto :goto_0

    :cond_6
    const/16 v2, 0x10

    .line 48
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 49
    new-array v3, v2, [B

    if-lez v2, :cond_1

    .line 51
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 52
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 173
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;)V

    .line 185
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setRtCode(B)V

    .line 187
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    return v0
.end method

.method public getReadTid()Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-object v0
.end method

.method public getSafeCertificationFlag()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 137
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 139
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 141
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 143
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 144
    array-length v2, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 145
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 148
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 149
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->toBytes()[B

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 153
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 154
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->toBytes()[B

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x5

    .line 158
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 159
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    :cond_3
    const v1, 0x7fffffff

    .line 162
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    if-eq v1, v2, :cond_4

    const/4 v1, 0x6

    .line 163
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 164
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 166
    :cond_4
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    .line 167
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    return-void
.end method

.method public setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-void
.end method

.method public setSafeCertificationFlag(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseInventoryGb{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->inventoryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readUserdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hexPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->hexPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", safeCertificationFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->safeCertificationFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
