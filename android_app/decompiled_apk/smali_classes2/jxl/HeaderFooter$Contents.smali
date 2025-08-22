.class public Ljxl/HeaderFooter$Contents;
.super Ljxl/biff/HeaderFooter$Contents;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contents"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljxl/biff/HeaderFooter$Contents;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljxl/HeaderFooter$Contents;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;-><init>(Ljxl/biff/HeaderFooter$Contents;)V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    return-void
.end method

.method public appendDate()V
    .locals 0

    .line 224
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendDate()V

    return-void
.end method

.method public appendPageNumber()V
    .locals 0

    .line 208
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendPageNumber()V

    return-void
.end method

.method public appendTime()V
    .locals 0

    .line 232
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendTime()V

    return-void
.end method

.method public appendTotalPages()V
    .locals 0

    .line 216
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendTotalPages()V

    return-void
.end method

.method public appendWorkSheetName()V
    .locals 0

    .line 248
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendWorkSheetName()V

    return-void
.end method

.method public appendWorkbookName()V
    .locals 0

    .line 240
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->appendWorkbookName()V

    return-void
.end method

.method public clear()V
    .locals 0

    .line 256
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->clear()V

    return-void
.end method

.method public empty()Z
    .locals 1

    .line 266
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v0

    return v0
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->setFontName(Ljava/lang/String;)V

    return-void
.end method

.method public setFontSize(I)Z
    .locals 0

    .line 200
    invoke-super {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->setFontSize(I)Z

    move-result p1

    return p1
.end method

.method public toggleBold()V
    .locals 0

    .line 79
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleBold()V

    return-void
.end method

.method public toggleDoubleUnderline()V
    .locals 0

    .line 123
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleDoubleUnderline()V

    return-void
.end method

.method public toggleItalics()V
    .locals 0

    .line 101
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleItalics()V

    return-void
.end method

.method public toggleOutline()V
    .locals 0

    .line 156
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleOutline()V

    return-void
.end method

.method public toggleShadow()V
    .locals 0

    .line 167
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleShadow()V

    return-void
.end method

.method public toggleStrikethrough()V
    .locals 0

    .line 112
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleStrikethrough()V

    return-void
.end method

.method public toggleSubScript()V
    .locals 0

    .line 145
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleSubScript()V

    return-void
.end method

.method public toggleSuperScript()V
    .locals 0

    .line 134
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleSuperScript()V

    return-void
.end method

.method public toggleUnderline()V
    .locals 0

    .line 90
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->toggleUnderline()V

    return-void
.end method
