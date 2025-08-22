.class public Lcn/highlight/work_card_write/util/NFC;
.super Ljava/lang/Object;
.source "NFC.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final S0:I = 0x0

.field public static final S1:I = 0x100

.field public static final S2:I = 0x200

.field public static final S4:I = 0x400

.field public static final S6:I = 0x600

.field public static final S7:I = 0x700

.field public static final S8:I = 0x800

.field public static final SUCCESS:I = 0x0

.field public static final W_END:I = 0xe0

.field public static final W_START:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(IB)[B
    .locals 3

    .line 218
    new-array v0, p0, [B

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x0

    .line 221
    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    .line 222
    aput-byte p0, v0, v1

    const/4 p0, 0x2

    .line 225
    aput-byte p1, v0, p0

    const/4 p0, 0x3

    .line 228
    aput-byte v2, v0, p0

    return-object v0
.end method

.method public static getCheck([B)B
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 394
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 395
    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    int-to-byte p0, v1

    return p0
.end method

.method public static getDec([B)J
    .locals 9

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    .line 497
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 498
    aget-byte v5, p0, v4

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    mul-long v5, v5, v2

    add-long/2addr v0, v5

    const-wide/16 v5, 0x100

    mul-long v2, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getHex([B)Ljava/lang/String;
    .locals 4

    .line 469
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 478
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 479
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    const/16 v3, 0x30

    .line 481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 483
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUid(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "android.nfc.extra.ID"

    .line 406
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    .line 407
    invoke-static {p0}, Lcn/highlight/work_card_write/util/NFC;->getHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readStatus(Landroid/nfc/tech/NfcA;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 351
    fill-array-data v0, :array_0

    .line 355
    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->connect()V

    .line 358
    :cond_0
    invoke-virtual {p0, v0}, Landroid/nfc/tech/NfcA;->transceive([B)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 359
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr p0, v0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0

    nop

    :array_0
    .array-data 1
        0x30t
        0x6t
    .end array-data
.end method

.method public static readUid(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0}, Lcn/highlight/work_card_write/util/NFC;->getUid(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static sendCmd(Landroid/nfc/tech/NfcA;[BI)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "NFC"

    const/4 v4, -0x1

    .line 248
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 249
    array-length v7, v1

    .line 250
    rem-int/lit8 v8, v7, 0x4

    const/4 v9, 0x1

    if-nez v8, :cond_0

    div-int/lit8 v8, v7, 0x4

    goto :goto_0

    :cond_0
    div-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v9

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_4

    const/4 v12, 0x6

    new-array v12, v12, [B

    const/16 v13, -0x5e

    aput-byte v13, v12, v10

    add-int/lit8 v13, v11, 0x7

    int-to-byte v13, v13

    aput-byte v13, v12, v9

    mul-int/lit8 v13, v11, 0x4

    .line 255
    aget-byte v14, v1, v13

    const/4 v15, 0x2

    aput-byte v14, v12, v15

    add-int/lit8 v14, v13, 0x2

    if-ge v7, v14, :cond_1

    const/4 v15, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v15, v13, 0x1

    .line 256
    aget-byte v15, v1, v15

    :goto_2
    const/16 v16, 0x3

    aput-byte v15, v12, v16

    add-int/lit8 v15, v13, 0x3

    if-ge v7, v15, :cond_2

    const/4 v14, 0x0

    goto :goto_3

    .line 257
    :cond_2
    aget-byte v14, v1, v14

    :goto_3
    const/16 v16, 0x4

    aput-byte v14, v12, v16

    const/4 v14, 0x5

    add-int/lit8 v13, v13, 0x4

    if-ge v7, v13, :cond_3

    const/4 v13, 0x0

    goto :goto_4

    .line 258
    :cond_3
    aget-byte v13, v1, v15

    :goto_4
    aput-byte v13, v12, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :try_start_1
    invoke-virtual {v0, v12}, Landroid/nfc/tech/NfcA;->transceive([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :catch_0
    const/4 v10, -0x1

    :cond_4
    if-ne v10, v4, :cond_5

    return v10

    .line 280
    :cond_5
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53d1\u9001\u6210\u529f"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x200

    .line 283
    invoke-static {v0, v1}, Lcn/highlight/work_card_write/util/NFC;->setStatus(Landroid/nfc/tech/NfcA;I)I

    move-result v0

    if-ne v0, v4, :cond_6

    return v4

    .line 286
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u9001\u8017\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v10

    goto :goto_5

    :catch_1
    move-exception v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "writeTag"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return v4
.end method

.method private static setStatus(Landroid/nfc/tech/NfcA;I)I
    .locals 4

    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x5e

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte v0, v1, v3

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v3, 0x2

    aput-byte v0, v1, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, v1, v0

    .line 380
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/nfc/tech/NfcA;->transceive([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static writeTag(Landroid/content/Intent;[[B)Z
    .locals 11

    const-string v0, "\u7b2c "

    .line 49
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const-string v1, "android.nfc.extra.TAG"

    .line 52
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/nfc/Tag;

    .line 53
    invoke-static {p0}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object p0

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 57
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->connect()V

    .line 58
    invoke-static {p0, v2}, Lcn/highlight/work_card_write/util/NFC;->setStatus(Landroid/nfc/tech/NfcA;I)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->close()V

    return v2

    .line 64
    :cond_0
    invoke-static {p0}, Lcn/highlight/work_card_write/util/NFC;->readStatus(Landroid/nfc/tech/NfcA;)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 68
    :cond_1
    :goto_0
    array-length v7, p1

    const/4 v8, 0x1

    if-ge v1, v7, :cond_5

    add-int/2addr v6, v8

    const-string v7, "l\u5faa\u73af"

    .line 70
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " \u6b21, \u6570\u7ec4data\u7684\u957f\u5ea6\u4e3a "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p1, v1

    array-length v10, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    aget-object v7, p1, v1

    invoke-static {p0, v7, v9}, Lcn/highlight/work_card_write/util/NFC;->sendCmd(Landroid/nfc/tech/NfcA;[BI)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "l\u5faa\u73af\u7ed3\u679c"

    if-nez v7, :cond_2

    .line 88
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u6b21\u64cd\u4f5c\u6210\u529f"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v9

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x5

    if-ne v6, v10, :cond_3

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u6b21\u64cd\u4f5c\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->close()V

    return v2

    .line 95
    :cond_3
    :goto_1
    array-length v8, p1

    if-lt v1, v8, :cond_4

    if-ne v7, v5, :cond_1

    :cond_4
    const-wide/16 v7, 0x3e8

    .line 97
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_5
    const-string p1, "NFC"

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fde\u63a5\u8017\u603b\u8017\u65f6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->close()V

    return v8

    .line 121
    :cond_6
    invoke-virtual {p0}, Landroid/nfc/tech/NfcA;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "writeTag"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return v2
.end method
