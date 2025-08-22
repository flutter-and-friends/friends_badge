.class public Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestPowerCalibrationGet.java"


# instance fields
.field private childFreqRange:I

.field private power:I

.field private powerParam:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 17
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x4

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;-><init>()V

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

    const/16 v0, 0x8

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->childFreqRange:I

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->power:I
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

    .line 80
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 81
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->childFreqRange:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->power:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 83
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->powerParam:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->cData:[B

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 96
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->childFreqRange:I

    .line 97
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->power:I

    .line 98
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->powerParam:I

    .line 99
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getChildFreqRange()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->childFreqRange:I

    return v0
.end method

.method public getPower()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->power:I

    return v0
.end method

.method public getPowerParam()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->powerParam:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 67
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 68
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->childFreqRange:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 69
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->power:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 70
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->cData:[B

    .line 71
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setChildFreqRange(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->childFreqRange:I

    return-void
.end method

.method public setPower(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->power:I

    return-void
.end method

.method public setPowerParam(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->powerParam:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgTestPowerCalibrationGet{childFreqRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->childFreqRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->power:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", powerParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibrationGet;->powerParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
