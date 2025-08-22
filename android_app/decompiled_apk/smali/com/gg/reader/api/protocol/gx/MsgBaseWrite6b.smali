.class public Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgBaseWrite6b.java"


# instance fields
.field private antennaEnable:Ljava/lang/Long;

.field private bMatchTid:[B

.field private bwriteData:[B

.field private errorIndex:I

.field private hexMatchTid:Ljava/lang/String;

.field private hexWriteData:Ljava/lang/String;

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 25
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0010"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x41

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;-><init>()V

    if-eqz p1, :cond_1

    .line 37
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 40
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->antennaEnable:Ljava/lang/Long;

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 41
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bMatchTid:[B

    .line 42
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bMatchTid:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexMatchTid:Ljava/lang/String;

    .line 43
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->start:I

    const/16 v0, 0x10

    .line 44
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 46
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bwriteData:[B

    .line 47
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bwriteData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexWriteData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 4

    .line 133
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;)V

    .line 143
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setRtCode(B)V

    .line 145
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    aget-byte v1, v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setRtMsg(Ljava/lang/String;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    array-length v0, v0

    if-le v0, v2, :cond_1

    .line 149
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v1, 0x8

    .line 150
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 151
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 152
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->errorIndex:I

    :cond_1
    return-void
.end method

.method public getAntennaEnable()Ljava/lang/Long;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->antennaEnable:Ljava/lang/Long;

    return-object v0
.end method

.method public getBwriteData()[B
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bwriteData:[B

    return-object v0
.end method

.method public getErrorIndex()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->errorIndex:I

    return v0
.end method

.method public getHexMatchTid()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexMatchTid:Ljava/lang/String;

    return-object v0
.end method

.method public getHexWriteData()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexWriteData:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->start:I

    return v0
.end method

.method public getbMatchTid()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bMatchTid:[B

    return-object v0
.end method

.method public pack()V
    .locals 4

    .line 119
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->antennaEnable:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 121
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bMatchTid:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 122
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->start:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 123
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bwriteData:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 124
    array-length v1, v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 125
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bwriteData:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 127
    :cond_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    .line 128
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->dataLen:I

    return-void
.end method

.method public setAntennaEnable(Ljava/lang/Long;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->antennaEnable:Ljava/lang/Long;

    return-void
.end method

.method public setBwriteData([B)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bwriteData:[B

    return-void
.end method

.method public setErrorIndex(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->errorIndex:I

    return-void
.end method

.method public setHexMatchTid(Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexMatchTid:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexMatchTid:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bMatchTid:[B

    :cond_0
    return-void
.end method

.method public setHexWriteData(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexWriteData:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->hexWriteData:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bwriteData:[B

    :cond_0
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->start:I

    return-void
.end method

.method public setbMatchTid([B)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->bMatchTid:[B

    return-void
.end method
