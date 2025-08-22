.class public final enum Lcom/uhf/api/cls/R2000_calibration$SubCmd;
.super Ljava/lang/Enum;
.source "R2000_calibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/R2000_calibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubCmd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/R2000_calibration$SubCmd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/R2000_calibration$SubCmd;

.field public static final enum En_low_power_gpio:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

.field public static final enum ReadAD:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

.field public static final enum SendControl:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

.field public static final enum SetTestAntPow:Lcom/uhf/api/cls/R2000_calibration$SubCmd;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 849
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    const/4 v1, 0x0

    const-string v2, "ReadAD"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v1, v3}, Lcom/uhf/api/cls/R2000_calibration$SubCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->ReadAD:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    .line 850
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    const/4 v2, 0x1

    const-string v3, "SetTestAntPow"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v2, v4}, Lcom/uhf/api/cls/R2000_calibration$SubCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->SetTestAntPow:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    .line 851
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    const/4 v3, 0x2

    const-string v4, "SendControl"

    const/16 v5, 0x16

    invoke-direct {v0, v4, v3, v5}, Lcom/uhf/api/cls/R2000_calibration$SubCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->SendControl:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    .line 852
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    const/4 v4, 0x3

    const-string v5, "En_low_power_gpio"

    const/16 v6, 0xaa

    invoke-direct {v0, v5, v4, v6}, Lcom/uhf/api/cls/R2000_calibration$SubCmd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->En_low_power_gpio:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    .line 847
    sget-object v5, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->ReadAD:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    aput-object v5, v0, v1

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->SetTestAntPow:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->SendControl:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->En_low_power_gpio:Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    aput-object v1, v0, v4

    sput-object v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->$VALUES:[Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 858
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 853
    iput p1, p0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->value:I

    .line 859
    iput p3, p0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/R2000_calibration$SubCmd;
    .locals 1

    .line 847
    const-class v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/R2000_calibration$SubCmd;
    .locals 1

    .line 847
    sget-object v0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->$VALUES:[Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/R2000_calibration$SubCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/R2000_calibration$SubCmd;

    return-object v0
.end method


# virtual methods
.method public Value()I
    .locals 1

    .line 856
    iget v0, p0, Lcom/uhf/api/cls/R2000_calibration$SubCmd;->value:I

    return v0
.end method
