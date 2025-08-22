.class public Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestDCAutobias.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 16
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 17
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 37
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;)V

    .line 45
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->setRtCode(B)V

    .line 47
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestDCAutobias;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pack()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method
