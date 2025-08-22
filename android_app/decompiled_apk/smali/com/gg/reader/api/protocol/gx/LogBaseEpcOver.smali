.class public Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseEpcOver.java"


# instance fields
.field private readerSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 22
    new-instance v0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver$1;-><init>(Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;)V

    .line 29
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 30
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->setRtCode(B)V

    .line 31
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseEpcOver{readerSerialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcOver;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
