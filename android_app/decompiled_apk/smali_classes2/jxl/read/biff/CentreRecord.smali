.class Ljxl/read/biff/CentreRecord;
.super Ljxl/biff/RecordData;
.source "CentreRecord.java"


# instance fields
.field private centre:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 3

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p0}, Ljxl/read/biff/CentreRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 44
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljxl/read/biff/CentreRecord;->centre:Z

    return-void
.end method


# virtual methods
.method public isCentre()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Ljxl/read/biff/CentreRecord;->centre:Z

    return v0
.end method
