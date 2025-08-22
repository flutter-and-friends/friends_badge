.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetResidenceTime.java"


# instance fields
.field private antResidenceTime:Ljava/lang/Long;

.field private frqResidenceTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x20

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;-><init>()V

    if-eqz p1, :cond_3

    .line 32
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 35
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 36
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->antResidenceTime:Ljava/lang/Long;
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

    .line 84
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;)V

    .line 92
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->setRtCode(B)V

    .line 94
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntResidenceTime()Ljava/lang/Long;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getFrqResidenceTime()Ljava/lang/Long;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 8

    .line 69
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x10

    const/16 v4, 0x8

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v5, v1

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 72
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v7, v5, v1

    if-eqz v7, :cond_1

    const/4 v1, 0x2

    .line 75
    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->cData:[B

    .line 79
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->dataLen:I

    return-void
.end method

.method public setAntResidenceTime(Ljava/lang/Long;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    return-void
.end method

.method public setFrqResidenceTime(Ljava/lang/Long;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    return-void
.end method
