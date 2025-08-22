.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetFreqRange.java"


# instance fields
.field private freqRangeIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->freqRangeIndex:I

    .line 15
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;-><init>()V

    if-eqz p1, :cond_1

    .line 27
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 30
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->freqRangeIndex:I
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

    .line 53
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 54
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->freqRangeIndex:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 55
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->cData:[B

    .line 56
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->cData:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->cData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->freqRangeIndex:I

    .line 65
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getFreqRangeIndex()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->freqRangeIndex:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setFreqRangeIndex(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->freqRangeIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetFreqRange{freqRangeIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->freqRangeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
