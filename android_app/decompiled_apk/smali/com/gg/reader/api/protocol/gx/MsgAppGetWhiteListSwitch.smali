.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetWhiteListSwitch.java"


# instance fields
.field private filterArea:I

.field private onOrOff:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 12
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 13
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x26

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;-><init>()V

    if-eqz p1, :cond_1

    .line 24
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/16 v0, 0x8

    .line 26
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->onOrOff:I

    .line 27
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->filterArea:I
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

    .line 58
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 59
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->onOrOff:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 60
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->filterArea:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 62
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->cData:[B

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 73
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->onOrOff:I

    .line 74
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->filterArea:I

    .line 76
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getFilterArea()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->filterArea:I

    return v0
.end method

.method public getOnOrOff()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->onOrOff:I

    return v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setFilterArea(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->filterArea:I

    return-void
.end method

.method public setOnOrOff(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetWhiteListSwitch;->onOrOff:I

    return-void
.end method
