.class public Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogAppGpiStart.java"


# instance fields
.field private gpiPort:I

.field private gpiPortLevel:I

.field private readerSerialNumber:Ljava/lang/String;

.field private systemTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->systemTime:Ljava/util/Date;

    .line 19
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 23
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 8

    .line 68
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPort:I

    int-to-long v1, v1

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 70
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPortLevel:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 71
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->systemTime:Ljava/util/Date;

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

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x20

    invoke-virtual {v0, v3, v4, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 74
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 75
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->cData:[B

    .line 76
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->dataLen:I

    return-void
.end method

.method public ackUnpack()V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    .line 85
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPort:I

    .line 86
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPortLevel:I

    const/16 v1, 0x20

    .line 87
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    .line 88
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v0

    div-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 90
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->systemTime:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public getGpiPort()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPort:I

    return v0
.end method

.method public getGpiPortLevel()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPortLevel:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemTime()Ljava/util/Date;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->systemTime:Ljava/util/Date;

    return-object v0
.end method

.method public pack()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setGpiPort(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPort:I

    return-void
.end method

.method public setGpiPortLevel(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPortLevel:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSystemTime(Ljava/util/Date;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->systemTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogAppGpiStart{gpiPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gpiPortLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->gpiPortLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", systemTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->systemTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readerSerialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogAppGpiStart;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
