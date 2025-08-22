.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetWhiteList.java"


# instance fields
.field private packetContent:[B

.field private packetNumber:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 13
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 14
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x20

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;-><init>()V

    if-eqz p1, :cond_1

    .line 25
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 28
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetNumber:Ljava/lang/Long;

    const/16 v0, 0x10

    .line 30
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    .line 31
    new-array v1, v0, [B

    if-lez v0, :cond_1

    .line 33
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 4

    .line 74
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B

    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 78
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put([BI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 83
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->cData:[B

    .line 84
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 96
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetNumber:Ljava/lang/Long;

    const/16 v2, 0x10

    .line 98
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 99
    new-array v3, v2, [B

    if-lez v2, :cond_0

    .line 101
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B

    .line 103
    :cond_0
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->setRtCode(B)V

    :cond_1
    return-void
.end method

.method public getPacketContent()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B

    return-object v0
.end method

.method public getPacketNumber()Ljava/lang/Long;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 59
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 62
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->cData:[B

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setPacketContent([B)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetContent:[B

    return-void
.end method

.method public setPacketNumber(Ljava/lang/Long;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteList;->packetNumber:Ljava/lang/Long;

    return-void
.end method
