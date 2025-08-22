.class public Landroid/device/MaxqManager;
.super Ljava/lang/Object;
.source "MaxqManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/device/MaxqManager$PedInputListener;
    }
.end annotation


# static fields
.field public static final ALGORITHM_CBC:I = 0x2

.field public static final ALGORITHM_ECB:I = 0x1

.field public static final ECRC16_DATA:I = 0x6

.field public static final EENCRYPTKEYS_NOTDOWLOAD:I = 0x1a

.field public static final EHEAD_CMD:I = 0x5

.field public static final EKEYSNO_NOTFOUND:I = 0x14

.field public static final EKEYSNO_OVERRANGE:I = 0x15

.field public static final EKEYS_DOWNLOAD:I = 0x16

.field public static final EKEYS_EXISTS:I = 0x19

.field public static final EKEYS_NOTDOWNLOAD:I = 0x17

.field public static final EKEYS_OUTOFSPACE:I = 0x18

.field public static final EKEYS_RDORINIT:I = 0x12

.field public static final ELENGTH_CMD:I = 0x2

.field public static final EMSG_FORMAT:I = 0x9

.field public static final EMSG_MAC:I = 0x7

.field public static final ENOTSUP_ALGORITHM:I = 0xc

.field public static final ENOTSUP_CMD:I = 0x1

.field public static final ENOTSUP_FORMAT:I = 0xd

.field public static final ENOTSUP_KEYSLENGTH:I = 0x1c

.field public static final ENOTSUP_MODE:I = 0xe

.field public static final ENOTSUP_PINBLOCK_FORMAT:I = 0x28

.field public static final ENOTSUP_SEPUSE:I = 0x1b

.field public static final EPINBLOCK_CHAR:I = 0x2d

.field public static final ERESERVED_0X1D:I = 0x1d

.field public static final ESEPARATORLEN_CMD:I = 0x4

.field public static final ESEPARATOR_CMD:I = 0x3

.field public static final EUSERNAME_LENGTH:I = 0x29

.field public static final EUSERNAME_VALUE:I = 0x2a

.field public static final EUSER_PINBLOCK_LENGTH:I = 0x2b

.field public static final EUSER_PINBLOCK_VALUE:I = 0x2c

.field public static final S_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MaxManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPedInputListener(Landroid/device/MaxqManager$PedInputListener;)V
    .locals 1

    .line 528
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public calculateMAC(II[BI[B[B)I
    .locals 0

    .line 376
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearKey([B[B)I
    .locals 0

    .line 241
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()I
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decryptData(III[BII[BI[B[B)I
    .locals 0

    .line 352
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteKey(II[B[B)I
    .locals 0

    .line 294
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public downloadKey(III[BI[B[B)I
    .locals 0

    .line 272
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableSuspend(I[B[B)I
    .locals 0

    .line 494
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptData(III[BII[BI[B[B)I
    .locals 0

    .line 323
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encryptMagData(II[BI[B[B)I
    .locals 0

    .line 541
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endPinInputEvent(I)V
    .locals 1

    .line 405
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateRandomData([B[B)I
    .locals 0

    .line 481
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFirmwareVersion([B[B)I
    .locals 0

    .line 210
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlock(II[BILjava/lang/String;JLandroid/device/MaxqManager$PedInputListener;)I
    .locals 0

    .line 402
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlockEx(II[BILjava/lang/String;JLjava/lang/String;Landroid/device/MaxqManager$PedInputListener;)I
    .locals 0

    .line 430
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlockEx(Landroid/os/Bundle;Landroid/device/MaxqManager$PedInputListener;)I
    .locals 0

    .line 468
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPinBlockEx(Landroid/os/Bundle;Landroid/os/IInputActionListener;)I
    .locals 0

    .line 471
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRTC([B[B)I
    .locals 0

    .line 551
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStatus([B[B)I
    .locals 0

    .line 228
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadKey(III[BI[B[B)I
    .locals 0

    .line 537
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open()I
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePedInputListener(Landroid/device/MaxqManager$PedInputListener;)V
    .locals 1

    .line 532
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "stub"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndicatorLED(II)I
    .locals 0

    .line 544
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRTC(II[B[B)I
    .locals 0

    .line 548
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSuspendTimeout(I[B[B)I
    .locals 0

    .line 506
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "stub"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
