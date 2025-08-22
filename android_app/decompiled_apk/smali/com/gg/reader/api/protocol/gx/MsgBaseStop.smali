.class public Lcom/gg/reader/api/protocol/gx/MsgBaseStop;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseStop.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 16
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 37
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseStop;)V

    .line 43
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->setRtCode(B)V

    .line 45
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pack()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method
