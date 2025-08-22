.class public Lcom/seuic/uhf/UHFService;
.super Ljava/lang/Object;
.source "UHFService.java"

# interfaces
.implements Lcom/seuic/uhf/IUHFDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seuic/uhf/UHFService$Switch;,
        Lcom/seuic/uhf/UHFService$Speed;,
        Lcom/seuic/uhf/UHFService$Target;,
        Lcom/seuic/uhf/UHFService$Session;,
        Lcom/seuic/uhf/UHFService$Profile;
    }
.end annotation


# static fields
.field private static final ACTION_UHF_SERVICE_TERMINATE:Ljava/lang/String; = "com.android.uhf.TERMINATE"

.field public static final PARAMETER_ALGORITHM_MAXQVALUE:I = 0xb

.field public static final PARAMETER_ALGORITHM_MINQVALUE:I = 0xa

.field public static final PARAMETER_ALGORITHM_RETRYCOUNT:I = 0xc

.field public static final PARAMETER_ALGORITHM_STARTQVALUE:I = 0x9

.field public static final PARAMETER_ALGORITHM_THRESHOLDMULTIPLIER:I = 0xe

.field public static final PARAMETER_ALGORITHM_TOGGLETARGET:I = 0xd

.field public static final PARAMETER_ANTENNAMODE:I = 0x4

.field public static final PARAMETER_CLEAR_EPCLIST:I = 0x8

.field public static final PARAMETER_CLEAR_EPCLIST_WHEN_START_INVENTORY:I = 0x6

.field public static final PARAMETER_CW:I = 0x12

.field public static final PARAMETER_EXTENSIONS_FASTID:I = 0x5

.field public static final PARAMETER_EXTENSIONS_TAGFOCUS:I = 0xf

.field public static final PARAMETER_FREQUENCY:I = 0x13

.field public static final PARAMETER_HIDE_PC:I = 0x7

.field public static final PARAMETER_INVENTORY_SESSION:I = 0x1

.field public static final PARAMETER_INVENTORY_SESSION_TARGET:I = 0x2

.field public static final PARAMETER_INVENTORY_SPEED:I = 0x3

.field public static final PARAMETER_LINK_PROFILE:I = 0x0

.field public static final PARAMETER_PROTOCOL:I = 0x15

.field public static final PARAMETER_RANDOM:I = 0x14

.field public static final PARAMETER_SOUND:I = 0x10

.field public static final PARAMETER_TAG_EMBEDEDDATA:I = 0x1e

.field public static final PARAMETER_TAG_FILTER:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "UHFService"

.field private static uhfService:Lcom/seuic/uhf/UHFService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/seuic/uhf/UHFService;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/seuic/uhf/UHFService;
    .locals 1

    .line 72
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()Z
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public IOControl(I[BI[BII)Z
    .locals 0

    .line 185
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blockEraseTagData([B[BIII)Z
    .locals 0

    .line 195
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blockWriteTagData([B[BIII[B)Z
    .locals 0

    .line 190
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPower()I
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTagIDCount()I
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTagIDs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/seuic/uhf/EPC;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inventoryOnce(Lcom/seuic/uhf/EPC;I)Z
    .locals 0

    .line 105
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inventorySelectStart([BII)Z
    .locals 0

    .line 175
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inventoryStart()Z
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inventoryStop()Z
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isopen()Z
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public killTag([B[B)Z
    .locals 0

    .line 200
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lockTag([B[BI)Z
    .locals 0

    .line 170
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open()Z
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTagData([B[BIII[B)Z
    .locals 0

    .line 160
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readTagLED([B[BI)Z
    .locals 0

    .line 210
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readTagTemperature([B[BI)D
    .locals 0

    .line 215
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerReadTags(Lcom/seuic/uhf/IReadTagsListener;)V
    .locals 1

    .line 220
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParamBytes(I[B)Z
    .locals 0

    .line 205
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParameters(II)Z
    .locals 0

    .line 180
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPower(I)Z
    .locals 1

    .line 145
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRegion(Ljava/lang/String;)Z
    .locals 1

    .line 155
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterReadTags(Lcom/seuic/uhf/IReadTagsListener;)V
    .locals 1

    .line 225
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeTagData([B[BIII[B)Z
    .locals 0

    .line 165
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
