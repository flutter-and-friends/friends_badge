.class public Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppSetReaderTime.java"


# instance fields
.field private systemTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->systemTime:Ljava/util/Date;

    .line 18
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/16 v1, 0x10

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    .line 28
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v0, 0x20

    .line 33
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 34
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v5

    div-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 35
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->systemTime:Ljava/util/Date;
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

    .line 63
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime$1;

    invoke-direct {v0, p0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime$1;-><init>(Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;)V

    .line 69
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->cData:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->cData:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->cData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->setRtCode(B)V

    .line 71
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->cData:[B

    aget-byte v1, v1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->setRtMsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSystemTime()Ljava/util/Date;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->systemTime:Ljava/util/Date;

    return-object v0
.end method

.method public pack()V
    .locals 8

    .line 52
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->systemTime:Ljava/util/Date;

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

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 55
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x20

    invoke-virtual {v0, v3, v4, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 56
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2, v5}, Lcom/gg/reader/api/utils/BitBuffer;->putLong(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 57
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->cData:[B

    .line 58
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->dataLen:I

    return-void
.end method

.method public setSystemTime(Ljava/util/Date;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppSetReaderTime;->systemTime:Ljava/util/Date;

    return-void
.end method
