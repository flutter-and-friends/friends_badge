.class public Ljxl/write/biff/CellXFRecord;
.super Ljxl/biff/XFRecord;
.source "CellXFRecord.java"


# direct methods
.method protected constructor <init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Ljxl/biff/XFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 49
    sget-object p1, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljxl/write/biff/CellXFRecord;->setXFDetails(Ljxl/biff/XFRecord$XFType;I)V

    return-void
.end method

.method constructor <init>(Ljxl/biff/XFRecord;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Ljxl/biff/XFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 60
    sget-object p1, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljxl/write/biff/CellXFRecord;->setXFDetails(Ljxl/biff/XFRecord$XFType;I)V

    return-void
.end method

.method protected constructor <init>(Ljxl/format/CellFormat;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Ljxl/biff/XFRecord;-><init>(Ljxl/format/CellFormat;)V

    return-void
.end method


# virtual methods
.method public setAlignment(Ljxl/format/Alignment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFAlignment(Ljxl/format/Alignment;)V

    return-void

    .line 82
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1, p2}, Ljxl/biff/XFRecord;->setXFBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V

    const/16 p1, 0x4000

    .line 101
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFCellOptions(I)V

    return-void

    .line 98
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object p2, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, p2}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    if-ne p1, v0, :cond_0

    .line 218
    sget-object p1, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 219
    sget-object p1, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 220
    sget-object p1, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 221
    sget-object p1, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void

    .line 225
    :cond_0
    sget-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    if-ne p1, v0, :cond_1

    .line 228
    sget-object p1, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object p2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object p3, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 229
    sget-object p1, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object p2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object p3, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 230
    sget-object p1, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object p2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object p3, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 231
    sget-object p1, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object p2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object p3, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void

    .line 235
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void

    .line 212
    :cond_2
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object p2, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, p2}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setIndentation(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFIndentation(I)V

    return-void

    .line 129
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setLocked(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFLocked(Z)V

    const p1, 0x8000

    .line 117
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFCellOptions(I)V

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setOrientation(Ljxl/format/Orientation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFOrientation(Ljxl/format/Orientation;)V

    return-void

    .line 176
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setShrinkToFit(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFShrinkToFit(Z)V

    return-void

    .line 143
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setVerticalAlignment(Ljxl/format/VerticalAlignment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFVerticalAlignment(Ljxl/format/VerticalAlignment;)V

    return-void

    .line 159
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setWrap(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Ljxl/write/biff/CellXFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFWrap(Z)V

    return-void

    .line 194
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method
