.class public Ljxl/write/biff/WritableFontRecord;
.super Ljxl/biff/FontRecord;
.source "WritableFontRecord.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIZIII)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p7}, Ljxl/biff/FontRecord;-><init>(Ljava/lang/String;IIZIII)V

    return-void
.end method

.method protected constructor <init>(Ljxl/format/Font;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/FontRecord;-><init>(Ljxl/format/Font;)V

    return-void
.end method


# virtual methods
.method protected setBoldStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Ljxl/write/biff/WritableFontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontBoldStyle(I)V

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method protected setColour(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Ljxl/write/biff/WritableFontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontColour(I)V

    return-void

    .line 137
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method protected setItalic(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Ljxl/write/biff/WritableFontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontItalic(Z)V

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method protected setPointSize(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljxl/write/biff/WritableFontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontPointSize(I)V

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method protected setScriptStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljxl/write/biff/WritableFontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontScriptStyle(I)V

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method protected setStruckout(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Ljxl/write/biff/WritableFontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontStruckout(Z)V

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method protected setUnderlineStyle(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Ljxl/write/biff/WritableFontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontUnderlineStyle(I)V

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method
