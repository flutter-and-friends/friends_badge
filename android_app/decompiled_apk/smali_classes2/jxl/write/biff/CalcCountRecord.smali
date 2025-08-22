.class Ljxl/write/biff/CalcCountRecord;
.super Ljxl/biff/WritableRecordData;
.source "CalcCountRecord.java"


# instance fields
.field private calcCount:I

.field private data:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 48
    sget-object v0, Ljxl/biff/Type;->CALCCOUNT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    iput p1, p0, Ljxl/write/biff/CalcCountRecord;->calcCount:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 62
    iget v1, p0, Ljxl/write/biff/CalcCountRecord;->calcCount:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method
