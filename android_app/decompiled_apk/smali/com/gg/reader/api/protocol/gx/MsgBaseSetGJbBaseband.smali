.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetGJbBaseband.java"


# instance fields
.field private inventoryFlag:I

.field private paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

.field private paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->inventoryFlag:I

    .line 15
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x1c

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;-><init>()V

    if-eqz p1, :cond_4

    .line 26
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 29
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 30
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->inventoryFlag:I

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    .line 41
    new-array v1, v1, [B

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 43
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-direct {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    .line 35
    new-array v1, v1, [B

    .line 36
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 37
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-direct {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 104
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;)V

    .line 114
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->setRtCode(B)V

    .line 116
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getInventoryFlag()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->inventoryFlag:I

    return v0
.end method

.method public getParamGbAntiCollision()Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    return-object v0
.end method

.method public getParamGbBaseSpeed()Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 82
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 86
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->toBytes()[B

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 91
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->toBytes()[B

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    :cond_1
    const v1, 0x7fffffff

    .line 94
    iget v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->inventoryFlag:I

    if-eq v1, v3, :cond_2

    const/4 v1, 0x3

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 96
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->inventoryFlag:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->cData:[B

    .line 99
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->dataLen:I

    return-void
.end method

.method public setInventoryFlag(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->inventoryFlag:I

    return-void
.end method

.method public setParamGbAntiCollision(Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    return-void
.end method

.method public setParamGbBaseSpeed(Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGJbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    return-void
.end method
