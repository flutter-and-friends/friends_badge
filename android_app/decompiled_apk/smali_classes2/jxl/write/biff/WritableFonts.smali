.class public Ljxl/write/biff/WritableFonts;
.super Ljxl/biff/Fonts;
.source "WritableFonts.java"


# direct methods
.method public constructor <init>(Ljxl/write/biff/WritableWorkbookImpl;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljxl/biff/Fonts;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/write/biff/Styles;->getArial10Pt()Ljxl/write/WritableFont;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 42
    new-instance p1, Ljxl/write/WritableFont;

    sget-object v0, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {p1, v0}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    .line 43
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 45
    new-instance p1, Ljxl/write/WritableFont;

    sget-object v0, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {p1, v0}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    .line 46
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    .line 48
    new-instance p1, Ljxl/write/WritableFont;

    sget-object v0, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {p1, v0}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    .line 49
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableFonts;->addFont(Ljxl/biff/FontRecord;)V

    return-void
.end method
