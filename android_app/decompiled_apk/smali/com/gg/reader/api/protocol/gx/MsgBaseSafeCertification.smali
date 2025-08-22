.class public Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseSafeCertification.java"


# instance fields
.field private key:Ljava/lang/String;

.field private paramEncipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

.field private token1:I

.field private token2result:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 17
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token1:I

    .line 18
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token2result:I

    .line 24
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, -0x10

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 34
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;-><init>()V

    if-eqz p1, :cond_6

    .line 36
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 39
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-ge v1, v3, :cond_6

    .line 40
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    .line 61
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->key:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-array v1, v3, [B

    .line 56
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 57
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    invoke-direct {v2, v1}, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->paramEncipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    goto :goto_0

    .line 52
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token2result:I

    goto :goto_0

    :cond_5
    const/16 v1, 0x40

    .line 44
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    .line 45
    new-array v2, v1, [B

    if-lez v1, :cond_1

    .line 47
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v1

    .line 48
    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2Int([B)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token1:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 139
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;)V

    .line 145
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->setRtCode(B)V

    .line 147
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getParamEncipheredData()Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->paramEncipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    return-object v0
.end method

.method public getToken1()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token1:I

    return v0
.end method

.method public getToken2result()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token2result:I

    return v0
.end method

.method public pack()V
    .locals 5

    .line 106
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token1:I

    const v2, 0x7fffffff

    const/16 v3, 0x8

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 109
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token1:I

    const/16 v4, 0x40

    invoke-virtual {v0, v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 112
    :cond_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token2result:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    .line 113
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 114
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token2result:I

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->paramEncipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 118
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 119
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->paramEncipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;->toBytes()[B

    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->key:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    .line 124
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 125
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 126
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 129
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->cData:[B

    .line 130
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->key:Ljava/lang/String;

    return-void
.end method

.method public setParamEncipheredData(Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->paramEncipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    return-void
.end method

.method public setToken1(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token1:I

    return-void
.end method

.method public setToken2result(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseSafeCertification;->token2result:I

    return-void
.end method
