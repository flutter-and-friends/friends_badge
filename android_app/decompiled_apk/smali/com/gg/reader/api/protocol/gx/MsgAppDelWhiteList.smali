.class public Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppDelWhiteList.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 10
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 11
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x22

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 30
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;)V

    .line 36
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 37
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->setRtCode(B)V

    .line 38
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppDelWhiteList;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pack()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method
