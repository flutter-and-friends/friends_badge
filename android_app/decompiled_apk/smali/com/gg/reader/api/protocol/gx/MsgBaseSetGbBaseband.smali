.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetGbBaseband.java"


# instance fields
.field private inventoryFlag:I

.field private paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

.field private paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

.field private session:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->session:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->inventoryFlag:I

    .line 22
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x1e

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    .line 31
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;-><init>()V

    if-eqz p1, :cond_5

    .line 33
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 36
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 37
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->inventoryFlag:I

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->session:I

    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    .line 48
    new-array v1, v1, [B

    .line 49
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 50
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-direct {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    .line 42
    new-array v1, v1, [B

    .line 43
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 44
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-direct {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 126
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;)V

    .line 136
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->setRtCode(B)V

    .line 138
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getInventoryFlag()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->inventoryFlag:I

    return v0
.end method

.method public getParamGbAntiCollision()Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    return-object v0
.end method

.method public getParamGbBaseSpeed()Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    return-object v0
.end method

.method public getSession()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->session:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 100
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 104
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->toBytes()[B

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->toBytes()[B

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->session:I

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->session:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 116
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->inventoryFlag:I

    if-eq v3, v1, :cond_3

    const/4 v1, 0x4

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 118
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->inventoryFlag:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 120
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->cData:[B

    .line 121
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->dataLen:I

    return-void
.end method

.method public setInventoryFlag(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->inventoryFlag:I

    return-void
.end method

.method public setParamGbAntiCollision(Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    return-void
.end method

.method public setParamGbBaseSpeed(Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    return-void
.end method

.method public setSession(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetGbBaseband;->session:I

    return-void
.end method
