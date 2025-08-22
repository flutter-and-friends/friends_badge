.class Ljxl/write/biff/PaletteRecord;
.super Ljxl/biff/WritableRecordData;
.source "PaletteRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/PaletteRecord;)V
    .locals 1

    .line 42
    sget-object v0, Ljxl/biff/Type;->PALETTE:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 44
    invoke-virtual {p1}, Ljxl/read/biff/PaletteRecord;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/PaletteRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 54
    iget-object v0, p0, Ljxl/write/biff/PaletteRecord;->data:[B

    return-object v0
.end method
