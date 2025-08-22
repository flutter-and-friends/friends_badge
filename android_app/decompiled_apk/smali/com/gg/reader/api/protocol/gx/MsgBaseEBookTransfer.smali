.class public Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseEBookTransfer.java"


# instance fields
.field private packetContent:[B

.field private packetNumber:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x5e

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetNumber:Ljava/lang/Long;

    const/16 v0, 0x10

    .line 35
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    .line 36
    new-array v1, v0, [B

    if-lez v0, :cond_1

    .line 38
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetContent:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 77
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;)V

    .line 83
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 86
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetNumber:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 87
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v1

    .line 88
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->setRtCode(B)V

    .line 89
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getPacketContent()[B
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetContent:[B

    return-object v0
.end method

.method public getPacketNumber()Ljava/lang/Long;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 63
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 65
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetContent:[B

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 66
    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 67
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetContent:[B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put([BI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->cData:[B

    .line 72
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->dataLen:I

    return-void
.end method

.method public setPacketContent([B)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetContent:[B

    return-void
.end method

.method public setPacketNumber(Ljava/lang/Long;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseEBookTransfer;->packetNumber:Ljava/lang/Long;

    return-void
.end method
