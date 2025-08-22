.class public Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "MsgAppGetReaderInfo.java"


# instance fields
.field private appCompileTime:Ljava/lang/String;

.field private appVersions:Ljava/lang/String;

.field private baseCompileTime:Ljava/lang/String;

.field private powerOnTime:J

.field private readerSerialNumber:Ljava/lang/String;

.field private systemVersions:Ljava/lang/String;

.field private tuYaAuthKey:Ljava/lang/String;

.field private tuYaPid:Ljava/lang/String;

.field private tuYaShortUrl:Ljava/lang/String;

.field private tuYaUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 26
    :try_start_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgType;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgType;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const-string v1, "0001"

    iput-object v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->mt_8_11:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->msgType:Lcom/gg/reader/api/protocol/gx/MsgType;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/gg/reader/api/protocol/gx/MsgType;->msgId:B

    .line 30
    iput v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    const-string v0, "."

    .line 37
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;-><init>()V

    if-eqz p1, :cond_3

    .line 39
    :try_start_0
    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v2, 0x10

    .line 42
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ASCII"

    if-lez v3, :cond_1

    .line 44
    :try_start_1
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    :cond_1
    const/16 v3, 0x20

    .line 46
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    .line 47
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 49
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    const/16 v5, 0x8

    div-int/2addr v3, v5

    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 52
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 90
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 84
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 78
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    goto :goto_0

    .line 70
    :pswitch_3
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 72
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    goto :goto_0

    .line 64
    :pswitch_4
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 66
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    goto :goto_0

    .line 58
    :pswitch_5
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 60
    new-instance v5, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v5, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    goto/16 :goto_0

    .line 55
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ackPack()V
    .locals 7

    .line 200
    :try_start_0
    invoke-static {}, Lcom/gg/reader/api/utils/BitBuffer;->allocateDynamic()Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 203
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 206
    :cond_0
    iget-wide v3, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    const/16 v1, 0x20

    invoke-virtual {v0, v3, v4, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(JI)Lcom/gg/reader/api/utils/BitBuffer;

    .line 208
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 210
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 214
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 215
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 216
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 221
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 222
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 223
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 226
    :cond_3
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    .line 227
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 228
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 229
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 232
    :cond_4
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    .line 233
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 234
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 235
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x5

    .line 239
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 240
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 241
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 244
    :cond_6
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x6

    .line 245
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 246
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 247
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 250
    :cond_7
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/gg/reader/api/utils/StringUtils;->isNullOfEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x7

    .line 251
    invoke-virtual {v0, v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 252
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->putInt(II)Lcom/gg/reader/api/utils/BitBuffer;

    .line 253
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->put(Ljava/lang/String;)Lcom/gg/reader/api/utils/BitBuffer;

    .line 256
    :cond_8
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->asByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    .line 257
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    array-length v0, v0

    iput v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->dataLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ackUnpack()V
    .locals 8

    const-string v0, "."

    .line 264
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    array-length v1, v1

    if-lez v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v3, 0x10

    .line 268
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "ASCII"

    if-lez v4, :cond_0

    .line 270
    :try_start_1
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    :cond_0
    const/16 v4, 0x20

    .line 272
    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    .line 273
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 275
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v4

    const/16 v6, 0x8

    div-int/2addr v4, v6

    iget-object v7, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->cData:[B

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 278
    invoke-virtual {v1}, Lcom/gg/reader/api/utils/BitBuffer;->getByte()B

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 314
    :pswitch_0
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 316
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 310
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    goto :goto_0

    .line 302
    :pswitch_2
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 304
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    goto :goto_0

    .line 296
    :pswitch_3
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 298
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    goto :goto_0

    .line 290
    :pswitch_4
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 292
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    goto :goto_0

    .line 284
    :pswitch_5
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 286
    new-instance v6, Ljava/lang/String;

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v4

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    goto/16 :goto_0

    .line 281
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 324
    :catch_0
    :cond_2
    invoke-virtual {p0, v2}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->setRtCode(B)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAppCompileTime()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersions()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseCompileTime()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatPowerOnTime()Ljava/lang/String;
    .locals 12

    .line 151
    invoke-virtual {p0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->getPowerOnTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    const-wide/32 v4, 0x5265c00

    .line 152
    div-long v6, v0, v4

    .line 153
    rem-long v4, v0, v4

    const-wide/32 v8, 0x36ee80

    div-long/2addr v4, v8

    .line 154
    rem-long v8, v0, v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    .line 155
    rem-long/2addr v0, v10

    div-long/2addr v0, v2

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " days "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " hours "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " minutes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerOnTime()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    return-wide v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemVersions()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaAuthKey()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaPid()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaShortUrl()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTuYaUuid()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    return-object v0
.end method

.method public pack()V
    .locals 0

    return-void
.end method

.method public setAppCompileTime(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    return-void
.end method

.method public setAppVersions(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    return-void
.end method

.method public setBaseCompileTime(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    return-void
.end method

.method public setPowerOnTime(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setSystemVersions(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    return-void
.end method

.method public setTuYaAuthKey(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    return-void
.end method

.method public setTuYaPid(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    return-void
.end method

.method public setTuYaShortUrl(Ljava/lang/String;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    return-void
.end method

.method public setTuYaUuid(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsgAppGetReaderInfo{readerSerialNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", powerOnTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->powerOnTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", baseCompileTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->baseCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appVersions=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appVersions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", systemVersions=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->systemVersions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appCompileTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->appCompileTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tuYaPid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaPid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tuYaUuid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tuYaAuthKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaAuthKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", tuYaShortUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/MsgAppGetReaderInfo;->tuYaShortUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
