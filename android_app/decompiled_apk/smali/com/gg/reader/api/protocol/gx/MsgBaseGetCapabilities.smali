.class public Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseGetCapabilities.java"


# instance fields
.field private antennaCount:I

.field private frequencyArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private maxPower:I

.field private minPower:I

.field private protocolArray:Ljava/util/List;
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

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 23
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 24
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 27
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    .line 33
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;-><init>()V

    if-eqz p1, :cond_4

    .line 35
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 38
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->minPower:I

    .line 39
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->maxPower:I

    .line 40
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->antennaCount:I

    const/16 v2, 0x10

    .line 41
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 42
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    if-nez v4, :cond_1

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 46
    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 49
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    if-nez v3, :cond_3

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    :cond_3
    :goto_1
    if-ge v0, v2, :cond_4

    .line 53
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

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
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 6

    .line 109
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 110
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->minPower:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 111
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->maxPower:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->antennaCount:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 113
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 115
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    .line 116
    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 121
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 122
    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_1

    .line 125
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->cData:[B

    .line 126
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 8

    .line 133
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->cData:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->cData:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_4

    .line 134
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 136
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->minPower:I

    .line 137
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->maxPower:I

    .line 138
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->antennaCount:I

    const/16 v3, 0x10

    .line 139
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    .line 140
    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    if-nez v5, :cond_0

    .line 141
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 144
    iget-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 147
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    if-nez v4, :cond_2

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    .line 151
    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_3
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->setRtCode(B)V

    :cond_4
    return-void
.end method

.method public getAntennaCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->antennaCount:I

    return v0
.end method

.method public getFrequencyArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    return-object v0
.end method

.method public getMaxPower()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->maxPower:I

    return v0
.end method

.method public getMinPower()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->minPower:I

    return v0
.end method

.method public getProtocolArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setAntennaCount(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->antennaCount:I

    return-void
.end method

.method public setFrequencyArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    return-void
.end method

.method public setMaxPower(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->maxPower:I

    return-void
.end method

.method public setMinPower(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->minPower:I

    return-void
.end method

.method public setProtocolArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgBaseGetCapabilities{minPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->minPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->maxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", antennaCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->antennaCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frequencyArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->frequencyArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protocolArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetCapabilities;->protocolArray:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
