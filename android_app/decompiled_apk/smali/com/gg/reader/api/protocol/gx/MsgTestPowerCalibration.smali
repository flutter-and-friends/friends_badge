.class public Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestPowerCalibration.java"


# instance fields
.field private childFreqRange:I

.field private optionType:I

.field private power:I

.field private powerParam:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;-><init>()V

    if-eqz p1, :cond_1

    .line 32
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 35
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->childFreqRange:I

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->power:I

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->powerParam:I

    .line 38
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->optionType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 90
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;)V

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->setRtCode(B)V

    .line 101
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getChildFreqRange()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->childFreqRange:I

    return v0
.end method

.method public getOptionType()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->optionType:I

    return v0
.end method

.method public getPower()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->power:I

    return v0
.end method

.method public getPowerParam()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->powerParam:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 79
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->childFreqRange:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 81
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->power:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->powerParam:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 83
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->optionType:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->cData:[B

    .line 85
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->dataLen:I

    return-void
.end method

.method public setChildFreqRange(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->childFreqRange:I

    return-void
.end method

.method public setOptionType(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->optionType:I

    return-void
.end method

.method public setPower(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->power:I

    return-void
.end method

.method public setPowerParam(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestPowerCalibration;->powerParam:I

    return-void
.end method
