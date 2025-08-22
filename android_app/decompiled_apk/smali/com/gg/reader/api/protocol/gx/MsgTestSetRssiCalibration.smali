.class public Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestSetRssiCalibration.java"


# instance fields
.field private rssiBaseValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 19
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x8

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;-><init>()V

    if-eqz p1, :cond_1

    .line 31
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 34
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->rssiBaseValue:I
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

    .line 59
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;)V

    .line 65
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 66
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->setRtCode(B)V

    .line 67
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getRssiBaseValue()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->rssiBaseValue:I

    return v0
.end method

.method public pack()V
    .locals 3

    .line 51
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 52
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->rssiBaseValue:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 53
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->cData:[B

    .line 54
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->dataLen:I

    return-void
.end method

.method public setRssiBaseValue(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestSetRssiCalibration;->rssiBaseValue:I

    return-void
.end method
