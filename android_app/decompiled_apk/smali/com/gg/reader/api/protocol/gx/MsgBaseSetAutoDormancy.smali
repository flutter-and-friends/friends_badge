.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetAutoDormancy.java"


# instance fields
.field private freeTime:I

.field private onOff:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const/high16 v0, -0x80000000

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->freeTime:I

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xd

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;-><init>()V

    if-eqz p1, :cond_2

    .line 30
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 33
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->onOff:I

    .line 34
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 35
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    .line 38
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->freeTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 78
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;)V

    .line 86
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 87
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->setRtCode(B)V

    .line 88
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getFreeTime()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->freeTime:I

    return v0
.end method

.method public getOnOff()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->onOff:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 66
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->onOff:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 68
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->freeTime:I

    const/high16 v2, -0x80000000

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 70
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->freeTime:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->cData:[B

    .line 73
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->dataLen:I

    return-void
.end method

.method public setFreeTime(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->freeTime:I

    return-void
.end method

.method public setOnOff(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetAutoDormancy;->onOff:I

    return-void
.end method
