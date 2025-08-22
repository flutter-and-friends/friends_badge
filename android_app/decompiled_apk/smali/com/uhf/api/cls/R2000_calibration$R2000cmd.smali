.class public final enum Lcom/uhf/api/cls/R2000_calibration$R2000cmd;
.super Ljava/lang/Enum;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "R2000cmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/R2000_calibration$R2000cmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum DCOFFSETCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum ENGTEST:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum GROSSGAINSCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum OEMformat:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum OEMread:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum OEMwrite:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum PABIASCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum Regop:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum ReturnLossTest:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum S2TA:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum SetTestFre:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum carrier:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum readMAC:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

.field public static final enum writeMAC:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 84
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v1, 0x0

    const-string v2, "OEMformat"

    const v3, 0xaa2a

    invoke-direct {v0, v2, v1, v3}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->OEMformat:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 85
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v2, 0x1

    const-string v3, "OEMwrite"

    const v4, 0xaa02

    invoke-direct {v0, v3, v2, v4}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->OEMwrite:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 86
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v3, 0x2

    const-string v4, "OEMread"

    const v5, 0xaa03

    invoke-direct {v0, v4, v3, v5}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->OEMread:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 87
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v4, 0x3

    const-string v5, "ENGTEST"

    const v6, 0xaa04

    invoke-direct {v0, v5, v4, v6}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->ENGTEST:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 88
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v5, 0x4

    const-string v6, "GROSSGAINSCAL"

    const v7, 0xaa1b

    invoke-direct {v0, v6, v5, v7}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->GROSSGAINSCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 89
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v6, 0x5

    const-string v7, "DCOFFSETCAL"

    const v8, 0xaa24

    invoke-direct {v0, v7, v6, v8}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->DCOFFSETCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 90
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v7, 0x6

    const-string v8, "SetTestFre"

    const v9, 0xaa27

    invoke-direct {v0, v8, v7, v9}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->SetTestFre:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 91
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/4 v8, 0x7

    const-string v9, "PABIASCAL"

    const v10, 0xaa2c

    invoke-direct {v0, v9, v8, v10}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->PABIASCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 92
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v9, 0x8

    const-string v10, "writeMAC"

    const v11, 0xaa2e

    invoke-direct {v0, v10, v9, v11}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->writeMAC:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 93
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v10, 0x9

    const-string v11, "readMAC"

    const v12, 0xaa2f

    invoke-direct {v0, v11, v10, v12}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->readMAC:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 94
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v11, 0xa

    const-string v12, "carrier"

    const v13, 0xaa31

    invoke-direct {v0, v12, v11, v13}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->carrier:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 95
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v12, 0xb

    const-string v13, "ReturnLossTest"

    const v14, 0xaa4a

    invoke-direct {v0, v13, v12, v14}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->ReturnLossTest:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 96
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v13, 0xc

    const-string v14, "Regop"

    const v15, 0xaa4b

    invoke-direct {v0, v14, v13, v15}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->Regop:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 97
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v14, 0xd

    const-string v15, "S2TA"

    const v13, 0xaa4d

    invoke-direct {v0, v15, v14, v13}, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->S2TA:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    .line 82
    sget-object v13, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->OEMformat:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v13, v0, v1

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->OEMwrite:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->OEMread:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->ENGTEST:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->GROSSGAINSCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->DCOFFSETCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->SetTestFre:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->PABIASCAL:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->writeMAC:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->readMAC:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v10

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->carrier:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v11

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->ReturnLossTest:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v12

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->Regop:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->S2TA:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    aput-object v1, v0, v14

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->$VALUES:[Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->value:I

    .line 100
    iput p3, p0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->value:I

    return-void
.end method

.method static synthetic access$100(Lcom/uhf/api/cls/R2000_calibration$R2000cmd;)I
    .locals 0

    .line 82
    iget p0, p0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->value:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/R2000_calibration$R2000cmd;
    .locals 1

    .line 82
    const-class v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/R2000_calibration$R2000cmd;
    .locals 1

    .line 82
    sget-object v0, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->$VALUES:[Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    return-object v0
.end method
