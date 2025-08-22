.class public Ljxl/write/biff/WritableFormattingRecords;
.super Ljxl/biff/FormattingRecords;
.source "WritableFormattingRecords.java"


# static fields
.field public static normalStyle:Ljxl/write/WritableCellFormat;


# direct methods
.method public constructor <init>(Ljxl/biff/Fonts;Ljxl/write/biff/Styles;)V
    .locals 4

    .line 52
    invoke-direct {p0, p1}, Ljxl/biff/FormattingRecords;-><init>(Ljxl/biff/Fonts;)V

    .line 57
    :try_start_0
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v0

    sget-object v1, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v0, v1}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 60
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 62
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v1, v2}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 63
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    const v1, 0xf400

    .line 64
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 65
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 67
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 68
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 69
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 70
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 72
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 73
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 74
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 75
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 77
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 78
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 79
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 80
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 82
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 83
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 84
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 85
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 87
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 89
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 90
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 91
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 93
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 95
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 96
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 97
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 99
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 101
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 102
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 103
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 105
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 107
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 108
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 109
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 111
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 113
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 114
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 115
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 117
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 119
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 120
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 121
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 123
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 125
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 126
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 127
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 129
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 131
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 132
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 133
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 135
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object v2

    sget-object v3, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v2, v3}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 137
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 138
    invoke-virtual {p1, v1}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 139
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 143
    invoke-virtual {p2}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 146
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object p2

    sget-object v1, Ljxl/write/NumberFormats;->FORMAT7:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, p2, v1}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 148
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    const p2, 0xf800

    .line 149
    invoke-virtual {p1, p2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 150
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 152
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->FORMAT5:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v1, v2}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 154
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 155
    invoke-virtual {p1, p2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 156
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 158
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->FORMAT8:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v1, v2}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 160
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 161
    invoke-virtual {p1, p2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 162
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 164
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->FORMAT6:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v1, v2}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 166
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 167
    invoke-virtual {p1, p2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 168
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V

    .line 170
    new-instance p1, Ljxl/write/biff/StyleXFRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableFormattingRecords;->getFonts()Ljxl/biff/Fonts;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/Fonts;->getFont(I)Ljxl/biff/FontRecord;

    move-result-object v1

    sget-object v2, Ljxl/write/NumberFormats;->PERCENT_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {p1, v1, v2}, Ljxl/write/biff/StyleXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 172
    invoke-virtual {p1, v0}, Ljxl/write/biff/StyleXFRecord;->setLocked(Z)V

    .line 173
    invoke-virtual {p1, p2}, Ljxl/write/biff/StyleXFRecord;->setCellOptions(I)V

    .line 174
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFormattingRecords;->addStyle(Ljxl/biff/XFRecord;)V
    :try_end_0
    .catch Ljxl/biff/NumFormatRecordsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 219
    invoke-virtual {p1}, Ljxl/biff/NumFormatRecordsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcommon/Assert;->verify(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
