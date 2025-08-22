.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryEpc.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private ctesius:I

.field private emSensor:I

.field private filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

.field private hexPassword:Ljava/lang/String;

.field private inventoryMode:I

.field private monzaQtPeek:I

.field private paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

.field private quanray:I

.field private readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

.field private readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

.field private readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

.field private readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

.field private rfmicron:I

.field private seed:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    .line 29
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    .line 36
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 37
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x10

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 46
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    if-eqz p1, :cond_4

    .line 48
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 51
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    const/16 v1, 0x8

    .line 52
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    .line 53
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 54
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_3

    const/16 v3, 0x13

    if-eq v2, v3, :cond_2

    const/16 v3, 0x16

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    const/4 v4, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v2, v3, [B

    .line 99
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 100
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamFastId;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    goto :goto_0

    :pswitch_1
    new-array v2, v4, [B

    .line 94
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 95
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    goto :goto_0

    .line 84
    :pswitch_4
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 80
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 81
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    new-array v2, v4, [B

    .line 75
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 76
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    goto :goto_0

    :pswitch_7
    new-array v2, v4, [B

    .line 70
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 71
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    goto :goto_0

    :pswitch_8
    new-array v2, v3, [B

    .line 65
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 66
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    goto/16 :goto_0

    :pswitch_9
    const/16 v2, 0x10

    .line 58
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 59
    new-array v2, v2, [B

    .line 60
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 61
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    goto/16 :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    goto/16 :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    goto/16 :goto_0

    .line 103
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 347
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;)V

    .line 358
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setRtCode(B)V

    .line 360
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getCtesius()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    return v0
.end method

.method public getEmSensor()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    return v0
.end method

.method public getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-object v0
.end method

.method public getHexPassword()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getInventoryMode()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    return v0
.end method

.method public getMonzaQtPeek()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    return v0
.end method

.method public getParamFastId()Lcom/gg/reader/api/protocol/gx/ParamFastId;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    return-object v0
.end method

.method public getQuanray()I
    .locals 1

    .line 241
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    return v0
.end method

.method public getReadEpc()Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    return-object v0
.end method

.method public getReadReserved()Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-object v0
.end method

.method public getReadTid()Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-object v0
.end method

.method public getReadUserdata()Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-object v0
.end method

.method public getRfmicron()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    return v0
.end method

.method public getSeed()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 251
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 253
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 255
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 257
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->toBytes()[B

    move-result-object v1

    .line 258
    array-length v2, v1

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 259
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 263
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 264
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->toBytes()[B

    move-result-object v1

    .line 265
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 269
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 270
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->toBytes()[B

    move-result-object v1

    .line 271
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 275
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 276
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;->toBytes()[B

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 281
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 282
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 283
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 286
    :cond_4
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_5

    const/4 v1, 0x6

    .line 287
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 288
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 291
    :cond_5
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    if-eq v1, v2, :cond_6

    const/4 v1, 0x7

    .line 292
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 293
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 296
    :cond_6
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    if-eq v1, v2, :cond_7

    .line 297
    invoke-virtual {v0, v3, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 298
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 301
    :cond_7
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 302
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 303
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;->toBytes()[B

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 308
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 309
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->toBytes()[B

    move-result-object v1

    .line 310
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 313
    :cond_9
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    if-eq v1, v2, :cond_a

    const/16 v1, 0x12

    .line 314
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 315
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 318
    :cond_a
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    if-eqz v1, :cond_b

    const/16 v1, 0x13

    .line 319
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 320
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 331
    :cond_b
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    if-eqz v1, :cond_c

    const/16 v1, 0x16

    .line 332
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 333
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 336
    :cond_c
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    .line 337
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setCtesius(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    return-void
.end method

.method public setEmSensor(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    return-void
.end method

.method public setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    return-void
.end method

.method public setHexPassword(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    return-void
.end method

.method public setInventoryMode(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    return-void
.end method

.method public setMonzaQtPeek(I)V
    .locals 0

    .line 181
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    return-void
.end method

.method public setParamFastId(Lcom/gg/reader/api/protocol/gx/ParamFastId;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    return-void
.end method

.method public setQuanray(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    return-void
.end method

.method public setReadEpc(Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    return-void
.end method

.method public setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    return-void
.end method

.method public setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    return-void
.end method

.method public setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    return-void
.end method

.method public setRfmicron(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    return-void
.end method

.method public setSeed(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseInventoryEpc{antennaEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->inventoryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->filter:Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readTid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readTid:Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readUserdata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readUserdata:Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readReserved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readReserved:Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hexPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->hexPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", monzaQtPeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->monzaQtPeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rfmicron="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->rfmicron:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->emSensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readEpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->readEpc:Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paramFastId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->paramFastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ctesius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->ctesius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", seed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->seed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quanray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->quanray:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
