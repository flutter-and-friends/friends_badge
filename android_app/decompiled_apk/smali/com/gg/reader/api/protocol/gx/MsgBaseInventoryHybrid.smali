.class public Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseInventoryHybrid.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private read6B:I

.field private readGB:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->read6B:I

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->readGB:I

    .line 21
    :try_start_0
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 22
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v2, "0010"

    iput-object v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 23
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v2, -0x60

    iput-byte v2, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;-><init>()V

    if-eqz p1, :cond_1

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;

    const/16 v0, 0x8

    .line 38
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->read6B:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->readGB:I
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

    .line 90
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;)V

    .line 96
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->setRtCode(B)V

    .line 98
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getRead6B()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->read6B:I

    return v0
.end method

.method public getReadGB()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->readGB:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 74
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->read6B:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 77
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->readGB:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 79
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    .line 80
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setRead6B(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->read6B:I

    return-void
.end method

.method public setReadGB(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryHybrid;->readGB:I

    return-void
.end method
