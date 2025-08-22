.class public Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBase6bInfo.java"


# instance fields
.field private antId:I

.field private bTid:[B

.field private bUser:[B

.field private readerSerialNumber:Ljava/lang/String;

.field private result:I

.field private rssi:I

.field private tid:Ljava/lang/String;

.field private userdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->cData:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 95
    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bTid:[B

    .line 96
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bTid:[B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bTid:[B

    .line 97
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bTid:[B

    array-length v3, v2

    if-lez v3, :cond_0

    .line 98
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->tid:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->antId:I

    .line 101
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->cData:[B

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 102
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x10

    .line 111
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 112
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bUser:[B

    if-lez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bUser:[B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bUser:[B

    .line 115
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bUser:[B

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->userdata:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->result:I

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->rssi:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getAntId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->antId:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->result:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->rssi:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->userdata:Ljava/lang/String;

    return-object v0
.end method

.method public getbTid()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bTid:[B

    return-object v0
.end method

.method public getbUser()[B
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bUser:[B

    return-object v0
.end method

.method public pack()V
    .locals 0

    .line 87
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setAntId(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->antId:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->result:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->rssi:I

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->tid:Ljava/lang/String;

    return-void
.end method

.method public setUserdata(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->userdata:Ljava/lang/String;

    return-void
.end method

.method public setbTid([B)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bTid:[B

    return-void
.end method

.method public setbUser([B)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bUser:[B

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexString{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBase6bInfo{tid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bTid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bTid:[B

    .line 129
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", antId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->antId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->rssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->result:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userdata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->userdata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->bUser:[B

    .line 134
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", readerSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
