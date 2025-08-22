.class Ljxl/write/biff/Window2Record;
.super Ljxl/biff/WritableRecordData;
.source "Window2Record.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/SheetSettings;)V
    .locals 3

    .line 42
    sget-object v0, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 48
    invoke-virtual {p1}, Ljxl/SheetSettings;->getShowGridLines()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    .line 57
    invoke-virtual {p1}, Ljxl/SheetSettings;->getDisplayZeroValues()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    or-int/lit8 v0, v0, 0x20

    or-int/lit16 v0, v0, 0x80

    .line 67
    invoke-virtual {p1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    or-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x100

    .line 75
    :cond_3
    invoke-virtual {p1}, Ljxl/SheetSettings;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x600

    .line 81
    :cond_4
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPageBreakPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_5

    or-int/lit16 v0, v0, 0x800

    :cond_5
    const/16 v2, 0x12

    new-array v2, v2, [B

    .line 87
    iput-object v2, p0, Ljxl/write/biff/Window2Record;->data:[B

    .line 88
    iget-object v2, p0, Ljxl/write/biff/Window2Record;->data:[B

    invoke-static {v0, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v0, 0x40

    .line 89
    iget-object v1, p0, Ljxl/write/biff/Window2Record;->data:[B

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 90
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPageBreakPreviewMagnification()I

    move-result v0

    iget-object v1, p0, Ljxl/write/biff/Window2Record;->data:[B

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 92
    invoke-virtual {p1}, Ljxl/SheetSettings;->getNormalMagnification()I

    move-result p1

    iget-object v0, p0, Ljxl/write/biff/Window2Record;->data:[B

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 104
    iget-object v0, p0, Ljxl/write/biff/Window2Record;->data:[B

    return-object v0
.end method
