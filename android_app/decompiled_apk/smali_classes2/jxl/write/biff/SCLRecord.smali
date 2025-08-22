.class Ljxl/write/biff/SCLRecord;
.super Ljxl/biff/WritableRecordData;
.source "SCLRecord.java"


# instance fields
.field private zoomFactor:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 43
    sget-object v0, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 45
    iput p1, p0, Ljxl/write/biff/SCLRecord;->zoomFactor:I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 56
    iget v1, p0, Ljxl/write/biff/SCLRecord;->zoomFactor:I

    const/4 v2, 0x0

    .line 59
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0x64

    const/4 v2, 0x2

    .line 60
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method
