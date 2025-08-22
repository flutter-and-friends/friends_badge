.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetReaderTime.java"


# instance fields
.field private systemTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 21
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 22
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x11

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    .line 31
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;-><init>()V

    if-eqz p1, :cond_1

    .line 33
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 36
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 37
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v5

    div-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 38
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->systemTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 9

    .line 64
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    const-string v2, "%.3f"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->systemTime:Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/gg/reader/api/utils/DateTimeUtils;->UtcFromTimeZone(Ljava/util/Date;Ljava/util/TimeZone;)J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\."

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    const/16 v2, 0x20

    invoke-virtual {v0, v4, v5, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 68
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 69
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->cData:[B

    .line 70
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 9

    .line 77
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->cData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x20

    .line 80
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 81
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v7

    div-long/2addr v7, v5

    add-long/2addr v3, v7

    .line 82
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->systemTime:Ljava/util/Date;

    .line 83
    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->setRtCode(B)V

    :cond_0
    return-void
.end method

.method public getFormatTime()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->getSystemTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemTime()Ljava/util/Date;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->systemTime:Ljava/util/Date;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setSystemTime(Ljava/util/Date;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderTime;->systemTime:Ljava/util/Date;

    return-void
.end method
