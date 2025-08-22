.class public Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppTagDataReply.java"


# instance fields
.field private serialNumber:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J

    .line 17
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x1d

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->dataLen:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;-><init>()V

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

    iput-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J
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

    .line 58
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 59
    iget-wide v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 60
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->cData:[B

    .line 61
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 70
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J

    .line 71
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->setRtCode(B)V

    return-void
.end method

.method public getSerialNumber()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J

    return-wide v0
.end method

.method public pack()V
    .locals 4

    .line 47
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 48
    iget-wide v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 49
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->cData:[B

    .line 50
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setSerialNumber(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppTagDataReply{serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppTagDataReply;->serialNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
