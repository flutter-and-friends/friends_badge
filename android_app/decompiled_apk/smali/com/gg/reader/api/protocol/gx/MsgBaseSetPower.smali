.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSetPower.java"


# instance fields
.field private dicPower:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private powerDownSave:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 15
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->powerDownSave:I

    .line 19
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 29
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;-><init>()V

    if-eqz p1, :cond_3

    .line 31
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 34
    :goto_0
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_3

    const/16 v2, 0x8

    .line 35
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1

    .line 37
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->powerDownSave:I

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 41
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    if-nez v4, :cond_2

    .line 42
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    .line 44
    :cond_2
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 88
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;)V

    .line 96
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->setRtCode(B)V

    .line 98
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDicPower()Ljava/util/Hashtable;
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

    .line 53
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getPowerDownSave()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->powerDownSave:I

    return v0
.end method

.method public pack()V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 71
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    .line 73
    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    .line 77
    iget v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->powerDownSave:I

    if-eq v1, v2, :cond_1

    const/16 v1, 0xff

    .line 78
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 79
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->powerDownSave:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->cData:[B

    .line 82
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dataLen:I

    :cond_2
    return-void
.end method

.method public setDicPower(Ljava/util/Hashtable;)V
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

    .line 57
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->dicPower:Ljava/util/Hashtable;

    return-void
.end method

.method public setPowerDownSave(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->powerDownSave:I

    return-void
.end method
