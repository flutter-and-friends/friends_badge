.class public Ljxl/biff/FormattingRecords;
.super Ljava/lang/Object;
.source "FormattingRecords.java"


# static fields
.field static synthetic class$jxl$biff$FormattingRecords:Ljava/lang/Class; = null

.field private static final customFormatStartIndex:I = 0xa4

.field private static logger:Lcommon/Logger; = null

.field private static final maxFormatRecordsIndex:I = 0x1b9

.field private static final minXFRecords:I = 0x15


# instance fields
.field private fonts:Ljxl/biff/Fonts;

.field private formats:Ljava/util/HashMap;

.field private formatsList:Ljava/util/ArrayList;

.field private nextCustomIndexNumber:I

.field private palette:Ljxl/biff/PaletteRecord;

.field private xfRecords:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Ljxl/biff/FormattingRecords;->class$jxl$biff$FormattingRecords:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.FormattingRecords"

    invoke-static {v0}, Ljxl/biff/FormattingRecords;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormattingRecords;->class$jxl$biff$FormattingRecords:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormattingRecords;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/Fonts;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    .line 104
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    const/16 p1, 0xa4

    .line 105
    iput p1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 44
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addFormat(Ljxl/biff/DisplayFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 151
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result v0

    const/16 v1, 0x1b9

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 154
    sget-object v0, Ljxl/biff/FormattingRecords;->logger:Lcommon/Logger;

    const-string v2, "Format index exceeds Excel maximum - assigning custom number"

    invoke-virtual {v0, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 156
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-interface {p1, v0}, Ljxl/biff/DisplayFormat;->initialize(I)V

    .line 157
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 161
    :cond_0
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-interface {p1, v0}, Ljxl/biff/DisplayFormat;->initialize(I)V

    .line 164
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 167
    :cond_1
    iget v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    if-gt v0, v1, :cond_4

    .line 173
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    iget v1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    if-lt v0, v1, :cond_2

    .line 175
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 178
    :cond_2
    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-interface {p1}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    .line 169
    :cond_4
    iput v1, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    .line 170
    new-instance p1, Ljxl/biff/NumFormatRecordsException;

    invoke-direct {p1}, Ljxl/biff/NumFormatRecordsException;-><init>()V

    throw p1
.end method

.method public final addStyle(Ljxl/biff/XFRecord;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/NumFormatRecordsException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {p1, v0, p0, v1}, Ljxl/biff/XFRecord;->initialize(ILjxl/biff/FormattingRecords;Ljxl/biff/Fonts;)V

    .line 124
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v0

    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;
    .locals 1

    .line 566
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p1}, Ljxl/format/Colour;->getDefaultRGB()Ljxl/format/RGB;

    move-result-object p1

    return-object p1

    .line 571
    :cond_0
    invoke-virtual {v0, p1}, Ljxl/biff/PaletteRecord;->getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;

    move-result-object p1

    return-object p1
.end method

.method public final getDateFormat(I)Ljava/text/DateFormat;
    .locals 2

    .line 217
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    .line 219
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isDate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getDateFormat()Ljava/text/DateFormat;

    move-result-object p1

    return-object p1

    .line 224
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 232
    :cond_1
    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->isDate()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected final getFonts()Ljxl/biff/Fonts;
    .locals 1

    .line 326
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    return-object v0
.end method

.method getFormatRecord(I)Ljxl/biff/FormatRecord;
    .locals 2

    .line 270
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    return-object p1
.end method

.method public final getNumberFormat(I)Ljava/text/NumberFormat;
    .locals 2

    .line 244
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    .line 246
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return-object v0

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected final getNumberOfFormatRecords()I
    .locals 1

    .line 350
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPalette()Ljxl/biff/PaletteRecord;
    .locals 1

    .line 529
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    return-object v0
.end method

.method public final getXFRecord(I)Ljxl/biff/XFRecord;
    .locals 1

    .line 338
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    return-object p1
.end method

.method public final isDate(I)Z
    .locals 2

    .line 195
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/XFRecord;

    .line 197
    invoke-virtual {p1}, Ljxl/biff/XFRecord;->isDate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 202
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formats:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/FormatRecord;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Ljxl/biff/FormatRecord;->isDate()Z

    move-result p1

    :goto_0
    return p1
.end method

.method public rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)Ljxl/biff/IndexMapping;
    .locals 8

    .line 379
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    .line 383
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v2

    const/16 v3, 0xa4

    if-lt v2, v3, :cond_0

    .line 385
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFormatRecord()I

    move-result v2

    invoke-virtual {p2, v2}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/biff/XFRecord;->setFormatIndex(I)V

    .line 388
    :cond_0
    invoke-virtual {v1}, Ljxl/biff/XFRecord;->getFontIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljxl/biff/XFRecord;->setFontIndex(I)V

    goto :goto_0

    .line 391
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    new-instance v0, Ljxl/biff/IndexMapping;

    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 395
    iget-object v1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 399
    iget-object v4, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v0, v3, v3}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ge v1, p2, :cond_3

    .line 405
    sget-object p1, Ljxl/biff/FormattingRecords;->logger:Lcommon/Logger;

    const-string p2, "There are less than the expected minimum number of XF records"

    invoke-virtual {p1, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    return-object v0

    :cond_3
    const/4 v1, 0x0

    .line 411
    :goto_2
    iget-object v3, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_7

    .line 413
    iget-object v3, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/XFRecord;

    .line 417
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    const/4 v1, 0x0

    .line 418
    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_5

    .line 420
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/biff/XFRecord;

    .line 421
    invoke-virtual {v6, v3}, Ljxl/biff/XFRecord;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 424
    invoke-virtual {v6}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    .line 432
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v1, p2, v5

    .line 433
    invoke-virtual {v0, p2, v1}, Ljxl/biff/IndexMapping;->setMapping(II)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    move v1, v5

    goto :goto_2

    .line 440
    :cond_7
    iget-object p2, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 442
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    .line 443
    invoke-virtual {v1, v0}, Ljxl/biff/XFRecord;->rationalize(Ljxl/biff/IndexMapping;)V

    goto :goto_4

    .line 447
    :cond_8
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public rationalizeDisplayFormats()Ljxl/biff/IndexMapping;
    .locals 11

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    new-instance v1, Ljxl/biff/IndexMapping;

    iget v2, p0, Ljxl/biff/FormattingRecords;->nextCustomIndexNumber:I

    invoke-direct {v1, v2}, Ljxl/biff/IndexMapping;-><init>(I)V

    .line 467
    iget-object v2, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 471
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/DisplayFormat;

    .line 475
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->isBuiltIn()Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-static {v6}, Lcommon/Assert;->verify(Z)V

    .line 478
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v8, v4

    const/4 v4, 0x0

    .line 480
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v4, :cond_1

    .line 482
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxl/biff/DisplayFormat;

    .line 483
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 486
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v4

    invoke-interface {v9}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v9

    invoke-virtual {v1, v9}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v9

    invoke-virtual {v1, v4, v9}, Ljxl/biff/IndexMapping;->setMapping(II)V

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    if-nez v4, :cond_3

    .line 495
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v4

    sub-int/2addr v4, v8

    const/16 v6, 0x1b9

    if-le v4, v6, :cond_2

    .line 499
    sget-object v4, Ljxl/biff/FormattingRecords;->logger:Lcommon/Logger;

    const-string v6, "Too many number formats - using default format."

    invoke-virtual {v4, v6}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 502
    :cond_2
    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v4

    invoke-interface {v5}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {v1, v4, v5}, Ljxl/biff/IndexMapping;->setMapping(II)V

    :cond_3
    move v4, v8

    goto :goto_0

    .line 508
    :cond_4
    iput-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    .line 511
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 513
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 515
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/DisplayFormat;

    .line 516
    invoke-interface {v2}, Ljxl/biff/DisplayFormat;->getFormatIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljxl/biff/DisplayFormat;->initialize(I)V

    goto :goto_2

    :cond_5
    return-object v1
.end method

.method public rationalizeFonts()Ljxl/biff/IndexMapping;
    .locals 1

    .line 360
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->fonts:Ljxl/biff/Fonts;

    invoke-virtual {v0}, Ljxl/biff/Fonts;->rationalize()Ljxl/biff/IndexMapping;

    move-result-object v0

    return-object v0
.end method

.method public setColourRGB(Ljxl/format/Colour;III)V
    .locals 1

    .line 552
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Ljxl/biff/PaletteRecord;

    invoke-direct {v0}, Ljxl/biff/PaletteRecord;-><init>()V

    iput-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    .line 556
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljxl/biff/PaletteRecord;->setColourRGB(Ljxl/format/Colour;III)V

    return-void
.end method

.method public setPalette(Ljxl/biff/PaletteRecord;)V
    .locals 0

    .line 539
    iput-object p1, p0, Ljxl/biff/FormattingRecords;->palette:Ljxl/biff/PaletteRecord;

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->formatsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/FormatRecord;

    .line 287
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormattingRecords;->xfRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 293
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/XFRecord;

    .line 296
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_1

    .line 300
    :cond_1
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 301
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 303
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x11

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 304
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 306
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x12

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 307
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 309
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x13

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 310
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 312
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 313
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 315
    new-instance v0, Ljxl/biff/BuiltInStyle;

    const/16 v1, 0x14

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljxl/biff/BuiltInStyle;-><init>(II)V

    .line 316
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method
