.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetFrequency.java"


# instance fields
.field private automatically:Ljava/lang/Boolean;

.field private listFreqCursor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 19
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;-><init>()V

    if-eqz p1, :cond_3

    .line 31
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 34
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->automatically:Ljava/lang/Boolean;

    .line 35
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    if-nez v2, :cond_2

    .line 36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    :cond_2
    const/16 v2, 0x10

    .line 38
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_3

    .line 40
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 5

    .line 72
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->automatically:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 76
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    .line 77
    invoke-virtual {v0, v3, v4, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->cData:[B

    .line 81
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 7

    .line 88
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->cData:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 91
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->automatically:Ljava/lang/Boolean;

    .line 92
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    if-nez v3, :cond_1

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    :cond_1
    const/16 v3, 0x10

    .line 95
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 97
    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->setRtCode(B)V

    :cond_3
    return-void
.end method

.method public getAutomatically()Ljava/lang/Boolean;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->automatically:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getListFreqCursor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setAutomatically(Ljava/lang/Boolean;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->automatically:Ljava/lang/Boolean;

    return-void
.end method

.method public setListFreqCursor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetFrequency{automatically="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->automatically:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listFreqCursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->listFreqCursor:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
