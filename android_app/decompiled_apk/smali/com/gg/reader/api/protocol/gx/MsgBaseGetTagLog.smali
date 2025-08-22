.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetTagLog.java"


# instance fields
.field private repeatedTime:I

.field private rssiTV:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I

    .line 17
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xa

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;-><init>()V

    if-eqz p1, :cond_1

    .line 29
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 5

    .line 64
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 65
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_0

    .line 66
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    int-to-long v3, v1

    const/16 v1, 0x10

    invoke-virtual {v0, v3, v4, v1}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 68
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I

    if-eq v2, v1, :cond_1

    .line 69
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->cData:[B

    .line 72
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x10

    .line 82
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    const/16 v2, 0x8

    .line 83
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I

    .line 84
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getRepeatedTime()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    return v0
.end method

.method public getRssiTV()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setRepeatedTime(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    return-void
.end method

.method public setRssiTV(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetTagLog{repeatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->repeatedTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssiTV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetTagLog;->rssiTV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
