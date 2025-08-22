.class public Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseGbInfo.java"


# instance fields
.field private antId:I

.field private bEpc:[B

.field private bTid:[B

.field private bUser:[B

.field private epc:Ljava/lang/String;

.field private pc:I

.field private readerSerialNumber:Ljava/lang/String;

.field private result:I

.field private rssi:I

.field private tid:Ljava/lang/String;

.field private userdata:Ljava/lang/String;


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

    .line 114
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->cData:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 115
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x10

    .line 117
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 118
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bEpc:[B

    .line 119
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bEpc:[B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bEpc:[B

    .line 120
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bEpc:[B

    array-length v3, v2

    if-lez v3, :cond_0

    .line 121
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->epc:Ljava/lang/String;

    .line 123
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->pc:I

    const/16 v2, 0x8

    .line 124
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->antId:I

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 126
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 143
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 144
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bUser:[B

    if-lez v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bUser:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bUser:[B

    .line 147
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bUser:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->userdata:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 136
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bTid:[B

    if-lez v3, :cond_1

    .line 138
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bTid:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bTid:[B

    .line 139
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bTid:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->tid:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->result:I

    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->rssi:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method public getAntId()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->antId:I

    return v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->pc:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->result:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->rssi:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->userdata:Ljava/lang/String;

    return-object v0
.end method

.method public getbEpc()[B
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bEpc:[B

    return-object v0
.end method

.method public getbTid()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bTid:[B

    return-object v0
.end method

.method public getbUser()[B
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bUser:[B

    return-object v0
.end method

.method public setAntId(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->antId:I

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->pc:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->result:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->rssi:I

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->tid:Ljava/lang/String;

    return-void
.end method

.method public setUserdata(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->userdata:Ljava/lang/String;

    return-void
.end method

.method public setbEpc([B)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bEpc:[B

    return-void
.end method

.method public setbTid([B)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bTid:[B

    return-void
.end method

.method public setbUser([B)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bUser:[B

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexString{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->cData:[B

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

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseGbInfo{epc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bEpc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bEpc:[B

    .line 161
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bTid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bTid:[B

    .line 163
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->pc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", antId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->antId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->rssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->result:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userdata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->userdata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->bUser:[B

    .line 169
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", readerSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
