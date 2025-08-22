.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetTagLog.java"


# instance fields
.field private repeatedTime:I

.field private rssiTV:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 13
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->repeatedTime:I

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->rssiTV:I

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x9

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;-><init>()V

    if-eqz p1, :cond_3

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

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_3

    .line 34
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->rssiTV:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    .line 37
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->repeatedTime:I
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

    .line 83
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;)V

    .line 90
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->setRtCode(B)V

    .line 92
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getRepeatedTime()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->repeatedTime:I

    return v0
.end method

.method public getRssiTV()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->rssiTV:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 68
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->repeatedTime:I

    const v2, 0x7fffffff

    const/16 v3, 0x8

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->repeatedTime:I

    const/16 v4, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 73
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->rssiTV:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    .line 74
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 75
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->rssiTV:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->cData:[B

    .line 78
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->dataLen:I

    return-void
.end method

.method public setRepeatedTime(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->repeatedTime:I

    return-void
.end method

.method public setRssiTV(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetTagLog;->rssiTV:I

    return-void
.end method
