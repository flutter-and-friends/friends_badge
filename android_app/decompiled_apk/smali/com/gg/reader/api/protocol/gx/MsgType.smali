.class public Lcom/gg/reader/api/protocol/gx/MsgType;
.super Ljava/lang/Object;
.source "MsgType.java"


# instance fields
.field public msgId:B

.field public mt_12:Ljava/lang/String;

.field public mt_13:Ljava/lang/String;

.field public mt_14:Ljava/lang/String;

.field public mt_15:Ljava/lang/String;

.field public mt_8_11:Ljava/lang/String;

.field public pType:B

.field public pVersion:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const-string v0, "0000"

    .line 14
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v0, "0"

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_14:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_15:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pVersion:B

    const/4 v0, 0x0

    .line 20
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pType:B

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const-string v0, "0000"

    .line 14
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v0, "0"

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_14:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_15:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pVersion:B

    const/4 v0, 0x0

    .line 20
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pType:B

    .line 26
    iput-byte p1, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 27
    iput-object p2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const-string v0, "0000"

    .line 14
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    const-string v0, "0"

    .line 15
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_14:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_15:Ljava/lang/String;

    const/4 v0, 0x1

    .line 19
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pVersion:B

    const/4 v1, 0x0

    .line 20
    iput-byte v1, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pType:B

    const/4 v2, 0x3

    .line 34
    :try_start_0
    aget-byte v3, p1, v2

    iput-byte v3, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    const/4 v3, 0x2

    .line 35
    aget-byte v4, p1, v3

    invoke-direct {p0, v4}, Lcom/gg/reader/api/protocol/gx/MsgType;->byte2bits(B)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x30

    const/16 v6, 0x8

    .line 36
    invoke-static {v4, v5, v6}, Lcom/gg/reader/api/utils/StringUtils;->padRight(Ljava/lang/String;CI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 37
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 38
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    .line 39
    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_14:Ljava/lang/String;

    .line 41
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_15:Ljava/lang/String;

    .line 42
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pVersion:B

    .line 43
    aget-byte p1, p1, v1

    iput-byte p1, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pType:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static bit2byte(Ljava/lang/String;)B
    .locals 11

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_0

    int-to-double v3, v1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-double v5, v1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    int-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    double-to-int v1, v3

    int-to-byte v1, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private byte2bits(B)Ljava/lang/String;
    .locals 2

    or-int/lit16 p1, p1, 0x100

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x8

    .line 78
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public toBytes()[B
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 51
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_15:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_14:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_12:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/gg/reader/api/protocol/gx/MsgType;->bit2byte(Ljava/lang/String;)B

    move-result v1

    const/4 v2, 0x3

    .line 53
    iget-byte v3, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    .line 55
    iget-byte v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pVersion:B

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    .line 56
    iget-byte v2, p0, Lcom/gg/reader/api/protocol/gx/MsgType;->pType:B

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public toInt()I
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/gg/reader/api/protocol/gx/MsgType;->toBytes()[B

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x20

    .line 67
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v0

    return v0
.end method
