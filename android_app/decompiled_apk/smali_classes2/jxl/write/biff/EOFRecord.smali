.class Ljxl/write/biff/EOFRecord;
.super Ljxl/biff/WritableRecordData;
.source "EOFRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/Type;->EOF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
