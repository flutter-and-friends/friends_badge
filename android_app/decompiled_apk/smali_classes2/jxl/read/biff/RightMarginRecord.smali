.class Ljxl/read/biff/RightMarginRecord;
.super Ljxl/read/biff/MarginRecord;
.source "RightMarginRecord.java"


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/Type;->RIGHTMARGIN:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/read/biff/MarginRecord;-><init>(Ljxl/biff/Type;Ljxl/read/biff/Record;)V

    return-void
.end method
