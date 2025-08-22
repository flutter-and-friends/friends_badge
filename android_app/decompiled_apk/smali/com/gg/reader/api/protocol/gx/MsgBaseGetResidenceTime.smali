.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetResidenceTime.java"


# instance fields
.field private antResidenceTime:Ljava/lang/Long;

.field private frqResidenceTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x1f

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;-><init>()V

    if-eqz p1, :cond_3

    .line 30
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 34
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->antResidenceTime:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 5

    .line 72
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v1, 0x10

    invoke-virtual {v0, v3, v4, v1}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v3, 0x2

    .line 75
    invoke-virtual {v0, v3, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 77
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->cData:[B

    .line 78
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->cData:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 88
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    const/16 v3, 0x8

    div-int/2addr v2, v3

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->cData:[B

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 89
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->setRtCode(B)V

    :cond_3
    return-void
.end method

.method public getAntResidenceTime()Ljava/lang/Long;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getFrqResidenceTime()Ljava/lang/Long;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setAntResidenceTime(Ljava/lang/Long;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    return-void
.end method

.method public setFrqResidenceTime(Ljava/lang/Long;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetResidenceTime{antResidenceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->antResidenceTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", frqResidenceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetResidenceTime;->frqResidenceTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
