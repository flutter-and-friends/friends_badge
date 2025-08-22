.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetWiegand.java"


# instance fields
.field private negativePulseWidth:I

.field private pulseInterval:I

.field private wiegandContent:I

.field private wiegandFormat:I

.field private wiegandSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->negativePulseWidth:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->pulseInterval:I

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xd

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;-><init>()V

    if-eqz p1, :cond_3

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandSwitch:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandFormat:I

    .line 39
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandContent:I

    .line 40
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v4, [B

    .line 51
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 52
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([B)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->pulseInterval:I

    goto :goto_0

    :cond_2
    new-array v2, v4, [B

    .line 46
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 47
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([B)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->negativePulseWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 121
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;)V

    .line 129
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->setRtCode(B)V

    .line 131
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getNegativePulseWidth()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->negativePulseWidth:I

    return v0
.end method

.method public getPulseInterval()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->pulseInterval:I

    return v0
.end method

.method public getWiegandContent()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandContent:I

    return v0
.end method

.method public getWiegandFormat()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandFormat:I

    return v0
.end method

.method public getWiegandSwitch()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandSwitch:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 103
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 104
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandSwitch:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandFormat:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 106
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandContent:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 107
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->negativePulseWidth:I

    const/16 v2, 0x10

    const v4, 0x7fffffff

    if-eq v4, v1, :cond_0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->negativePulseWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 111
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->pulseInterval:I

    if-eq v4, v1, :cond_1

    const/4 v1, 0x2

    .line 112
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 113
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->pulseInterval:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 115
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->cData:[B

    .line 116
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->dataLen:I

    return-void
.end method

.method public setNegativePulseWidth(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->negativePulseWidth:I

    return-void
.end method

.method public setPulseInterval(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->pulseInterval:I

    return-void
.end method

.method public setWiegandContent(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandContent:I

    return-void
.end method

.method public setWiegandFormat(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandFormat:I

    return-void
.end method

.method public setWiegandSwitch(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetWiegand;->wiegandSwitch:I

    return-void
.end method
