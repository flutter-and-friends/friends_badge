.class public Lcom/gg/reader/api/protocol/gx/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field public static final HEAD:B = 0x5at

.field public static final MSG_MAX_LEN:I = 0x400


# instance fields
.field public cData:[B

.field public crc:[B

.field public crcData:[B

.field public dataLen:I

.field public msgData:[B

.field public msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

.field public rs485Address:I

.field private rtCode:B

.field private rtMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 18
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    .line 19
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    .line 20
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    .line 21
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    .line 22
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    const/4 v0, -0x1

    .line 24
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtCode:B

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    .line 18
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    .line 19
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    .line 20
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    .line 21
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    .line 22
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    const/4 v0, -0x1

    .line 24
    iput-byte v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtCode:B

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtMsg:Ljava/lang/String;

    .line 49
    :try_start_0
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    .line 50
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    .line 51
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object p1

    const/16 v0, 0x8

    .line 52
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 54
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v1

    .line 55
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v2, v1}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>([B)V

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 56
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    iget-object v1, v1, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_13:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    :cond_0
    const/16 v1, 0x10

    .line 59
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v1

    iput v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    .line 60
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    if-lez v1, :cond_1

    .line 61
    iget v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    .line 62
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v1

    .line 65
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 66
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    .line 67
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 68
    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    .line 69
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message unpacking error :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/GLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public ackPack()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 113
    iget-byte v2, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtCode:B

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    .line 114
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    return-void
.end method

.method public ackUnpack()V
    .locals 0

    return-void
.end method

.method public ackUnpack([B)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    .line 126
    invoke-virtual {p0}, Lcom/gg/reader/api/protocol/gx/Message;->ackUnpack()V

    return-void
.end method

.method public checkCrc()Z
    .locals 5

    const/4 v0, 0x0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/Crc16Utils;->CRC_XModem([B)S

    move-result v1

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->short2Bytes(S)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 139
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    aget-byte v3, v3, v2

    aget-byte v4, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method

.method public getRtCode()B
    .locals 1

    .line 28
    iget-byte v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtCode:B

    return v0
.end method

.method public getRtMsg()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtMsg:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    return-void
.end method

.method public setRtCode(B)V
    .locals 0

    .line 36
    iput-byte p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtCode:B

    return-void
.end method

.method public setRtMsg(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->rtMsg:Ljava/lang/String;

    return-void
.end method

.method public toBytes()[B
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/gg/reader/api/protocol/gx/Message;->toBytes(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public toBytes(Z)[B
    .locals 4

    .line 80
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/16 v1, 0x5a

    .line 81
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 82
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgType;->toBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 84
    iget p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->rs485Address:I

    invoke-virtual {v0, p1, v1}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 86
    :cond_0
    iget p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 87
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->cData:[B

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    array-length v2, p1

    iget v3, p0, Lcom/gg/reader/api/protocol/gx/Message;->dataLen:I

    if-ne v2, v3, :cond_1

    .line 88
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result p1

    .line 91
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v2

    div-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    .line 92
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 93
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    .line 94
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    .line 96
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crcData:[B

    invoke-static {p1}, Lcom/gg/reader/api/utils/Crc16Utils;->CRC_XModem([B)S

    move-result p1

    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->short2Bytes(S)[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    .line 97
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->crc:[B

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/utils/BitBuffer;->put([B)Lcom/gg/reader/api/utils/BitBuffer;

    .line 98
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    .line 99
    iget-object p1, p0, Lcom/gg/reader/api/protocol/gx/Message;->msgData:[B

    return-object p1
.end method
