.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetCacheTagData.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 15
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x1b

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 35
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;)V

    .line 42
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->setRtCode(B)V

    .line 44
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetCacheTagData;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pack()V
    .locals 0

    .line 30
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method
