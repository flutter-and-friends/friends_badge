.class public Ljxl/read/biff/PaletteRecord;
.super Ljxl/biff/RecordData;
.source "PaletteRecord.java"


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 46
    invoke-virtual {p0}, Ljxl/read/biff/PaletteRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method
