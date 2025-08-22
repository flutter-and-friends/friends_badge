.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetGpiTrigger.java"


# instance fields
.field private gpiPort:I

.field private hexTriggerCommand:Ljava/lang/String;

.field private levelUploadSwitch:I

.field private overDelayTime:I

.field private triggerCommand:[B

.field private triggerOver:I

.field private triggerStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    const v0, 0x7fffffff

    .line 20
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    .line 21
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I

    .line 25
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 26
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0xc

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 35
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;-><init>()V

    if-eqz p1, :cond_2

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

    const/16 v0, 0x8

    .line 40
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerStart:I

    const/16 v1, 0x10

    .line 42
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 44
    new-array v2, v2, [B

    .line 45
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    .line 46
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    .line 48
    :cond_1
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerOver:I

    .line 49
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    .line 50
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result p1

    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 6

    .line 131
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 132
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerStart:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 133
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    array-length v1, v1

    if-ltz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    array-length v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 135
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 139
    :goto_0
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerOver:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 140
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    const v4, 0x7fffffff

    if-eq v4, v1, :cond_1

    .line 141
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->put(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 143
    :cond_1
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I

    if-eq v4, v1, :cond_2

    .line 144
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 146
    :cond_2
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->cData:[B

    .line 147
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->cData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x8

    .line 157
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerStart:I

    const/16 v3, 0x10

    .line 159
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 161
    new-array v4, v4, [B

    .line 162
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    .line 163
    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    invoke-static {v4}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    .line 165
    :cond_0
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    iput v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerOver:I

    .line 166
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    .line 167
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I

    .line 168
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->setRtCode(B)V

    :cond_1
    return-void
.end method

.method public getGpiPort()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->gpiPort:I

    return v0
.end method

.method public getHexTriggerCommand()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelUploadSwitch()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I

    return v0
.end method

.method public getOverDelayTime()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    return v0
.end method

.method public getTriggerCommand()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    return-object v0
.end method

.method public getTriggerOver()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerOver:I

    return v0
.end method

.method public getTriggerStart()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerStart:I

    return v0
.end method

.method public pack()V
    .locals 4

    .line 119
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 120
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->gpiPort:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 121
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->cData:[B

    .line 122
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setGpiPort(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->gpiPort:I

    return-void
.end method

.method public setHexTriggerCommand(Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-static {p1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    :cond_0
    return-void
.end method

.method public setLevelUploadSwitch(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I

    return-void
.end method

.method public setOverDelayTime(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    return-void
.end method

.method public setTriggerCommand([B)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    return-void
.end method

.method public setTriggerOver(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerOver:I

    return-void
.end method

.method public setTriggerStart(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerStart:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetGpiTrigger{gpiPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->gpiPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", triggerStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", triggerCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerCommand:[B

    .line 177
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hexTriggerCommand=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->hexTriggerCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", triggerOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->triggerOver:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", overDelayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->overDelayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", levelUploadSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetGpiTrigger;->levelUploadSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
