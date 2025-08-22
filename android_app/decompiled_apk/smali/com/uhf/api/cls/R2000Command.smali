.class public Lcom/uhf/api/cls/R2000Command;
.super Ljava/lang/Object;
.source "R2000Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uhf/api/cls/R2000Command$R2000CmdCode;,
        Lcom/uhf/api/cls/R2000Command$R2000CmdSatus;
    }
.end annotation


# static fields
.field private static crcTable:[I = null

.field public static fis:Ljava/io/FileInputStream; = null

.field public static final headerCode:B = -0x1t

.field public static is:Ljava/io/InputStream;

.field public static os:Ljava/io/OutputStream;


# instance fields
.field public fos:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 154
    fill-array-data v0, :array_0

    sput-object v0, Lcom/uhf/api/cls/R2000Command;->crcTable:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1021
        0x2042
        0x3063
        0x4084
        0x50a5
        0x60c6
        0x70e7
        0x8108
        0x9129
        0xa14a
        0xb16b
        0xc18c
        0xd1ad
        0xe1ce
        0xf1ef
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 296
    invoke-virtual {p0}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->Value()I

    move-result p0

    int-to-byte p0, p0

    const/4 v3, 0x2

    aput-byte p0, v0, v3

    .line 297
    aget-byte p0, v0, v2

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p0, v3

    invoke-static {v0, v2, p0}, Lcom/uhf/api/cls/R2000Command;->calcCRC([BII)[B

    move-result-object p0

    .line 298
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v1, p0, v1

    aput-byte v1, v0, v4

    .line 299
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-byte p0, p0, v2

    aput-byte p0, v0, v1

    .line 303
    invoke-static {v0}, Lcom/uhf/api/cls/R2000Command;->SendAndRecvSlMsg([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 311
    aput-byte v2, v0, v1

    .line 312
    array-length v2, p1

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 313
    invoke-virtual {p0}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->Value()I

    move-result p0

    int-to-byte p0, p0

    const/4 v2, 0x2

    aput-byte p0, v0, v2

    const/4 p0, 0x0

    .line 314
    :goto_0
    array-length v4, p1

    if-ge p0, v4, :cond_0

    add-int/lit8 v4, p0, 0x3

    .line 316
    aget-byte v5, p1, p0

    aput-byte v5, v0, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    aget-byte p0, v0, v3

    and-int/lit16 p0, p0, 0xff

    add-int/2addr p0, v2

    invoke-static {v0, v3, p0}, Lcom/uhf/api/cls/R2000Command;->calcCRC([BII)[B

    move-result-object p0

    .line 319
    array-length p1, v0

    sub-int/2addr p1, v2

    aget-byte v1, p0, v1

    aput-byte v1, v0, p1

    .line 320
    array-length p1, v0

    sub-int/2addr p1, v3

    aget-byte p0, p0, v3

    aput-byte p0, v0, p1

    .line 323
    invoke-static {v0}, Lcom/uhf/api/cls/R2000Command;->SendAndRecvSlMsg([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static Get_Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)[B
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 121
    invoke-static {p0}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->access$000(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)I

    move-result p0

    int-to-byte p0, p0

    const/4 v3, 0x2

    aput-byte p0, v0, v3

    .line 122
    aget-byte p0, v0, v2

    add-int/lit8 p0, p0, 0x4

    invoke-static {v0, v2, p0}, Lcom/uhf/api/cls/R2000Command;->calcCRC([BII)[B

    move-result-object p0

    .line 123
    array-length v4, v0

    sub-int/2addr v4, v3

    aget-byte v1, p0, v1

    aput-byte v1, v0, v4

    .line 124
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-byte p0, p0, v2

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static Get_Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;[B)[B
    .locals 6

    .line 131
    array-length v0, p1

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 132
    aput-byte v2, v0, v1

    .line 133
    array-length v2, p1

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    .line 134
    invoke-static {p0}, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->access$000(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)I

    move-result p0

    int-to-byte p0, p0

    const/4 v2, 0x2

    aput-byte p0, v0, v2

    const/4 p0, 0x0

    .line 135
    :goto_0
    array-length v4, p1

    if-ge p0, v4, :cond_0

    add-int/lit8 v4, p0, 0x3

    .line 137
    aget-byte v5, p1, p0

    aput-byte v5, v0, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    aget-byte p0, v0, v3

    add-int/lit8 p0, p0, 0x4

    invoke-static {v0, v3, p0}, Lcom/uhf/api/cls/R2000Command;->calcCRC([BII)[B

    move-result-object p0

    .line 140
    array-length p1, v0

    sub-int/2addr p1, v2

    aget-byte v1, p0, v1

    aput-byte v1, v0, p1

    .line 141
    array-length p1, v0

    sub-int/2addr p1, v3

    aget-byte p0, p0, v3

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private static SendAndRecvSlMsg([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/uhf/api/cls/R2000Command;->os:Ljava/io/OutputStream;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    const/4 v0, 0x2

    .line 287
    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/uhf/api/cls/R2000Command;->getResp(B)[B

    move-result-object p0

    return-object p0
.end method

.method public static Updatebyserial(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 332
    fill-array-data v1, :array_0

    .line 333
    invoke-static {v1}, Lcom/uhf/api/cls/R2000Command;->SendAndRecvSlMsg([B)[B

    move-result-object v1

    const/4 v2, 0x3

    .line 334
    aget-byte v3, v1, v2

    const/4 v4, 0x4

    aget-byte v5, v1, v4

    add-int/2addr v3, v5

    if-nez v3, :cond_8

    const v2, 0x10a000

    const/16 v3, 0x9

    .line 338
    aget-byte v1, v1, v3

    const/16 v3, 0xff

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/16 v5, 0x18

    if-eq v1, v5, :cond_1

    const/16 v5, 0x19

    if-eq v1, v5, :cond_1

    const/16 v5, 0x20

    if-eq v1, v5, :cond_1

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const v2, 0x8003000

    goto :goto_0

    :pswitch_1
    const v2, 0x104000

    goto :goto_0

    :cond_0
    :pswitch_2
    const v2, 0x8008000

    .line 380
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/uhf/api/cls/R2000Command;->fis:Ljava/io/FileInputStream;

    .line 382
    new-instance v1, Lcom/uhf/api/cls/R2000DataCmdReturn;

    invoke-direct {v1}, Lcom/uhf/api/cls/R2000DataCmdReturn;-><init>()V

    .line 388
    :try_start_0
    sget-object v5, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->ReadyWriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    invoke-static {v5}, Lcom/uhf/api/cls/R2000Command;->Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/uhf/api/cls/R2000DataCmdReturn;->GetData([B)V

    const-wide/16 v5, 0x1f4

    .line 389
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/16 v5, 0x3e8

    .line 394
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 395
    sget-object v5, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->ReadyWriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    invoke-static {v5}, Lcom/uhf/api/cls/R2000Command;->Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/uhf/api/cls/R2000DataCmdReturn;->GetData([B)V

    :goto_1
    move v5, p0

    move v6, v2

    :goto_2
    const/4 v7, 0x0

    if-lez v5, :cond_5

    const/16 v8, 0x80

    :try_start_1
    new-array v9, v8, [B

    if-lt v5, v8, :cond_2

    .line 410
    sget-object v10, Lcom/uhf/api/cls/R2000Command;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v10, v9, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    if-ne v5, v8, :cond_3

    :goto_3
    const/16 v7, 0xff

    goto :goto_4

    .line 418
    :cond_2
    sget-object v8, Lcom/uhf/api/cls/R2000Command;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v8, v9, v7, v5}, Ljava/io/FileInputStream;->read([BII)I

    .line 419
    array-length v7, v9

    rem-int/2addr v7, v4

    if-nez v7, :cond_4

    move v8, v5

    goto :goto_3

    .line 426
    :cond_3
    :goto_4
    new-instance v10, Lcom/uhf/api/cls/R2000WriteFlashSendData;

    invoke-direct {v10, v7, v6, v9}, Lcom/uhf/api/cls/R2000WriteFlashSendData;-><init>(II[B)V

    .line 428
    sget-object v7, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->WriteFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    invoke-virtual {v10}, Lcom/uhf/api/cls/R2000WriteFlashSendData;->To_CmdData()[B

    move-result-object v9

    invoke-static {v7, v9}, Lcom/uhf/api/cls/R2000Command;->Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;[B)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/uhf/api/cls/R2000DataCmdReturn;->GetData([B)V

    sub-int/2addr v5, v8

    add-int/2addr v6, v8

    goto :goto_2

    .line 420
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\ufffd\ufffd\ufffd\ufffd\ufffd\u013c\ufffd\ufffd\ufffd\ufffd\u0234\ufffd\ufffd\ufffd"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 436
    throw p0

    .line 438
    :cond_5
    sget-object v3, Lcom/uhf/api/cls/R2000Command;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 440
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sput-object v3, Lcom/uhf/api/cls/R2000Command;->fis:Ljava/io/FileInputStream;

    .line 442
    new-array v0, p0, [B

    .line 443
    sget-object v3, Lcom/uhf/api/cls/R2000Command;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v3, v0, v7, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-eq v3, p0, :cond_7

    .line 446
    sget-object v3, Lcom/uhf/api/cls/R2000Command;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v3, v0, v7, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ne v3, p0, :cond_6

    goto :goto_5

    .line 448
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\u013c\ufffd\u02a7\ufffd\ufffd"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 450
    :cond_7
    :goto_5
    new-instance p0, Lcom/uhf/api/cls/R2000CheckFlashSendData;

    invoke-direct {p0, v2, v0}, Lcom/uhf/api/cls/R2000CheckFlashSendData;-><init>(I[B)V

    .line 451
    sget-object v0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CheckFlash:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    invoke-virtual {p0}, Lcom/uhf/api/cls/R2000CheckFlashSendData;->To_CmdData()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uhf/api/cls/R2000Command;->Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;[B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/uhf/api/cls/R2000DataCmdReturn;->GetData([B)V

    .line 458
    sget-object p0, Lcom/uhf/api/cls/R2000Command$R2000CmdCode;->CarrytoProgram:Lcom/uhf/api/cls/R2000Command$R2000CmdCode;

    invoke-static {p0}, Lcom/uhf/api/cls/R2000Command;->Build_ToOp_Cmds(Lcom/uhf/api/cls/R2000Command$R2000CmdCode;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/uhf/api/cls/R2000DataCmdReturn;->GetData([B)V

    return-void

    .line 335
    :cond_8
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    aget-byte v1, v1, v4

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x3t
        0x1dt
        0xct
    .end array-data
.end method

.method public static calcCRC([BII)[B
    .locals 7

    const v0, 0xffff

    move v1, p1

    const v2, 0xffff

    :goto_0
    add-int v3, p1, p2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    shl-int/lit8 v3, v2, 0x4

    .line 163
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    sget-object v5, Lcom/uhf/api/cls/R2000Command;->crcTable:[I

    shr-int/lit8 v2, v2, 0xc

    aget v2, v5, v2

    xor-int/2addr v2, v3

    and-int/2addr v2, v0

    shl-int/lit8 v3, v2, 0x4

    .line 166
    aget-byte v6, p0, v1

    shr-int/lit8 v4, v6, 0x0

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    shr-int/lit8 v2, v2, 0xc

    aget v2, v5, v2

    xor-int/2addr v2, v3

    and-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-short p0, v2

    const/4 p1, 0x2

    new-array p1, p1, [B

    const p2, 0xff00

    and-int/2addr p2, p0

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    aput-byte p2, p1, v4

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 p2, 0x1

    aput-byte p0, p1, p2

    return-object p1
.end method

.method public static getResp(B)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 184
    :cond_0
    sget-object v3, Lcom/uhf/api/cls/R2000Command;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    const/16 v4, 0xfa

    const-wide/16 v5, 0x14

    const/4 v7, 0x1

    if-ge v3, v7, :cond_1

    .line 185
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr v2, v7

    if-lt v2, v4, :cond_0

    .line 191
    :cond_1
    sget-object v2, Lcom/uhf/api/cls/R2000Command;->is:Ljava/io/InputStream;

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 194
    sget-object v8, Lcom/uhf/api/cls/R2000Command;->is:Ljava/io/InputStream;

    add-int v9, v1, v2

    rsub-int/lit8 v2, v2, 0x5

    invoke-virtual {v8, v0, v9, v2}, Ljava/io/InputStream;->read([BII)I

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v8, 0x3

    const/4 v9, -0x1

    if-ge v2, v8, :cond_4

    .line 199
    aget-byte v8, v0, v2

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 203
    :goto_1
    aget-byte v8, v0, v1

    const-wide/16 v10, 0x5dc

    if-ne v8, v9, :cond_e

    add-int/lit8 v8, v2, 0x2

    .line 208
    aget-byte v9, v0, v8

    if-ne v9, p0, :cond_d

    const/4 p0, 0x0

    .line 217
    :cond_5
    sget-object v9, Lcom/uhf/api/cls/R2000Command;->is:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v9

    if-ge v9, v7, :cond_6

    .line 218
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    add-int/2addr p0, v7

    if-lt p0, v4, :cond_5

    .line 226
    :cond_6
    aget-byte p0, v0, v8

    const/4 v4, 0x2

    if-ne p0, v4, :cond_8

    const/4 p0, 0x0

    const/4 v5, 0x0

    :cond_7
    add-int/lit8 v6, v2, 0x1

    .line 232
    aget-byte v8, v0, v6

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v4

    if-ge p0, v8, :cond_a

    .line 233
    sget-object v8, Lcom/uhf/api/cls/R2000Command;->is:Ljava/io/InputStream;

    add-int v9, v3, p0

    aget-byte v6, v0, v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v4

    sub-int/2addr v6, p0

    invoke-virtual {v8, v0, v9, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr p0, v6

    add-int/2addr v5, v7

    if-lt v5, v3, :cond_7

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    const/4 v5, 0x0

    :cond_9
    add-int/lit8 v6, v2, 0x1

    .line 245
    aget-byte v8, v0, v6

    add-int/2addr v8, v4

    if-ge p0, v8, :cond_a

    .line 246
    sget-object v8, Lcom/uhf/api/cls/R2000Command;->is:Ljava/io/InputStream;

    add-int v9, v3, p0

    aget-byte v6, v0, v6

    add-int/2addr v6, v4

    sub-int/2addr v6, p0

    invoke-virtual {v8, v0, v9, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    add-int/2addr p0, v6

    add-int/2addr v5, v7

    if-lt v5, v3, :cond_9

    :cond_a
    :goto_2
    add-int/lit8 p0, v2, 0x1

    .line 254
    aget-byte p0, v0, p0

    add-int/lit8 p0, p0, 0x7

    new-array p0, p0, [B

    .line 255
    array-length v3, p0

    invoke-static {v0, v2, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v0, p0

    sub-int/2addr v0, v4

    new-array v0, v0, [B

    .line 259
    array-length v2, v0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    aget-byte v2, v0, v7

    add-int/lit8 v2, v2, 0x4

    invoke-static {v0, v7, v2}, Lcom/uhf/api/cls/R2000Command;->calcCRC([BII)[B

    move-result-object v0

    .line 262
    array-length v2, p0

    sub-int/2addr v2, v4

    aget-byte v2, p0, v2

    aget-byte v1, v0, v1

    if-ne v2, v1, :cond_c

    array-length v1, p0

    sub-int/2addr v1, v7

    aget-byte v1, p0, v1

    aget-byte v0, v0, v7

    if-ne v1, v0, :cond_c

    .line 274
    new-instance v0, Lcom/uhf/api/cls/R2000Command;

    invoke-direct {v0}, Lcom/uhf/api/cls/R2000Command;-><init>()V

    invoke-virtual {v0, p0}, Lcom/uhf/api/cls/R2000Command;->getError([B)I

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    .line 276
    :cond_b
    new-instance p0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 265
    :cond_c
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 271
    :goto_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "MSG_CRC_ERROR"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 210
    :cond_d
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 211
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "opcode_err"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
    :cond_e
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 206
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "interal_Msg_Format_err"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getError([B)I
    .locals 2

    const/4 v0, 0x3

    .line 147
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    .line 148
    aget-byte v1, p1, v1

    const/4 v1, 0x2

    aget-byte p1, p1, v1

    return v0
.end method
