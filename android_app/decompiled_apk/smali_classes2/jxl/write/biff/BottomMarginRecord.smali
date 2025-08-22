.class Ljxl/write/biff/BottomMarginRecord;
.super Ljxl/write/biff/MarginRecord;
.source "BottomMarginRecord.java"


# direct methods
.method constructor <init>(D)V
    .locals 1

    .line 31
    sget-object v0, Ljxl/biff/Type;->BOTTOMMARGIN:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/MarginRecord;-><init>(Ljxl/biff/Type;D)V

    return-void
.end method
