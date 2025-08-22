.class public Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestDCbias.java"


# instance fields
.field private optionType:I

.field private param:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x8

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->param:I

    .line 34
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->optionType:I
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

    .line 68
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;)V

    .line 77
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->setRtCode(B)V

    .line 79
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getOptionType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->optionType:I

    return v0
.end method

.method public getParam()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->param:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 59
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 60
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->param:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 61
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->optionType:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 62
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->cData:[B

    .line 63
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->dataLen:I

    return-void
.end method

.method public setOptionType(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->optionType:I

    return-void
.end method

.method public setParam(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestDCbias;->param:I

    return-void
.end method
