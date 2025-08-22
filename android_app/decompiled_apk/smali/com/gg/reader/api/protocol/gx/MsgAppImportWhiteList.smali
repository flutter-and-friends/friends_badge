.class public Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppImportWhiteList.java"


# instance fields
.field private packetContent:[B

.field private packetNumber:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x21

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;-><init>()V

    if-eqz p1, :cond_1

    .line 26
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 29
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetNumber:Ljava/lang/Long;

    const/16 v0, 0x10

    .line 31
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    .line 32
    new-array v1, v0, [B

    if-lez v0, :cond_1

    .line 34
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetContent:[B
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

    .line 81
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;)V

    .line 87
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 90
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetNumber:Ljava/lang/Long;

    const/16 v2, 0x8

    .line 91
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getByteUnsigned(I)B

    move-result v1

    .line 92
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setRtCode(B)V

    .line 93
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getPacketContent()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetContent:[B

    return-object v0
.end method

.method public getPacketNumber()Ljava/lang/Long;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 62
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetNumber:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 64
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetContent:[B

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetContent:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetContent:[B

    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 66
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetContent:[B

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put([BI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->cData:[B

    .line 72
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setPacketContent([B)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetContent:[B

    return-void
.end method

.method public setPacketNumber(Ljava/lang/Long;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppImportWhiteList;->packetNumber:Ljava/lang/Long;

    return-void
.end method
