.class public Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestVSWRcheck.java"


# instance fields
.field private preValue:I

.field private sufValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 16
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;-><init>()V

    if-eqz p1, :cond_1

    .line 28
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 31
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->preValue:I

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->sufValue:I
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

    .line 62
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 65
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->preValue:I

    .line 66
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->sufValue:I

    .line 67
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getPreValue()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->preValue:I

    return v0
.end method

.method public getSufValue()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->sufValue:I

    return v0
.end method

.method public pack()V
    .locals 0

    .line 57
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setPreValue(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->preValue:I

    return-void
.end method

.method public setSufValue(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestVSWRcheck;->sufValue:I

    return-void
.end method
