.class Ljxl/write/biff/CalcModeRecord;
.super Ljxl/biff/WritableRecordData;
.source "CalcModeRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/CalcModeRecord$CalcMode;
    }
.end annotation


# static fields
.field static automatic:Ljxl/write/biff/CalcModeRecord$CalcMode;

.field static automaticNoTables:Ljxl/write/biff/CalcModeRecord$CalcMode;

.field static manual:Ljxl/write/biff/CalcModeRecord$CalcMode;


# instance fields
.field private calculationMode:Ljxl/write/biff/CalcModeRecord$CalcMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Ljxl/write/biff/CalcModeRecord$CalcMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/write/biff/CalcModeRecord$CalcMode;-><init>(I)V

    sput-object v0, Ljxl/write/biff/CalcModeRecord;->manual:Ljxl/write/biff/CalcModeRecord$CalcMode;

    .line 62
    new-instance v0, Ljxl/write/biff/CalcModeRecord$CalcMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljxl/write/biff/CalcModeRecord$CalcMode;-><init>(I)V

    sput-object v0, Ljxl/write/biff/CalcModeRecord;->automatic:Ljxl/write/biff/CalcModeRecord$CalcMode;

    .line 66
    new-instance v0, Ljxl/write/biff/CalcModeRecord$CalcMode;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljxl/write/biff/CalcModeRecord$CalcMode;-><init>(I)V

    sput-object v0, Ljxl/write/biff/CalcModeRecord;->automaticNoTables:Ljxl/write/biff/CalcModeRecord$CalcMode;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V
    .locals 1

    .line 75
    sget-object v0, Ljxl/biff/Type;->CALCMODE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 76
    iput-object p1, p0, Ljxl/write/biff/CalcModeRecord;->calculationMode:Ljxl/write/biff/CalcModeRecord$CalcMode;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 89
    iget-object v1, p0, Ljxl/write/biff/CalcModeRecord;->calculationMode:Ljxl/write/biff/CalcModeRecord$CalcMode;

    iget v1, v1, Ljxl/write/biff/CalcModeRecord$CalcMode;->value:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method
