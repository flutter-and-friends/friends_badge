.class public Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseGJbInfo.java"


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

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->cData:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_6

    .line 116
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x10

    .line 118
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 119
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bEpc:[B

    .line 120
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bEpc:[B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bEpc:[B

    .line 121
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bEpc:[B

    array-length v3, v2

    if-lez v3, :cond_0

    .line 122
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->epc:Ljava/lang/String;

    .line 124
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->pc:I

    const/16 v2, 0x8

    .line 125
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->antId:I

    .line 126
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_6

    .line 127
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

    .line 144
    :cond_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 145
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bUser:[B

    if-lez v3, :cond_1

    .line 147
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bUser:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bUser:[B

    .line 148
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bUser:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->userdata:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 137
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bTid:[B

    if-lez v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bTid:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bTid:[B

    .line 140
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bTid:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->tid:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->result:I

    goto :goto_0

    .line 130
    :cond_5
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->rssi:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method public getAntId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->antId:I

    return v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getPc()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->pc:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->result:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->rssi:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->userdata:Ljava/lang/String;

    return-object v0
.end method

.method public getbEpc()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bEpc:[B

    return-object v0
.end method

.method public getbTid()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bTid:[B

    return-object v0
.end method

.method public getbUser()[B
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bUser:[B

    return-object v0
.end method

.method public setAntId(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->antId:I

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->pc:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->result:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->rssi:I

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->tid:Ljava/lang/String;

    return-void
.end method

.method public setUserdata(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->userdata:Ljava/lang/String;

    return-void
.end method

.method public setbEpc([B)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bEpc:[B

    return-void
.end method

.method public setbTid([B)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bTid:[B

    return-void
.end method

.method public setbUser([B)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bUser:[B

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexString{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->cData:[B

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

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseGJbInfo{epc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bEpc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bEpc:[B

    .line 162
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bTid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bTid:[B

    .line 164
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->pc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", antId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->antId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->rssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->result:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userdata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->userdata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->bUser:[B

    .line 170
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", readerSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
