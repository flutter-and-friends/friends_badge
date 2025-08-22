.class public Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestEnvRssiAutoDetection.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private endFrequency:I

.field private mode:I

.field private startFrequency:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xa

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;-><init>()V

    if-eqz p1, :cond_1

    .line 34
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->antennaEnable:Ljava/lang/Long;

    const/16 v0, 0x10

    .line 38
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->startFrequency:I

    .line 39
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->endFrequency:I

    const/16 v0, 0x8

    .line 40
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->mode:I
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

    .line 93
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;)V

    .line 102
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->setRtCode(B)V

    .line 104
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getEndFrequency()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->endFrequency:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->mode:I

    return v0
.end method

.method public getStartFrequency()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->startFrequency:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 81
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 83
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->startFrequency:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 84
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->endFrequency:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 85
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->mode:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 87
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->cData:[B

    .line 88
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setEndFrequency(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->endFrequency:I

    return-void
.end method

.method public setMode(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->mode:I

    return-void
.end method

.method public setStartFrequency(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestEnvRssiAutoDetection;->startFrequency:I

    return-void
.end method
