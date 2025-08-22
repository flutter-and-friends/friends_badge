.class public final enum Lcom/uhf/api/cls/Reader$Module_Type;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Module_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$Module_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM3100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM3200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM3300:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM3400:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM3500:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM3600:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM5100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM5200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM5300:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM5400:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM5500:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM5600:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM7100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM7200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM7300:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM7400:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SIM7500:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

.field public static final enum MODOULE_SLR6100:Lcom/uhf/api/cls/Reader$Module_Type;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 41
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v1, 0x0

    const-string v2, "MODOULE_NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 42
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v2, 0x1

    const-string v3, "MODOULE_R902_M1S"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 43
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v3, 0x2

    const-string v4, "MODOULE_R902_M2S"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 44
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v4, 0x3

    const-string v5, "MODOULE_M5E"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 45
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v5, 0x4

    const-string v6, "MODOULE_M5E_C"

    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 46
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v6, 0x5

    const-string v7, "MODOULE_M6E"

    invoke-direct {v0, v7, v6, v6}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 47
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v7, 0x6

    const-string v8, "MODOULE_PR9000"

    invoke-direct {v0, v8, v7, v7}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 48
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v8, 0x7

    const-string v9, "MODOULE_M5E_PRC"

    invoke-direct {v0, v9, v8, v8}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 49
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v9, 0x8

    const-string v10, "MODOULE_M6E_PRC"

    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 50
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v10, 0x9

    const-string v11, "MODOULE_M6E_MICRO"

    invoke-direct {v0, v11, v10, v10}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 51
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v11, 0xa

    const-string v12, "MODOULE_SLR1100"

    invoke-direct {v0, v12, v11, v11}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 52
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v12, 0xb

    const-string v13, "MODOULE_SLR1200"

    invoke-direct {v0, v13, v12, v12}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 53
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v13, 0xc

    const-string v14, "MODOULE_SLR1300"

    invoke-direct {v0, v14, v13, v13}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 54
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v14, 0xd

    const-string v15, "MODOULE_SLR3000"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 55
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v15, 0xe

    const-string v14, "MODOULE_SLR5100"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 56
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v14, "MODOULE_SLR5200"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 57
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SLR3100"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 58
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SLR3200"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 59
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SLR5300"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 60
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SLR5900"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 61
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SLR5800"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 62
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SLR6000"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 63
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SLR6100"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 64
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM7100"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 65
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM7200"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 66
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM7300"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7300:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 67
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM7400"

    const/16 v14, 0x1a

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7400:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 68
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM7500"

    const/16 v14, 0x1b

    const/16 v15, 0x1b

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7500:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 69
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM3100"

    const/16 v14, 0x1c

    const/16 v15, 0x1c

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 70
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM3200"

    const/16 v14, 0x1d

    const/16 v15, 0x1d

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 71
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM3300"

    const/16 v14, 0x1e

    const/16 v15, 0x1e

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3300:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 72
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM3400"

    const/16 v14, 0x1f

    const/16 v15, 0x1f

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3400:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 73
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM3500"

    const/16 v14, 0x20

    const/16 v15, 0x20

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3500:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 74
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM3600"

    const/16 v14, 0x21

    const/16 v15, 0x21

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3600:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 75
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM5100"

    const/16 v14, 0x22

    const/16 v15, 0x22

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5100:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 76
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM5200"

    const/16 v14, 0x23

    const/16 v15, 0x23

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5200:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 77
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM5300"

    const/16 v14, 0x24

    const/16 v15, 0x24

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5300:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 78
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM5400"

    const/16 v14, 0x25

    const/16 v15, 0x25

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5400:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 79
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM5500"

    const/16 v14, 0x26

    const/16 v15, 0x26

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5500:Lcom/uhf/api/cls/Reader$Module_Type;

    .line 80
    new-instance v0, Lcom/uhf/api/cls/Reader$Module_Type;

    const-string v13, "MODOULE_SIM5600"

    const/16 v14, 0x27

    const/16 v15, 0x27

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$Module_Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5600:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$Module_Type;

    .line 40
    sget-object v13, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v13, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

    aput-object v1, v0, v12

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7200:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7300:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7400:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7500:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3200:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3300:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3400:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3500:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3600:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5100:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5200:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5300:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5400:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5500:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5600:Lcom/uhf/api/cls/Reader$Module_Type;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sput-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->$VALUES:[Lcom/uhf/api/cls/Reader$Module_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/uhf/api/cls/Reader$Module_Type;->value:I

    .line 84
    iput p3, p0, Lcom/uhf/api/cls/Reader$Module_Type;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$Module_Type;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :pswitch_0
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5600:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 166
    :pswitch_1
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5500:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 164
    :pswitch_2
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5400:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 162
    :pswitch_3
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5300:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 160
    :pswitch_4
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 158
    :pswitch_5
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM5100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 156
    :pswitch_6
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3600:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 154
    :pswitch_7
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3500:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 152
    :pswitch_8
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3400:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 150
    :pswitch_9
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3300:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 148
    :pswitch_a
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 146
    :pswitch_b
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM3100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 144
    :pswitch_c
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7500:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 142
    :pswitch_d
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7400:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 140
    :pswitch_e
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7300:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 138
    :pswitch_f
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 136
    :pswitch_10
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SIM7100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 134
    :pswitch_11
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 132
    :pswitch_12
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR6000:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 130
    :pswitch_13
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5800:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 128
    :pswitch_14
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5900:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 126
    :pswitch_15
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5300:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 124
    :pswitch_16
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 122
    :pswitch_17
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 120
    :pswitch_18
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 118
    :pswitch_19
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR5100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 116
    :pswitch_1a
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR3000:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 114
    :pswitch_1b
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1300:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 112
    :pswitch_1c
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1200:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 110
    :pswitch_1d
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_SLR1100:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 108
    :pswitch_1e
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_MICRO:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 106
    :pswitch_1f
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 104
    :pswitch_20
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_PRC:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 102
    :pswitch_21
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_PR9000:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 100
    :pswitch_22
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M6E:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 98
    :pswitch_23
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E_C:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 96
    :pswitch_24
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_M5E:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 94
    :pswitch_25
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M2S:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 92
    :pswitch_26
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_R902_M1S:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    .line 90
    :pswitch_27
    sget-object p0, Lcom/uhf/api/cls/Reader$Module_Type;->MODOULE_NONE:Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$Module_Type;
    .locals 1

    .line 40
    const-class v0, Lcom/uhf/api/cls/Reader$Module_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$Module_Type;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$Module_Type;
    .locals 1

    .line 40
    sget-object v0, Lcom/uhf/api/cls/Reader$Module_Type;->$VALUES:[Lcom/uhf/api/cls/Reader$Module_Type;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/Reader$Module_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/Reader$Module_Type;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 175
    iget v0, p0, Lcom/uhf/api/cls/Reader$Module_Type;->value:I

    return v0
.end method
