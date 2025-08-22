.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetSerialParam.java"


# instance fields
.field private serialBaudrate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 15
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;-><init>()V

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

    const/16 v0, 0x8

    .line 29
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->serialBaudrate:I
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

    .line 52
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->serialBaudrate:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 54
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->cData:[B

    .line 55
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 65
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->serialBaudrate:I

    .line 66
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getSerialBaudrate()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->serialBaudrate:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setSerialBaudrate(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->serialBaudrate:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetSerialParam{serialBaudrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetSerialParam;->serialBaudrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
