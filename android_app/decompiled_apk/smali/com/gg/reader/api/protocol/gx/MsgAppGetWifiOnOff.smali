.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetWifiOnOff.java"


# instance fields
.field private wifiSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 12
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I

    .line 16
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x38

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;-><init>()V

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

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 3

    .line 54
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const v1, 0x7fffffff

    .line 55
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I

    if-eq v1, v2, :cond_0

    .line 56
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->cData:[B

    .line 59
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 69
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I

    .line 70
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getWifiSwitch()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setWifiSwitch(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetWifiOnOff{wifiSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWifiOnOff;->wifiSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
