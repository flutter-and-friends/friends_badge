.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetWiegand.java"


# instance fields
.field private negativePulseWidth:I

.field private pulseInterval:I

.field private wiegandContent:I

.field private wiegandFormat:I

.field private wiegandSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    .line 20
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xe

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 30
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;-><init>()V

    if-eqz p1, :cond_3

    .line 32
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 35
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandSwitch:I

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandFormat:I

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandContent:I

    .line 38
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v4, [B

    .line 49
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 50
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([B)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    goto :goto_0

    :cond_2
    new-array v2, v4, [B

    .line 44
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 45
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([B)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I
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

    .line 107
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandSwitch:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandFormat:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 110
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandContent:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_0

    const-wide/16 v3, 0x1

    .line 113
    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(J)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(J)Lcom/gg/reader/api/utils/BitBuffer;

    .line 117
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    if-eq v2, v1, :cond_1

    const-wide/16 v1, 0x2

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(J)Lcom/gg/reader/api/utils/BitBuffer;

    .line 119
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(J)Lcom/gg/reader/api/utils/BitBuffer;

    .line 122
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->cData:[B

    .line 123
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 6

    .line 130
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->cData:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 133
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandSwitch:I

    .line 134
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandFormat:I

    .line 135
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandContent:I

    .line 137
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 138
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-array v3, v5, [B

    .line 148
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 149
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([B)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    goto :goto_0

    :cond_1
    new-array v3, v5, [B

    .line 143
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 144
    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([B)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->setRtCode(B)V

    :cond_3
    return-void
.end method

.method public getNegativePulseWidth()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I

    return v0
.end method

.method public getPulseInterval()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    return v0
.end method

.method public getWiegandContent()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandContent:I

    return v0
.end method

.method public getWiegandFormat()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandFormat:I

    return v0
.end method

.method public getWiegandSwitch()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandSwitch:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setNegativePulseWidth(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I

    return-void
.end method

.method public setPulseInterval(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    return-void
.end method

.method public setWiegandContent(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandContent:I

    return-void
.end method

.method public setWiegandFormat(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandFormat:I

    return-void
.end method

.method public setWiegandSwitch(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandSwitch:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetWiegand{wiegandSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wiegandFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wiegandContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->wiegandContent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", negativePulseWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->negativePulseWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pulseInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWiegand;->pulseInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
