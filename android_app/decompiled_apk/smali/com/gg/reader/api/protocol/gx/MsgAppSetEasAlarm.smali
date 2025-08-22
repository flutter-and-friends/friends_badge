.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetEasAlarm.java"


# instance fields
.field private alarmSwitch:I

.field private byteContent:[B

.field private byteMask:[B

.field private fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

.field private filterData:I

.field private hexContent:Ljava/lang/String;

.field private hexMask:Ljava/lang/String;

.field private start:I

.field private success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 26
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x3f

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 5

    .line 36
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;-><init>()V

    if-eqz p1, :cond_5

    .line 38
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 41
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->alarmSwitch:I

    .line 42
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->filterData:I

    const/16 v2, 0x10

    .line 43
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->start:I

    .line 44
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 46
    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteContent:[B

    .line 47
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteContent:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexContent:Ljava/lang/String;

    .line 49
    :cond_1
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 51
    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteMask:[B

    .line 52
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteMask:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexMask:Ljava/lang/String;

    .line 54
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v1

    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 55
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 66
    new-array v3, v3, [B

    .line 67
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 68
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ActionParamFail;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    .line 60
    new-array v3, v3, [B

    .line 61
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    .line 62
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    invoke-direct {v4, v3}, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;-><init>([B)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 3

    .line 190
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;)V

    .line 196
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->setRtCode(B)V

    .line 198
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAlarmSwitch()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->alarmSwitch:I

    return v0
.end method

.method public getByteContent()[B
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteContent:[B

    return-object v0
.end method

.method public getByteMask()[B
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteMask:[B

    return-object v0
.end method

.method public getFail()Lcom/gg/reader/api/protocol/gx/ActionParamFail;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    return-object v0
.end method

.method public getFilterData()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->filterData:I

    return v0
.end method

.method public getHexContent()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexContent:Ljava/lang/String;

    return-object v0
.end method

.method public getHexMask()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexMask:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->start:I

    return v0
.end method

.method public getSuccess()Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    return-object v0
.end method

.method public pack()V
    .locals 5

    .line 158
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 159
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->alarmSwitch:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 160
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->filterData:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 161
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->start:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 162
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteContent:[B

    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 163
    array-length v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 164
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteContent:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteMask:[B

    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 167
    array-length v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 168
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteMask:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 173
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;->toBytes()[B

    move-result-object v1

    .line 174
    array-length v4, v1

    invoke-virtual {v0, v4, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 175
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 179
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ActionParamFail;->toBytes()[B

    move-result-object v1

    .line 180
    array-length v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 181
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 184
    :cond_3
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->cData:[B

    .line 185
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->dataLen:I

    return-void
.end method

.method public setAlarmSwitch(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->alarmSwitch:I

    return-void
.end method

.method public setByteContent([B)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteContent:[B

    return-void
.end method

.method public setByteMask([B)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteMask:[B

    return-void
.end method

.method public setFail(Lcom/gg/reader/api/protocol/gx/ActionParamFail;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->fail:Lcom/gg/reader/api/protocol/gx/ActionParamFail;

    return-void
.end method

.method public setFilterData(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->filterData:I

    return-void
.end method

.method public setHexContent(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexContent:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexContent:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteContent:[B

    :cond_0
    return-void
.end method

.method public setHexMask(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexMask:Ljava/lang/String;

    .line 127
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->hexMask:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->byteMask:[B

    :cond_0
    return-void
.end method

.method public setStart(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->start:I

    return-void
.end method

.method public setSuccess(Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetEasAlarm;->success:Lcom/gg/reader/api/protocol/gx/ActionParamSuccess;

    return-void
.end method
