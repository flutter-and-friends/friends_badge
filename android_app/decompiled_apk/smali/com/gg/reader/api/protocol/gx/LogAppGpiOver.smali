.class public Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogAppGpiOver.java"


# instance fields
.field private gpiPort:I

.field private gpiPortLevel:I

.field private readerSerialNumber:Ljava/lang/String;

.field private systemTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->systemTime:Ljava/util/Date;

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 8

    .line 66
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 67
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPort:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 68
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPortLevel:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 69
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->systemTime:Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gg/reader/api/utils/DateTimeUtils;->UtcFromTimeZone(Ljava/util/Date;Ljava/util/TimeZone;)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%.3f"

    invoke-virtual {v1, v4, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\."

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 71
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x20

    invoke-virtual {v0, v3, v4, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 72
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 73
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->cData:[B

    .line 74
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->dataLen:I

    return-void
.end method

.method public ackUnpack()V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPort:I

    .line 83
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPortLevel:I

    const/16 v1, 0x20

    .line 84
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 85
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v0

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 87
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->systemTime:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public getGpiPort()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPort:I

    return v0
.end method

.method public getGpiPortLevel()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPortLevel:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemTime()Ljava/util/Date;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->systemTime:Ljava/util/Date;

    return-object v0
.end method

.method public pack()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setGpiPort(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPort:I

    return-void
.end method

.method public setGpiPortLevel(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPortLevel:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSystemTime(Ljava/util/Date;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->systemTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogAppGpiOver{gpiPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpiPortLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->gpiPortLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->systemTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readerSerialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiOver;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
