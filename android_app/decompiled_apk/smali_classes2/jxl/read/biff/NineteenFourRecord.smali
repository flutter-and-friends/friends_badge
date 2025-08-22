.class Ljxl/read/biff/NineteenFourRecord;
.super Ljxl/biff/RecordData;
.source "NineteenFourRecord.java"


# instance fields
.field private nineteenFour:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p0}, Ljxl/read/biff/NineteenFourRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 45
    aget-byte p1, p1, v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljxl/read/biff/NineteenFourRecord;->nineteenFour:Z

    return-void
.end method


# virtual methods
.method public is1904()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Ljxl/read/biff/NineteenFourRecord;->nineteenFour:Z

    return v0
.end method
