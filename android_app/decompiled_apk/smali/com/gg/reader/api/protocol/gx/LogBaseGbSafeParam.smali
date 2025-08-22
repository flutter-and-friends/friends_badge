.class public Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseGbSafeParam.java"


# instance fields
.field private antId:I

.field private encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

.field private random:I

.field private readerSerialNumber:Ljava/lang/String;

.field private safeParam:I

.field private tagIdentifier:I

.field private token2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 84
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 86
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->cData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 88
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    const/16 v4, 0x40

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x10

    .line 103
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 104
    new-array v3, v2, [B

    if-lez v2, :cond_0

    .line 106
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 107
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    invoke-direct {v2, v3}, Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x20

    .line 97
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:I

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:I

    goto :goto_0

    :cond_5
    const/16 v2, 0x30

    .line 91
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method public getAntId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    return v0
.end method

.method public getEncipheredData()Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    return-object v0
.end method

.method public getRandom()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSafeParam()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:I

    return v0
.end method

.method public getTagIdentifier()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:I

    return v0
.end method

.method public getToken2()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:I

    return v0
.end method

.method public setAntId(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    return-void
.end method

.method public setEncipheredData(Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    return-void
.end method

.method public setRandom(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSafeParam(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:I

    return-void
.end method

.method public setTagIdentifier(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:I

    return-void
.end method

.method public setToken2(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseGbSafeParam{antId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->antId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", safeParam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->safeParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tagIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->tagIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->random:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", token2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->token2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encipheredData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->encipheredData:Lcom/gg/reader/api/protocol/gx/ParamEncipheredData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readerSerialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbSafeParam;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
