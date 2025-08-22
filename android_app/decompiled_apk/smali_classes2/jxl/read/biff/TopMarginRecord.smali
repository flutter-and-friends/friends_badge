.class Ljxl/read/biff/TopMarginRecord;
.super Ljxl/read/biff/MarginRecord;
.source "TopMarginRecord.java"


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/Type;->TOPMARGIN:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/read/biff/MarginRecord;-><init>(Ljxl/biff/Type;Ljxl/read/biff/Record;)V

    return-void
.end method
