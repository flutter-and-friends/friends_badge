.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventory6b.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private area:I

.field private bMatchTid:[B

.field private hexMatchTid:Ljava/lang/String;

.field private inventoryMode:I

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 25
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x40

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 35
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;-><init>()V

    if-eqz p1, :cond_3

    .line 37
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    const/16 v1, 0x8

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 44
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v1, [B

    .line 54
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    .line 55
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array v2, v4, [B

    .line 49
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 50
    new-instance v3, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;
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

    .line 136
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;)V

    .line 147
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setRtCode(B)V

    .line 149
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getArea()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    return v0
.end method

.method public getHexMatchTid()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    return v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    return-object v0
.end method

.method public getbMatchTid()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 116
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 118
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 119
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 121
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 123
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->toBytes()[B

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    .line 127
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 128
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    .line 131
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setArea(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    return-void
.end method

.method public setHexMatchTid(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    .line 102
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    :cond_0
    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    return-void
.end method

.method public setbMatchTid([B)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseInventory6b{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->inventoryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->area:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readUserdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->readUserdata:Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hexMatchTid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->hexMatchTid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bMatchTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->bMatchTid:[B

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
