.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetGbBaseband.java"


# instance fields
.field private inventoryFlag:I

.field private paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

.field private paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

.field private session:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I

    .line 19
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x1d

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    :try_start_0
    array-length p1, p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->cData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 36
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 37
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-direct {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    new-array v0, v0, [B

    .line 40
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 41
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-direct {v1, v0}, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;-><init>([B)V

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    const/16 v0, 0x8

    .line 43
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    .line 44
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 6

    .line 90
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;->toBytes()[B

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;->toBytes()[B

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 99
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    const/16 v2, 0x8

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_2

    .line 100
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 102
    :cond_2
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I

    if-eq v3, v1, :cond_3

    .line 103
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 105
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->cData:[B

    .line 106
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v2, 0x1

    new-array v3, v2, [B

    .line 120
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 121
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    new-array v2, v2, [B

    .line 124
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 125
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-direct {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;-><init>([B)V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    const/16 v2, 0x8

    .line 127
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    .line 128
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I

    .line 129
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getInventoryFlag()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I

    return v0
.end method

.method public getParamGbAntiCollision()Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    return-object v0
.end method

.method public getParamGbBaseSpeed()Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    return-object v0
.end method

.method public getSession()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setInventoryFlag(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I

    return-void
.end method

.method public setParamGbAntiCollision(Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    return-void
.end method

.method public setParamGbBaseSpeed(Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    return-void
.end method

.method public setSession(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetGbBaseband{paramGbBaseSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbBaseSpeed:Lcom/gg/reader/api/protocol/gx/ParamGbBaseSpeed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paramGbAntiCollision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->paramGbAntiCollision:Lcom/gg/reader/api/protocol/gx/ParamGbAntiCollision;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->session:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inventoryFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetGbBaseband;->inventoryFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
