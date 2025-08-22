.class public Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;
.super Lcom/gg/reader/api/protocol/gx/Message;
.source "LogBaseEpcInfo.java"


# instance fields
.field private antId:I

.field private bEpc:[B

.field private bEpcData:[B

.field private bRes:[B

.field private bTid:[B

.field private bUser:[B

.field private childAntId:I

.field private crc:I

.field private ctesiusLtu27:I

.field private ctesiusLtu31:I

.field private dateFormat:Ljava/text/DateFormat;

.field private epc:Ljava/lang/String;

.field private epcData:Ljava/lang/String;

.field private frequencyPoint:Ljava/lang/Long;

.field private kunYue:I

.field private pc:I

.field private phase:I

.field private readerSerialNumber:Ljava/lang/String;

.field private replySerialNumber:Ljava/lang/Long;

.field private reserved:Ljava/lang/String;

.field private result:I

.field private rssi:I

.field private rssidBm:I

.field private strUtc:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private userdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/gg/reader/api/protocol/gx/Message;-><init>()V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public ackUnpack()V
    .locals 9

    .line 253
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->cData:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->cData:[B

    array-length v0, v0

    if-lez v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->cData:[B

    invoke-static {v0}, Lcom/gg/reader/api/utils/BitBuffer;->wrap([B)Lcom/gg/reader/api/utils/BitBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 258
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->position(I)Lcom/gg/reader/api/utils/BitBuffer;

    const/16 v1, 0x10

    .line 259
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    .line 260
    new-array v2, v2, [B

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpc:[B

    .line 261
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpc:[B

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpc:[B

    .line 262
    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpc:[B

    array-length v3, v2

    if-lez v3, :cond_0

    .line 263
    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epc:Ljava/lang/String;

    .line 265
    :cond_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v2

    iput v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->pc:I

    const/16 v2, 0x8

    .line 266
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->antId:I

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/utils/BitBuffer;->position()I

    move-result v3

    div-int/2addr v3, v2

    iget-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->cData:[B

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 268
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 352
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->crc:I

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->rssidBm:I

    goto :goto_0

    .line 346
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->kunYue:I

    goto :goto_0

    .line 343
    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu31:I

    goto :goto_0

    .line 340
    :pswitch_4
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu27:I

    goto :goto_0

    .line 329
    :pswitch_5
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 331
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpcData:[B

    .line 332
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpcData:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpcData:[B

    .line 333
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpcData:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epcData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 325
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->phase:I

    goto :goto_0

    .line 322
    :pswitch_7
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->frequencyPoint:Ljava/lang/Long;

    goto :goto_0

    .line 316
    :pswitch_8
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    .line 317
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLong(I)J

    move-result-wide v3

    div-long/2addr v3, v7

    add-long/2addr v5, v3

    .line 319
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->dateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/gg/reader/api/utils/DateTimeUtils;->fromUtcToTimeZone(JLjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->strUtc:Ljava/lang/String;

    goto/16 :goto_0

    .line 313
    :pswitch_9
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->childAntId:I

    goto/16 :goto_0

    .line 302
    :pswitch_a
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 304
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bRes:[B

    .line 305
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bRes:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bRes:[B

    .line 306
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bRes:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->reserved:Ljava/lang/String;

    goto/16 :goto_0

    .line 290
    :pswitch_b
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 292
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bUser:[B

    .line 293
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bUser:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bUser:[B

    .line 294
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bUser:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->userdata:Ljava/lang/String;

    goto/16 :goto_0

    .line 278
    :pswitch_c
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 280
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bTid:[B

    .line 281
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bTid:[B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bTid:[B

    .line 282
    iget-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bTid:[B

    invoke-static {v3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->tid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 274
    :pswitch_d
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->result:I

    goto/16 :goto_0

    .line 271
    :pswitch_e
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    iput v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->rssi:I

    goto/16 :goto_0

    .line 364
    :cond_2
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/utils/BitBuffer;->getLongUnsigned(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->replySerialNumber:Ljava/lang/Long;

    goto/16 :goto_0

    .line 356
    :cond_3
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/utils/BitBuffer;->getIntUnsigned(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 358
    new-instance v4, Ljava/lang/String;

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/utils/BitBuffer;->get([B)[B

    move-result-object v3

    const-string v5, "ASCII"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->readerSerialNumber:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAntId()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->antId:I

    return v0
.end method

.method public getChildAntId()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->childAntId:I

    return v0
.end method

.method public getCrc()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->crc:I

    return v0
.end method

.method public getCtesiusLtu27()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu27:I

    return v0
.end method

.method public getCtesiusLtu31()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu31:I

    return v0
.end method

.method public getEpc()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epc:Ljava/lang/String;

    return-object v0
.end method

.method public getEpcData()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epcData:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequencyPoint()Ljava/lang/Long;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->frequencyPoint:Ljava/lang/Long;

    return-object v0
.end method

.method public getKunYue()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->kunYue:I

    return v0
.end method

.method public getPc()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->pc:I

    return v0
.end method

.method public getPhase()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->phase:I

    return v0
.end method

.method public getReaderSerialNumber()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->readerSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getReplySerialNumber()Ljava/lang/Long;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->replySerialNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public getReserved()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->reserved:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->result:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->rssi:I

    return v0
.end method

.method public getRssidBm()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->rssidBm:I

    return v0
.end method

.method public getStrUtc()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->strUtc:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->userdata:Ljava/lang/String;

    return-object v0
.end method

.method public getbEpc()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpc:[B

    return-object v0
.end method

.method public getbEpcData()[B
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpcData:[B

    return-object v0
.end method

.method public getbRes()[B
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bRes:[B

    return-object v0
.end method

.method public getbTid()[B
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bTid:[B

    return-object v0
.end method

.method public getbUser()[B
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bUser:[B

    return-object v0
.end method

.method public pack()V
    .locals 0

    .line 248
    invoke-super {p0}, Lcom/gg/reader/api/protocol/gx/Message;->pack()V

    return-void
.end method

.method public setAntId(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->antId:I

    return-void
.end method

.method public setChildAntId(I)V
    .locals 0

    .line 147
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->childAntId:I

    return-void
.end method

.method public setCrc(I)V
    .locals 0

    .line 243
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->crc:I

    return-void
.end method

.method public setCtesiusLtu27(I)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu27:I

    return-void
.end method

.method public setCtesiusLtu31(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu31:I

    return-void
.end method

.method public setEpc(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epc:Ljava/lang/String;

    return-void
.end method

.method public setEpcData(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epcData:Ljava/lang/String;

    return-void
.end method

.method public setFrequencyPoint(Ljava/lang/Long;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->frequencyPoint:Ljava/lang/Long;

    return-void
.end method

.method public setKunYue(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->kunYue:I

    return-void
.end method

.method public setPc(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->pc:I

    return-void
.end method

.method public setPhase(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->phase:I

    return-void
.end method

.method public setReaderSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->readerSerialNumber:Ljava/lang/String;

    return-void
.end method

.method public setReplySerialNumber(Ljava/lang/Long;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->replySerialNumber:Ljava/lang/Long;

    return-void
.end method

.method public setReserved(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->reserved:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->result:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->rssi:I

    return-void
.end method

.method public setRssidBm(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->rssidBm:I

    return-void
.end method

.method public setStrUtc(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->strUtc:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->tid:Ljava/lang/String;

    return-void
.end method

.method public setUserdata(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->userdata:Ljava/lang/String;

    return-void
.end method

.method public setbEpc([B)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpc:[B

    return-void
.end method

.method public setbEpcData([B)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpcData:[B

    return-void
.end method

.method public setbRes([B)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bRes:[B

    return-void
.end method

.method public setbTid([B)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bTid:[B

    return-void
.end method

.method public setbUser([B)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bUser:[B

    return-void
.end method

.method public toHexString()Ljava/lang/String;
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexString{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->cData:[B

    invoke-static {v1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogBaseEpcInfo{epc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bEpc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpc:[B

    .line 377
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->pc:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", antId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->antId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rssi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->rssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->result:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->tid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bTid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bTid:[B

    .line 383
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userdata=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->userdata:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bUser:[B

    .line 385
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reserved=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->reserved:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bRes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bRes:[B

    .line 387
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", childAntId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->childAntId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", strUtc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->strUtc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", frequencyPoint="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->frequencyPoint:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", phase="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->phase:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", epcData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->epcData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bEpcData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->bEpcData:[B

    .line 393
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ctesiusLtu27="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu27:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ctesiusLtu31="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->ctesiusLtu31:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", readerSerialNumber=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->readerSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", replySerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->replySerialNumber:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
