.class public Lcn/highlight/tx/app/CmdCenter;
.super Ljava/lang/Object;
.source "CmdCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/tx/app/CmdCenter$AntPower;
    }
.end annotation


# static fields
.field public static final CMD_getCabinetLockStatus:B = 0x11t

.field public static final CMD_getRFIDArea:B = 0x4t

.field public static final CMD_getRFIDConfig:B = 0x2t

.field public static final CMD_getRFIDStatus:B = 0x6t

.field public static final CMD_openMoreCabinet:B = 0x10t

.field public static final CMD_setCabinetSensor:B = 0x12t

.field public static final CMD_setRFIDArea:B = 0x3t

.field public static final CMD_setRFIDConfig:B = 0x1t

.field public static final CMD_startOrStopRFID:B = 0x5t

.field public static final CMD_upRFIDData:B = 0x7t


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitToByte(Ljava/lang/String;)B
    .locals 5

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    .line 415
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_0

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static byteToBit(B)Ljava/lang/String;
    .locals 3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    :goto_0
    if-ltz v1, :cond_0

    shr-int v2, p0, v1

    and-int/lit8 v2, v2, 0x1

    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteToInt(B)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    and-int/lit16 p0, p0, 0xff

    .line 391
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "%02x"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 7

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 473
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 474
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 475
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 476
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v4, " "

    .line 479
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToInt([BI)I
    .locals 1

    .line 458
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static charAtReverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 430
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCabinetLockStatus(II)[B
    .locals 4

    const/16 v0, 0x9

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, -0x45

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x6

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    const/4 p0, 0x7

    .line 294
    invoke-static {v0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result p1

    aput-byte p1, v0, p0

    const/16 p0, 0x8

    const/16 p1, 0x7e

    aput-byte p1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCheck([B)B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 363
    array-length v1, p0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    .line 364
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_0

    .line 365
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p0, v0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static getRFIDArea()[B
    .locals 4

    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, -0x45

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    aput-byte v2, v0, v3

    const/4 v1, 0x5

    .line 205
    invoke-static {v0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x7e

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRFIDConfig(I)[B
    .locals 4

    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, -0x45

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v3, 0x2

    aput-byte v3, v0, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x6

    .line 153
    invoke-static {v0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result v1

    aput-byte v1, v0, p0

    const/4 p0, 0x7

    const/16 v1, 0x7e

    aput-byte v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRFIDStatus()[B
    .locals 4

    const/4 v0, 0x7

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, -0x45

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 37
    invoke-static {v0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    aput-byte v1, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static intToBytes(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isValid([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 376
    array-length v1, p0

    const/4 v2, 0x7

    if-lt v1, v2, :cond_2

    aget-byte v1, p0, v0

    const/16 v2, -0x45

    if-ne v1, v2, :cond_2

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p0, v1

    const/16 v3, 0x7e

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {p0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result v1

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    aget-byte p0, p0, v3

    if-eq v1, p0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public static openMoreCabinet(ILjava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 250
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v3, v1, 0x7

    .line 253
    new-array v3, v3, [B

    const/16 v4, -0x45

    const/4 v5, 0x0

    .line 254
    aput-byte v4, v3, v5

    const/4 v4, 0x1

    .line 255
    aput-byte v5, v3, v4

    const/16 v6, 0x10

    .line 256
    aput-byte v6, v3, v2

    const/4 v2, 0x3

    .line 257
    aput-byte v5, v3, v2

    const/4 v2, 0x4

    int-to-byte v1, v1

    .line 258
    aput-byte v1, v3, v2

    const/4 v1, 0x5

    int-to-byte p0, p0

    .line 259
    aput-byte p0, v3, v1

    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    int-to-byte p0, p0

    const/4 v1, 0x6

    aput-byte p0, v3, v1

    .line 262
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v5, p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 264
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-byte p0, p0

    .line 265
    aput-byte p0, v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v4

    .line 268
    invoke-static {v3}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result p0

    aput-byte p0, v3, v1

    add-int/2addr v1, v4

    const/16 p0, 0x7e

    .line 270
    aput-byte p0, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static setCabinetSensor(IIZZZ)[B
    .locals 6

    const/16 v0, 0xa

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, -0x45

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/16 v3, 0x12

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v5, 0x4

    aput-byte v3, v0, v5

    const/4 v5, 0x5

    int-to-byte p0, p0

    aput-byte p0, v0, v5

    const/4 p0, 0x6

    int-to-byte p1, p1

    aput-byte p1, v0, p0

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p1, 0x1

    :goto_0
    const/16 v5, 0x8

    if-gt p1, v5, :cond_6

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_0

    .line 326
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 328
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-ne v4, p1, :cond_3

    if-eqz p3, :cond_2

    .line 332
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 334
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-ne v3, p1, :cond_5

    if-eqz p4, :cond_4

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 340
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    .line 346
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/highlight/tx/app/CmdCenter;->charAtReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/highlight/tx/app/CmdCenter;->bitToByte(Ljava/lang/String;)B

    move-result p0

    aput-byte p0, v0, p1

    .line 347
    invoke-static {v0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result p0

    aput-byte p0, v0, v5

    const/16 p0, 0x9

    const/16 p1, 0x7e

    aput-byte p1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 351
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setRFIDArea(I)[B
    .locals 5

    const/16 v0, 0x9

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, -0x45

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    aput-byte v2, v0, v3

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/4 v1, 0x6

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    const/4 p0, 0x7

    .line 182
    invoke-static {v0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result v1

    aput-byte v1, v0, p0

    const/16 p0, 0x8

    const/16 v1, 0x7e

    aput-byte v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setRfIdAnt(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 54
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    const/4 v3, 0x1

    move-object v4, v2

    const/4 v2, 0x1

    :goto_0
    const/16 v5, 0x20

    const/4 v6, 0x0

    if-gt v2, v5, :cond_3

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 61
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_1
    rem-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_2

    .line 64
    invoke-static {v4}, Lcn/highlight/tx/app/CmdCenter;->charAtReverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/highlight/tx/app/CmdCenter;->bitToByte(Ljava/lang/String;)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0xd

    new-array p0, p0, [B

    const/16 v2, -0x45

    aput-byte v2, p0, v6

    aput-byte v6, p0, v3

    const/4 v2, 0x2

    aput-byte v3, p0, v2

    const/4 v4, 0x3

    aput-byte v6, p0, v4

    const/4 v5, 0x4

    const/4 v7, 0x6

    aput-byte v7, p0, v5

    const/4 v5, 0x5

    aput-byte v3, p0, v5

    aput-byte v2, p0, v7

    const/4 v5, 0x7

    .line 76
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, p0, v5

    .line 77
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const/16 v5, 0x8

    aput-byte v3, p0, v5

    const/16 v3, 0x9

    .line 78
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, p0, v3

    const/16 v2, 0xa

    .line 79
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p0, v2

    const/16 v1, 0xb

    .line 80
    invoke-static {p0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result v2

    aput-byte v2, p0, v1

    const/16 v1, 0xc

    const/16 v2, 0x7e

    aput-byte v2, p0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public static setRfIdPower(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/tx/app/CmdCenter$AntPower;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 97
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    mul-int/lit8 v1, v1, 0x5

    const/4 v3, 0x2

    add-int/2addr v1, v3

    add-int/lit8 v4, v1, 0x7

    .line 100
    new-array v4, v4, [B

    const/16 v5, -0x45

    const/4 v6, 0x0

    .line 101
    aput-byte v5, v4, v6

    const/4 v5, 0x1

    .line 102
    aput-byte v6, v4, v5

    .line 103
    aput-byte v5, v4, v3

    const/4 v3, 0x3

    .line 104
    aput-byte v6, v4, v3

    const/4 v7, 0x4

    int-to-byte v1, v1

    .line 105
    aput-byte v1, v4, v7

    .line 106
    aput-byte v5, v4, v2

    const/4 v1, 0x6

    .line 107
    aput-byte v3, v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 109
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 111
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/highlight/tx/app/CmdCenter$AntPower;

    .line 112
    invoke-virtual {v3}, Lcn/highlight/tx/app/CmdCenter$AntPower;->getAnt()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    .line 113
    invoke-virtual {v3}, Lcn/highlight/tx/app/CmdCenter$AntPower;->getPower()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Lcn/highlight/tx/app/CmdCenter;->intToBytes(I)[B

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 115
    aget-byte v7, v3, v6

    aput-byte v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 117
    aget-byte v7, v3, v5

    aput-byte v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 119
    aget-byte v7, v3, v6

    aput-byte v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    .line 121
    aget-byte v3, v3, v5

    aput-byte v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v5

    .line 124
    invoke-static {v4}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result p0

    aput-byte p0, v4, v2

    add-int/2addr v2, v5

    const/16 p0, 0x7e

    .line 126
    aput-byte p0, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static startOrStopRFID(I)[B
    .locals 5

    const/16 v0, 0x8

    :try_start_0
    new-array v0, v0, [B

    const/16 v1, -0x45

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v4

    const/4 p0, 0x6

    .line 231
    invoke-static {v0}, Lcn/highlight/tx/app/CmdCenter;->getCheck([B)B

    move-result v1

    aput-byte v1, v0, p0

    const/4 p0, 0x7

    const/16 v1, 0x7e

    aput-byte v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
