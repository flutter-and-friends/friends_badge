.class public Lcom/gg/reader/api/protocol/gx/MsgTestChip;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgTestChip.java"


# instance fields
.field private address:Ljava/lang/Integer;

.field private dataContent:[B

.field private hexDataContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 24
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 25
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0101"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x31

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgTestChip;-><init>()V

    if-eqz p1, :cond_1

    .line 63
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x10

    .line 66
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->address:Ljava/lang/Integer;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 67
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    .line 68
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    array-length p1, p1

    if-lez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->hexDataContent:Ljava/lang/String;
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

    .line 91
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgTestChip$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgTestChip$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgTestChip;)V

    .line 97
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->setRtCode(B)V

    .line 99
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->setRtMsg(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->address:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x302

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 105
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->hexDataContent:Ljava/lang/String;

    .line 106
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->setRtCode(B)V

    :cond_1
    return-void
.end method

.method public getAddress()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->address:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDataContent()[B
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    return-object v0
.end method

.method public getHexDataContent()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->hexDataContent:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 78
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->address:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->address:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    .line 86
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataLen:I

    return-void
.end method

.method public setAddress(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->address:Ljava/lang/Integer;

    return-void
.end method

.method public setDataContent([B)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    return-void
.end method

.method public setHexDataContent(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->hexDataContent:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->hexDataContent:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgTestChip{address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->address:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dataContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->dataContent:[B

    .line 115
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hexDataContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgTestChip;->hexDataContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
