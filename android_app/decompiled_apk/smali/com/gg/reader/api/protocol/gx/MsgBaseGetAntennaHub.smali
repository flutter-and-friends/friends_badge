.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetAntennaHub.java"


# instance fields
.field private dicHub:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 17
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 18
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x8

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 27
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;-><init>()V

    if-eqz p1, :cond_2

    .line 29
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 32
    :goto_0
    array-length v2, p1

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_2

    const/16 v2, 0x8

    .line 33
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/16 v3, 0x10

    .line 34
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 35
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    if-nez v4, :cond_1

    .line 36
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    .line 38
    :cond_1
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 6

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v3, v2

    const/16 v5, 0x8

    .line 65
    invoke-virtual {v0, v3, v4, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 66
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v3, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->cData:[B

    .line 69
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public ackUnpack()V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->cData:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 80
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->cData:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    const/16 v4, 0x8

    .line 82
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    const/16 v5, 0x10

    .line 83
    invoke-virtual {v0, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v5

    .line 84
    iget-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    if-nez v6, :cond_0

    .line 85
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    .line 87
    :cond_0
    iget-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->setRtCode(B)V

    :cond_2
    return-void
.end method

.method public getDicHub()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setDicHub(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetAntennaHub{dicHub="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetAntennaHub;->dicHub:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
