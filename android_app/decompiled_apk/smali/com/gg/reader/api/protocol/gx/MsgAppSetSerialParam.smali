.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetSerialParam.java"


# instance fields
.field private serialBaudrate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 17
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;-><init>()V

    if-eqz p1, :cond_1

    .line 29
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->serialBaudrate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 57
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;)V

    .line 63
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->setRtCode(B)V

    .line 65
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSerialBaudrate()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->serialBaudrate:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 49
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 50
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->serialBaudrate:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 51
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->cData:[B

    .line 52
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->dataLen:I

    return-void
.end method

.method public setSerialBaudrate(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetSerialParam;->serialBaudrate:I

    return-void
.end method
