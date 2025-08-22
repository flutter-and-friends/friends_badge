.class public Ljxl/biff/HeaderFooter$Contents;
.super Ljava/lang/Object;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Contents"
.end annotation


# instance fields
.field private contents:Ljava/lang/StringBuffer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/HeaderFooter$Contents;)V
    .locals 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    return-void
.end method

.method private appendInternal(C)V
    .locals 1

    .line 206
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 211
    :cond_0
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private appendInternal(Ljava/lang/String;)V
    .locals 1

    .line 191
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    .line 196
    :cond_0
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/String;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected appendDate()V
    .locals 1

    const-string v0, "&D"

    .line 400
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected appendPageNumber()V
    .locals 1

    const-string v0, "&P"

    .line 384
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected appendTime()V
    .locals 1

    const-string v0, "&T"

    .line 408
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected appendTotalPages()V
    .locals 1

    const-string v0, "&N"

    .line 392
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected appendWorkSheetName()V
    .locals 1

    const-string v0, "&A"

    .line 424
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected appendWorkbookName()V
    .locals 1

    const-string v0, "&F"

    .line 416
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected clear()V
    .locals 1

    const/4 v0, 0x0

    .line 432
    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    return-void
.end method

.method protected empty()Z
    .locals 1

    .line 442
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected getContents()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected setFontName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "&\""

    .line 335
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    const/16 p1, 0x22

    .line 337
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(C)V

    return-void
.end method

.method protected setFontSize(I)Z
    .locals 3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/16 v1, 0x63

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    .line 367
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 371
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 v1, 0x26

    .line 374
    invoke-direct {p0, v1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(C)V

    .line 375
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected toggleBold()V
    .locals 1

    const-string v0, "&B"

    .line 232
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleDoubleUnderline()V
    .locals 1

    const-string v0, "&E"

    .line 276
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleItalics()V
    .locals 1

    const-string v0, "&I"

    .line 254
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleOutline()V
    .locals 1

    const-string v0, "&O"

    .line 309
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleShadow()V
    .locals 1

    const-string v0, "&H"

    .line 320
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleStrikethrough()V
    .locals 1

    const-string v0, "&S"

    .line 265
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleSubScript()V
    .locals 1

    const-string v0, "&Y"

    .line 298
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleSuperScript()V
    .locals 1

    const-string v0, "&X"

    .line 287
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method

.method protected toggleUnderline()V
    .locals 1

    const-string v0, "&U"

    .line 243
    invoke-direct {p0, v0}, Ljxl/biff/HeaderFooter$Contents;->appendInternal(Ljava/lang/String;)V

    return-void
.end method
