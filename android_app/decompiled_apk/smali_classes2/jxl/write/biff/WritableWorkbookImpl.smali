.class public Ljxl/write/biff/WritableWorkbookImpl;
.super Ljxl/write/WritableWorkbook;
.source "WritableWorkbookImpl.java"

# interfaces
.implements Ljxl/biff/formula/ExternalSheet;
.implements Ljxl/biff/WorkbookMethods;


# static fields
.field static synthetic class$jxl$write$biff$WritableWorkbookImpl:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private addInFunctionNames:[Ljava/lang/String;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private closeStream:Z

.field private containsMacros:Z

.field private countryRecord:Ljxl/write/biff/CountryRecord;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private externSheet:Ljxl/write/biff/ExternalSheetRecord;

.field private fonts:Ljxl/biff/Fonts;

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private nameRecords:Ljava/util/HashMap;

.field private names:Ljava/util/ArrayList;

.field private outputFile:Ljxl/write/biff/File;

.field private rcirCells:Ljava/util/ArrayList;

.field private settings:Ljxl/WorkbookSettings;

.field private sharedStrings:Ljxl/write/biff/SharedStrings;

.field private sheets:Ljava/util/ArrayList;

.field private styles:Ljxl/write/biff/Styles;

.field private supbooks:Ljava/util/ArrayList;

.field private wbProtected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-object v0, Ljxl/write/biff/WritableWorkbookImpl;->class$jxl$write$biff$WritableWorkbookImpl:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.WritableWorkbookImpl"

    invoke-static {v0}, Ljxl/write/biff/WritableWorkbookImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableWorkbookImpl;->class$jxl$write$biff$WritableWorkbookImpl:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/WritableWorkbookImpl;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljxl/Workbook;ZLjxl/WorkbookSettings;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Ljxl/write/WritableWorkbook;-><init>()V

    .line 218
    move-object v0, p2

    check-cast v0, Ljxl/read/biff/WorkbookParser;

    .line 221
    sget-object v1, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-virtual {v1}, Ljxl/write/WritableFont;->uninitialize()V

    .line 222
    sget-object v1, Ljxl/write/WritableWorkbook;->HYPERLINK_FONT:Ljxl/write/WritableFont;

    invoke-virtual {v1}, Ljxl/write/WritableFont;->uninitialize()V

    .line 223
    sget-object v1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 224
    sget-object v1, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 225
    sget-object v1, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 226
    sget-object v1, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    invoke-virtual {v1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 228
    iput-boolean p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->closeStream:Z

    .line 229
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    .line 230
    new-instance p3, Ljxl/write/biff/SharedStrings;

    invoke-direct {p3}, Ljxl/write/biff/SharedStrings;-><init>()V

    iput-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 231
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    .line 232
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getFonts()Ljxl/biff/Fonts;

    move-result-object p3

    iput-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    .line 233
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getFormattingRecords()Ljxl/biff/FormattingRecords;

    move-result-object p3

    iput-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    const/4 p3, 0x0

    .line 234
    iput-boolean p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    .line 235
    iput-object p4, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    .line 237
    new-instance v1, Ljxl/write/biff/Styles;

    invoke-direct {v1}, Ljxl/write/biff/Styles;-><init>()V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    .line 238
    new-instance v1, Ljxl/write/biff/File;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getCompoundFile()Ljxl/read/biff/CompoundFile;

    move-result-object v2

    invoke-direct {v1, p1, p4, v2}, Ljxl/write/biff/File;-><init>(Ljava/io/OutputStream;Ljxl/WorkbookSettings;Ljxl/read/biff/CompoundFile;)V

    iput-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    .line 240
    iput-boolean p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    .line 241
    invoke-virtual {p4}, Ljxl/WorkbookSettings;->getPropertySetsDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 243
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->containsMacros()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getCountryRecord()Ljxl/read/biff/CountryRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 249
    new-instance p1, Ljxl/write/biff/CountryRecord;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getCountryRecord()Ljxl/read/biff/CountryRecord;

    move-result-object p4

    invoke-direct {p1, p4}, Ljxl/write/biff/CountryRecord;-><init>(Ljxl/read/biff/CountryRecord;)V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getAddInFunctionNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->addInFunctionNames:[Ljava/lang/String;

    .line 256
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getExternalSheetRecord()Ljxl/read/biff/ExternalSheetRecord;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 258
    new-instance p1, Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getExternalSheetRecord()Ljxl/read/biff/ExternalSheetRecord;

    move-result-object p4

    invoke-direct {p1, p4}, Ljxl/write/biff/ExternalSheetRecord;-><init>(Ljxl/read/biff/ExternalSheetRecord;)V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    .line 261
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getSupbookRecords()[Ljxl/read/biff/SupbookRecord;

    move-result-object p1

    .line 262
    new-instance p4, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p4, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    const/4 p4, 0x0

    .line 264
    :goto_0
    array-length v1, p1

    if-ge p4, v1, :cond_5

    .line 266
    aget-object v1, p1, p4

    .line 267
    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v2

    sget-object v3, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v2

    sget-object v3, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 274
    :cond_2
    invoke-virtual {v1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object v1

    sget-object v2, Ljxl/read/biff/SupbookRecord;->ADDIN:Ljxl/read/biff/SupbookRecord$Type;

    if-eq v1, v2, :cond_4

    .line 276
    sget-object v1, Ljxl/write/biff/WritableWorkbookImpl;->logger:Lcommon/Logger;

    const-string v2, "unsupported supbook type - ignoring"

    invoke-virtual {v1, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 270
    :cond_3
    :goto_1
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    new-instance v3, Ljxl/write/biff/SupbookRecord;

    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v3, v1, v4}, Ljxl/write/biff/SupbookRecord;-><init>(Ljxl/read/biff/SupbookRecord;Ljxl/WorkbookSettings;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 284
    :cond_5
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 286
    new-instance p1, Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p4

    invoke-direct {p1, p4}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/DrawingGroup;)V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 290
    :cond_6
    iget-boolean p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 292
    new-instance p1, Ljxl/write/biff/ButtonPropertySetRecord;

    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object p4

    invoke-direct {p1, p4}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/ButtonPropertySetRecord;)V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 297
    :cond_7
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {p1}, Ljxl/WorkbookSettings;->getNamesDisabled()Z

    move-result p1

    if-nez p1, :cond_9

    .line 299
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getNameRecords()[Ljxl/read/biff/NameRecord;

    move-result-object p1

    .line 300
    new-instance p4, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {p4, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    .line 302
    :goto_3
    array-length p4, p1

    if-ge p3, p4, :cond_9

    .line 304
    aget-object p4, p1, p3

    invoke-virtual {p4}, Ljxl/read/biff/NameRecord;->isBiff8()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 306
    new-instance p4, Ljxl/write/biff/NameRecord;

    aget-object v1, p1, p3

    invoke-direct {p4, v1, p3}, Ljxl/write/biff/NameRecord;-><init>(Ljxl/read/biff/NameRecord;I)V

    .line 307
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p4}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v1

    .line 309
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 313
    :cond_8
    sget-object p4, Ljxl/write/biff/WritableWorkbookImpl;->logger:Lcommon/Logger;

    const-string v1, "Cannot copy Biff7 name records - ignoring"

    invoke-virtual {p4, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 318
    :cond_9
    invoke-direct {p0, p2}, Ljxl/write/biff/WritableWorkbookImpl;->copyWorkbook(Ljxl/Workbook;)V

    .line 323
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-eqz p1, :cond_a

    .line 325
    invoke-virtual {v0}, Ljxl/read/biff/WorkbookParser;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/biff/drawing/DrawingGroup;->updateData(Ljxl/biff/drawing/DrawingGroup;)V

    :cond_a
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZLjxl/WorkbookSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Ljxl/write/WritableWorkbook;-><init>()V

    .line 175
    new-instance v0, Ljxl/write/biff/File;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Ljxl/write/biff/File;-><init>(Ljava/io/OutputStream;Ljxl/WorkbookSettings;Ljxl/read/biff/CompoundFile;)V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    .line 176
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    .line 177
    new-instance p1, Ljxl/write/biff/SharedStrings;

    invoke-direct {p1}, Ljxl/write/biff/SharedStrings;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 178
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    .line 179
    iput-boolean p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->closeStream:Z

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    .line 181
    iput-boolean p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    .line 182
    iput-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    .line 183
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    .line 184
    new-instance p1, Ljxl/write/biff/Styles;

    invoke-direct {p1}, Ljxl/write/biff/Styles;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    .line 187
    sget-object p1, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-virtual {p1}, Ljxl/write/WritableFont;->uninitialize()V

    .line 188
    sget-object p1, Ljxl/write/WritableWorkbook;->HYPERLINK_FONT:Ljxl/write/WritableFont;

    invoke-virtual {p1}, Ljxl/write/WritableFont;->uninitialize()V

    .line 189
    sget-object p1, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {p1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 190
    sget-object p1, Ljxl/write/WritableWorkbook;->HYPERLINK_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {p1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 191
    sget-object p1, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    invoke-virtual {p1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 192
    sget-object p1, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    invoke-virtual {p1}, Ljxl/write/WritableCellFormat;->uninitialize()V

    .line 194
    new-instance p1, Ljxl/write/biff/WritableFonts;

    invoke-direct {p1, p0}, Ljxl/write/biff/WritableFonts;-><init>(Ljxl/write/biff/WritableWorkbookImpl;)V

    .line 195
    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    .line 197
    new-instance p1, Ljxl/write/biff/WritableFormattingRecords;

    iget-object p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    iget-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    invoke-direct {p1, p2, p3}, Ljxl/write/biff/WritableFormattingRecords;-><init>(Ljxl/biff/Fonts;Ljxl/write/biff/Styles;)V

    .line 199
    iput-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 67
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

.method private copyWorkbook(Ljxl/Workbook;)V
    .locals 5

    .line 869
    invoke-virtual {p1}, Ljxl/Workbook;->getNumberOfSheets()I

    move-result v0

    .line 870
    invoke-virtual {p1}, Ljxl/Workbook;->isProtected()Z

    move-result v1

    iput-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 875
    invoke-virtual {p1, v2}, Ljxl/Workbook;->getSheet(I)Ljxl/Sheet;

    move-result-object v3

    .line 876
    invoke-interface {v3}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2, v1}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;IZ)Ljxl/write/WritableSheet;

    move-result-object v4

    check-cast v4, Ljxl/write/biff/WritableSheetImpl;

    .line 877
    invoke-virtual {v4, v3}, Ljxl/write/biff/WritableSheetImpl;->copy(Ljxl/Sheet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createSheet(Ljava/lang/String;IZ)Ljxl/write/WritableSheet;
    .locals 8

    .line 461
    new-instance v7, Ljxl/write/biff/WritableSheetImpl;

    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    iget-object v5, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Ljxl/write/biff/WritableSheetImpl;-><init>(Ljava/lang/String;Ljxl/write/biff/File;Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/WorkbookSettings;Ljxl/write/biff/WritableWorkbookImpl;)V

    const/4 p1, 0x0

    if-gtz p2, :cond_0

    .line 473
    iget-object p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x0

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 477
    iget-object p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 478
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    if-eqz p3, :cond_2

    .line 485
    iget-object p3, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-eqz p3, :cond_2

    .line 487
    invoke-virtual {p3, p2}, Ljxl/write/biff/ExternalSheetRecord;->sheetInserted(I)V

    .line 490
    :cond_2
    iget-object p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 492
    iget-object p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/biff/SupbookRecord;

    .line 493
    invoke-virtual {p1}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object p2

    sget-object p3, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne p2, p3, :cond_3

    .line 495
    iget-object p2, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljxl/write/biff/SupbookRecord;->adjustInternal(I)V

    :cond_3
    return-object v7
.end method

.method private getInternalSheetIndex(Ljava/lang/String;)I
    .locals 3

    .line 949
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getSheetNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 950
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 952
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private rationalize()V
    .locals 5

    .line 927
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0}, Ljxl/biff/FormattingRecords;->rationalizeFonts()Ljxl/biff/IndexMapping;

    move-result-object v0

    .line 928
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/biff/FormattingRecords;->rationalizeDisplayFormats()Ljxl/biff/IndexMapping;

    move-result-object v1

    .line 929
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v2, v0, v1}, Ljxl/biff/FormattingRecords;->rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)Ljxl/biff/IndexMapping;

    move-result-object v2

    const/4 v3, 0x0

    .line 933
    :goto_0
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 935
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/write/biff/WritableSheetImpl;

    .line 936
    invoke-virtual {v4, v2, v0, v1}, Ljxl/write/biff/WritableSheetImpl;->rationalize(Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;Ljxl/biff/IndexMapping;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 2

    .line 1417
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-nez v0, :cond_0

    .line 1419
    new-instance v0, Ljxl/biff/drawing/DrawingGroup;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    invoke-direct {v0, v1}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/Origin;)V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 1422
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/DrawingGroup;->add(Ljxl/biff/drawing/DrawingGroupObject;)V

    return-void
.end method

.method public addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1541
    invoke-virtual/range {v0 .. v7}, Ljxl/write/biff/WritableWorkbookImpl;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIIIZ)V

    return-void
.end method

.method addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIIIZ)V
    .locals 11

    move-object v0, p0

    .line 1564
    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    .line 1569
    :cond_0
    invoke-interface {p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v5

    .line 1572
    new-instance v1, Ljxl/write/biff/NameRecord;

    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v2, v1

    move-object v3, p1

    move v6, p4

    move/from16 v7, p6

    move v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Ljxl/write/biff/NameRecord;-><init>(Ljava/lang/String;IIIIIIZ)V

    .line 1581
    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIZ)V
    .locals 11

    move-object v0, p0

    .line 1607
    iget-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    .line 1612
    :cond_0
    invoke-interface {p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getInternalSheetIndex(Ljava/lang/String;)I

    move-result v4

    .line 1613
    invoke-interface {p2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v5

    .line 1616
    new-instance v1, Ljxl/write/biff/NameRecord;

    move-object v2, v1

    move-object v3, p1

    move v6, p4

    move/from16 v7, p6

    move v8, p3

    move/from16 v9, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Ljxl/write/biff/NameRecord;-><init>(Ljxl/biff/BuiltInName;IIIIIIZ)V

    .line 1625
    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    iget-object v2, v0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addRCIRCell(Ljxl/write/biff/CellValue;)V
    .locals 1

    .line 1268
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/write/biff/JxlWriteException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->closeStream:Z

    invoke-virtual {v0, v1}, Ljxl/write/biff/File;->close(Z)V

    return-void
.end method

.method columnInserted(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 3

    .line 1280
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1281
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1284
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->columnInserted(Ljxl/Sheet;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method columnRemoved(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 3

    .line 1297
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1298
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1301
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->columnRemoved(Ljxl/Sheet;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public copySheet(ILjava/lang/String;I)V
    .locals 0

    .line 891
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object p1

    .line 892
    invoke-virtual {p0, p2, p3}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object p2

    check-cast p2, Ljxl/write/biff/WritableSheetImpl;

    .line 893
    invoke-virtual {p2, p1}, Ljxl/write/biff/WritableSheetImpl;->copy(Ljxl/write/WritableSheet;)V

    return-void
.end method

.method public copySheet(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 906
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;

    move-result-object p1

    .line 907
    invoke-virtual {p0, p2, p3}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object p2

    check-cast p2, Ljxl/write/biff/WritableSheetImpl;

    .line 908
    invoke-virtual {p2, p1}, Ljxl/write/biff/WritableSheetImpl;->copy(Ljxl/write/WritableSheet;)V

    return-void
.end method

.method createDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 2

    .line 1456
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-nez v0, :cond_0

    .line 1458
    new-instance v0, Ljxl/biff/drawing/DrawingGroup;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    invoke-direct {v0, v1}, Ljxl/biff/drawing/DrawingGroup;-><init>(Ljxl/biff/drawing/Origin;)V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 1461
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;
    .locals 1

    const/4 v0, 0x1

    .line 513
    invoke-direct {p0, p1, p2, v0}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;IZ)Ljxl/write/WritableSheet;

    move-result-object p1

    return-object p1
.end method

.method public findByName(Ljava/lang/String;)[Ljxl/Range;
    .locals 11

    .line 1384
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/biff/NameRecord;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1391
    :cond_0
    invoke-virtual {p1}, Ljxl/write/biff/NameRecord;->getRanges()[Ljxl/write/biff/NameRecord$NameRange;

    move-result-object p1

    .line 1393
    array-length v0, p1

    new-array v0, v0, [Ljxl/Range;

    const/4 v1, 0x0

    .line 1395
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1397
    new-instance v2, Ljxl/biff/RangeImpl;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {p0, v3}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(I)I

    move-result v5

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v6

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v7

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v3

    invoke-virtual {p0, v3}, Ljxl/write/biff/WritableWorkbookImpl;->getLastExternalSheetIndex(I)I

    move-result v8

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v9

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljxl/write/biff/NameRecord$NameRange;->getLastRow()I

    move-result v10

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Ljxl/biff/RangeImpl;-><init>(Ljxl/biff/WorkbookMethods;IIIIII)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findCellByName(Ljava/lang/String;)Ljxl/write/WritableCell;
    .locals 3

    .line 1350
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/biff/NameRecord;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1357
    :cond_0
    invoke-virtual {p1}, Ljxl/write/biff/NameRecord;->getRanges()[Ljxl/write/biff/NameRecord$NameRange;

    move-result-object p1

    const/4 v0, 0x0

    .line 1360
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljxl/write/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result v1

    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(I)I

    move-result v1

    .line 1361
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v1

    .line 1362
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljxl/write/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljxl/write/biff/NameRecord$NameRange;->getFirstRow()I

    move-result p1

    invoke-interface {v1, v2, p1}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object p1

    return-object p1
.end method

.method public getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;
    .locals 1

    .line 1232
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1}, Ljxl/biff/FormattingRecords;->getColourRGB(Ljxl/format/Colour;)Ljxl/format/RGB;

    move-result-object p1

    return-object p1
.end method

.method getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 1444
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getExternalSheetIndex(I)I
    .locals 1

    .line 1041
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v0, :cond_0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1046
    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1048
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result p1

    return p1
.end method

.method public getExternalSheetIndex(Ljava/lang/String;)I
    .locals 8

    .line 1081
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Ljxl/write/biff/ExternalSheetRecord;

    invoke-direct {v0}, Ljxl/write/biff/ExternalSheetRecord;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    .line 1085
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    new-instance v1, Ljxl/write/biff/SupbookRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v2, v3}, Ljxl/write/biff/SupbookRecord;-><init>(ILjxl/WorkbookSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1094
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    .line 1096
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/WritableSheetImpl;

    .line 1098
    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_5

    .line 1112
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/SupbookRecord;

    .line 1113
    invoke-virtual {v0}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v1

    sget-object v3, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Ljxl/write/biff/SupbookRecord;->getNumberOfSheets()I

    move-result v0

    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 1116
    :cond_3
    sget-object v0, Ljxl/write/biff/WritableWorkbookImpl;->logger:Lcommon/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Cannot find sheet "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " in supbook record"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 1119
    :cond_4
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {p1, v2, v4}, Ljxl/write/biff/ExternalSheetRecord;->getIndex(II)I

    move-result p1

    return p1

    :cond_5
    const/16 v0, 0x5d

    .line 1123
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v3, 0x5b

    .line 1124
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_a

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v0, 0x1

    .line 1132
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    .line 1133
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1136
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    .line 1141
    :goto_1
    iget-object v6, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    if-nez v0, :cond_8

    .line 1143
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/SupbookRecord;

    .line 1144
    invoke-virtual {v3}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v6

    sget-object v7, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v6, v7, :cond_7

    invoke-virtual {v3}, Ljxl/write/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v4, v2

    const/4 v0, 0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-nez v0, :cond_9

    .line 1154
    new-instance v3, Ljxl/write/biff/SupbookRecord;

    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v3, p1, v0}, Ljxl/write/biff/SupbookRecord;-><init>(Ljava/lang/String;Ljxl/WorkbookSettings;)V

    .line 1155
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1156
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_9
    invoke-virtual {v3, v5}, Ljxl/write/biff/SupbookRecord;->getSheetIndex(Ljava/lang/String;)I

    move-result p1

    .line 1161
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, v4, p1}, Ljxl/write/biff/ExternalSheetRecord;->getIndex(II)I

    move-result p1

    return p1

    :cond_a
    :goto_2
    return v4
.end method

.method public getExternalSheetName(I)Ljava/lang/String;
    .locals 3

    .line 970
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 971
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/SupbookRecord;

    .line 973
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v1, p1}, Ljxl/write/biff/ExternalSheetRecord;->getFirstTabIndex(I)I

    move-result p1

    .line 975
    invoke-virtual {v0}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v1

    sget-object v2, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v1, v2, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object p1

    .line 980
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 982
    :cond_0
    invoke-virtual {v0}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v1

    sget-object v2, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v1, v2, :cond_1

    .line 984
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljxl/write/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljxl/write/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "[UNKNOWN]"

    return-object p1
.end method

.method public getLastExternalSheetIndex(I)I
    .locals 1

    .line 1061
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v0, :cond_0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1066
    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1068
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result p1

    return p1
.end method

.method public getLastExternalSheetIndex(Ljava/lang/String;)I
    .locals 6

    .line 1171
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-nez v0, :cond_0

    .line 1173
    new-instance v0, Ljxl/write/biff/ExternalSheetRecord;

    invoke-direct {v0}, Ljxl/write/biff/ExternalSheetRecord;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    .line 1174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    .line 1175
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    new-instance v1, Ljxl/write/biff/SupbookRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v2, v3}, Ljxl/write/biff/SupbookRecord;-><init>(ILjxl/WorkbookSettings;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1180
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1184
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_2

    .line 1186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/WritableSheetImpl;

    .line 1188
    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const/4 p1, -0x1

    return p1

    .line 1205
    :cond_3
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/biff/SupbookRecord;

    .line 1206
    invoke-virtual {p1}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v0

    sget-object v3, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Ljxl/write/biff/SupbookRecord;->getNumberOfSheets()I

    move-result p1

    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 1209
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {p1, v2, v4}, Ljxl/write/biff/ExternalSheetRecord;->getIndex(II)I

    move-result p1

    return p1
.end method

.method public getLastExternalSheetName(I)Ljava/lang/String;
    .locals 3

    .line 1000
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v0, p1}, Ljxl/write/biff/ExternalSheetRecord;->getSupbookIndex(I)I

    move-result v0

    .line 1001
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/write/biff/SupbookRecord;

    .line 1003
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v1, p1}, Ljxl/write/biff/ExternalSheetRecord;->getLastTabIndex(I)I

    move-result p1

    .line 1005
    invoke-virtual {v0}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v1

    sget-object v2, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v1, v2, :cond_0

    .line 1008
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object p1

    .line 1010
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1012
    :cond_0
    invoke-virtual {v0}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object p1

    sget-object v0, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1014
    invoke-static {p1}, Lcommon/Assert;->verify(Z)V

    :cond_1
    const-string p1, "[UNKNOWN]"

    return-object p1
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 1243
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1244
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/biff/NameRecord;

    .line 1245
    invoke-virtual {p1}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNameIndex(Ljava/lang/String;)I
    .locals 1

    .line 1256
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->nameRecords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/biff/NameRecord;

    if-eqz p1, :cond_0

    .line 1257
    invoke-virtual {p1}, Ljxl/write/biff/NameRecord;->getIndex()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 419
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRangeNames()[Ljava/lang/String;
    .locals 3

    .line 1471
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 1476
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1477
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1479
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/NameRecord;

    .line 1480
    invoke-virtual {v2}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getReadSheet(I)Ljxl/Sheet;
    .locals 0

    .line 372
    invoke-virtual {p0, p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object p1

    return-object p1
.end method

.method getSettings()Ljxl/WorkbookSettings;
    .locals 1

    .line 1636
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    return-object v0
.end method

.method public getSheet(I)Ljxl/write/WritableSheet;
    .locals 1

    .line 383
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/WritableSheet;

    return-object p1
.end method

.method public getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;
    .locals 5

    .line 396
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    .line 399
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/WritableSheet;

    .line 403
    invoke-interface {v3}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    move-object v1, v3

    :cond_2
    return-object v1
.end method

.method public getSheetNames()[Ljava/lang/String;
    .locals 3

    .line 353
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 355
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 357
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    invoke-interface {v2}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSheets()[Ljxl/write/WritableSheet;
    .locals 3

    .line 337
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v0

    new-array v0, v0, [Ljxl/write/WritableSheet;

    const/4 v1, 0x0

    .line 339
    :goto_0
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 341
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getStyles()Ljxl/write/biff/Styles;
    .locals 1

    .line 1521
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->styles:Ljxl/write/biff/Styles;

    return-object v0
.end method

.method public getWorkbookBof()Ljxl/read/biff/BOFRecord;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWritableCell(Ljava/lang/String;)Ljxl/write/WritableCell;
    .locals 1

    .line 1650
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;

    move-result-object v0

    .line 1651
    invoke-interface {v0, p1}, Ljxl/write/WritableSheet;->getWritableCell(Ljava/lang/String;)Ljxl/write/WritableCell;

    move-result-object p1

    return-object p1
.end method

.method public importSheet(Ljava/lang/String;ILjxl/Sheet;)Ljxl/write/WritableSheet;
    .locals 0

    .line 1665
    invoke-virtual {p0, p1, p2}, Ljxl/write/biff/WritableWorkbookImpl;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object p1

    .line 1666
    move-object p2, p1

    check-cast p2, Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {p2, p3}, Ljxl/write/biff/WritableSheetImpl;->importSheet(Ljxl/Sheet;)V

    return-object p1
.end method

.method public moveSheet(II)Ljxl/write/WritableSheet;
    .locals 2

    const/4 v0, 0x0

    .line 588
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 589
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 590
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 591
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 593
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/write/WritableSheet;

    .line 594
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p1
.end method

.method removeDrawing(Ljxl/biff/drawing/Drawing;)V
    .locals 1

    .line 1432
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 1434
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/DrawingGroup;->remove(Ljxl/biff/drawing/DrawingGroupObject;)V

    return-void
.end method

.method public removeRangeName(Ljava/lang/String;)V
    .locals 4

    .line 1495
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 1497
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/NameRecord;

    .line 1498
    invoke-virtual {v3}, Ljxl/write/biff/NameRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1510
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public removeSheet(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    .line 529
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    goto :goto_0

    .line 531
    :cond_0
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 533
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 534
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 538
    :cond_1
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 541
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-eqz v2, :cond_2

    .line 543
    invoke-virtual {v2, p1}, Ljxl/write/biff/ExternalSheetRecord;->sheetRemoved(I)V

    .line 546
    :cond_2
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 548
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/SupbookRecord;

    .line 549
    invoke-virtual {v2}, Ljxl/write/biff/SupbookRecord;->getType()Ljxl/write/biff/SupbookRecord$SupbookType;

    move-result-object v3

    sget-object v4, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v3, v4, :cond_3

    .line 551
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljxl/write/biff/SupbookRecord;->adjustInternal(I)V

    .line 555
    :cond_3
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    .line 557
    :goto_1
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 559
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/NameRecord;

    .line 560
    invoke-virtual {v3}, Ljxl/write/biff/NameRecord;->getSheetRef()I

    move-result v4

    add-int/lit8 v5, p1, 0x1

    if-ne v4, v5, :cond_4

    .line 563
    invoke-virtual {v3, v0}, Ljxl/write/biff/NameRecord;->setSheetRef(I)V

    goto :goto_2

    :cond_4
    if-le v4, v5, :cond_6

    if-ge v4, v1, :cond_5

    const/4 v4, 0x1

    :cond_5
    sub-int/2addr v4, v1

    .line 571
    invoke-virtual {v3, v4}, Ljxl/write/biff/NameRecord;->setSheetRef(I)V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method rowInserted(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 3

    .line 1314
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1315
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1318
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->rowInserted(Ljxl/Sheet;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method rowRemoved(Ljxl/write/biff/WritableSheetImpl;I)V
    .locals 3

    .line 1331
    invoke-virtual {p1}, Ljxl/write/biff/WritableSheetImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v0

    .line 1332
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->rcirCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/CellValue;

    .line 1335
    invoke-virtual {v2, p1, v0, p2}, Ljxl/write/biff/CellValue;->rowRemoved(Ljxl/Sheet;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColourRGB(Ljxl/format/Colour;III)V
    .locals 1

    .line 1222
    iget-object v0, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljxl/biff/FormattingRecords;->setColourRGB(Ljxl/format/Colour;III)V

    return-void
.end method

.method public setOutputFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 445
    iget-object p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->setOutputFile(Ljava/io/OutputStream;)V

    return-void
.end method

.method public setProtected(Z)V
    .locals 0

    .line 918
    iput-boolean p1, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    return-void
.end method

.method public write()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 611
    :goto_0
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 613
    invoke-virtual {p0, v1}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljxl/write/biff/WritableSheetImpl;

    .line 617
    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->checkMergedBorders()V

    .line 620
    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 623
    sget-object v4, Ljxl/biff/BuiltInName;->PRINT_AREA:Ljxl/biff/BuiltInName;

    invoke-interface {v2}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v3

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v2}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v3

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v7

    invoke-interface {v2}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v3

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v8

    invoke-interface {v2}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v2

    invoke-interface {v2}, Ljxl/Cell;->getRow()I

    move-result v9

    const/4 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Ljxl/write/biff/WritableWorkbookImpl;->addNameArea(Ljxl/biff/BuiltInName;Ljxl/write/WritableSheet;IIIIZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_1
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getRationalizationDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 636
    invoke-direct {p0}, Ljxl/write/biff/WritableWorkbookImpl;->rationalize()V

    .line 640
    :cond_2
    new-instance v1, Ljxl/write/biff/BOFRecord;

    sget-object v2, Ljxl/write/biff/BOFRecord;->workbookGlobals:Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;

    invoke-direct {v1, v2}, Ljxl/write/biff/BOFRecord;-><init>(Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;)V

    .line 641
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 643
    new-instance v1, Ljxl/write/biff/InterfaceHeaderRecord;

    invoke-direct {v1}, Ljxl/write/biff/InterfaceHeaderRecord;-><init>()V

    .line 644
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 646
    new-instance v1, Ljxl/write/biff/MMSRecord;

    invoke-direct {v1, v0, v0}, Ljxl/write/biff/MMSRecord;-><init>(II)V

    .line 647
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 649
    new-instance v1, Ljxl/write/biff/InterfaceEndRecord;

    invoke-direct {v1}, Ljxl/write/biff/InterfaceEndRecord;-><init>()V

    .line 650
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 652
    new-instance v1, Ljxl/write/biff/WriteAccessRecord;

    invoke-direct {v1}, Ljxl/write/biff/WriteAccessRecord;-><init>()V

    .line 653
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 655
    new-instance v1, Ljxl/write/biff/CodepageRecord;

    invoke-direct {v1}, Ljxl/write/biff/CodepageRecord;-><init>()V

    .line 656
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 658
    new-instance v1, Ljxl/write/biff/DSFRecord;

    invoke-direct {v1}, Ljxl/write/biff/DSFRecord;-><init>()V

    .line 659
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 661
    new-instance v1, Ljxl/write/biff/TabIdRecord;

    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    invoke-direct {v1, v2}, Ljxl/write/biff/TabIdRecord;-><init>(I)V

    .line 662
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 664
    iget-boolean v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->containsMacros:Z

    if-eqz v1, :cond_3

    .line 666
    new-instance v1, Ljxl/write/biff/ObjProjRecord;

    invoke-direct {v1}, Ljxl/write/biff/ObjProjRecord;-><init>()V

    .line 667
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 670
    :cond_3
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz v1, :cond_4

    .line 672
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 675
    :cond_4
    new-instance v1, Ljxl/write/biff/FunctionGroupCountRecord;

    invoke-direct {v1}, Ljxl/write/biff/FunctionGroupCountRecord;-><init>()V

    .line 676
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 679
    new-instance v1, Ljxl/write/biff/WindowProtectRecord;

    invoke-direct {v1, v0}, Ljxl/write/biff/WindowProtectRecord;-><init>(Z)V

    .line 680
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 682
    new-instance v1, Ljxl/write/biff/ProtectRecord;

    iget-boolean v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->wbProtected:Z

    invoke-direct {v1, v2}, Ljxl/write/biff/ProtectRecord;-><init>(Z)V

    .line 683
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 685
    new-instance v1, Ljxl/write/biff/PasswordRecord;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljxl/write/biff/PasswordRecord;-><init>(Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 688
    new-instance v1, Ljxl/write/biff/Prot4RevRecord;

    invoke-direct {v1, v0}, Ljxl/write/biff/Prot4RevRecord;-><init>(Z)V

    .line 689
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 691
    new-instance v1, Ljxl/write/biff/Prot4RevPassRecord;

    invoke-direct {v1}, Ljxl/write/biff/Prot4RevPassRecord;-><init>()V

    .line 692
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 694
    new-instance v1, Ljxl/write/biff/Window1Record;

    invoke-direct {v1}, Ljxl/write/biff/Window1Record;-><init>()V

    .line 695
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 697
    new-instance v1, Ljxl/write/biff/BackupRecord;

    invoke-direct {v1, v0}, Ljxl/write/biff/BackupRecord;-><init>(Z)V

    .line 698
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 700
    new-instance v1, Ljxl/write/biff/HideobjRecord;

    invoke-direct {v1, v0}, Ljxl/write/biff/HideobjRecord;-><init>(Z)V

    .line 701
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 703
    new-instance v1, Ljxl/write/biff/NineteenFourRecord;

    invoke-direct {v1, v0}, Ljxl/write/biff/NineteenFourRecord;-><init>(Z)V

    .line 704
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 706
    new-instance v1, Ljxl/write/biff/PrecisionRecord;

    invoke-direct {v1, v0}, Ljxl/write/biff/PrecisionRecord;-><init>(Z)V

    .line 707
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 709
    new-instance v1, Ljxl/write/biff/RefreshAllRecord;

    invoke-direct {v1, v0}, Ljxl/write/biff/RefreshAllRecord;-><init>(Z)V

    .line 710
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 712
    new-instance v1, Ljxl/write/biff/BookboolRecord;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljxl/write/biff/BookboolRecord;-><init>(Z)V

    .line 713
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 716
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->fonts:Ljxl/biff/Fonts;

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v3}, Ljxl/biff/Fonts;->write(Ljxl/write/biff/File;)V

    .line 719
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v3}, Ljxl/biff/FormattingRecords;->write(Ljxl/write/biff/File;)V

    .line 722
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v1}, Ljxl/biff/FormattingRecords;->getPalette()Ljxl/biff/PaletteRecord;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 724
    iget-object v1, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-virtual {v3}, Ljxl/biff/FormattingRecords;->getPalette()Ljxl/biff/PaletteRecord;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 728
    :cond_5
    new-instance v1, Ljxl/write/biff/UsesElfsRecord;

    invoke-direct {v1}, Ljxl/write/biff/UsesElfsRecord;-><init>()V

    .line 729
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 733
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v1

    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 736
    :goto_1
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 738
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4}, Ljxl/write/biff/File;->getPos()I

    move-result v4

    aput v4, v1, v3

    .line 739
    invoke-virtual {p0, v3}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v4

    .line 740
    new-instance v5, Ljxl/write/biff/BoundsheetRecord;

    invoke-interface {v4}, Ljxl/Sheet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljxl/write/biff/BoundsheetRecord;-><init>(Ljava/lang/String;)V

    .line 742
    invoke-interface {v4}, Ljxl/Sheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/SheetSettings;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 744
    invoke-virtual {v5}, Ljxl/write/biff/BoundsheetRecord;->setHidden()V

    .line 747
    :cond_6
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->sheets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->isChartOnly()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 749
    invoke-virtual {v5}, Ljxl/write/biff/BoundsheetRecord;->setChartOnly()V

    .line 752
    :cond_7
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 755
    :cond_8
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    if-nez v3, :cond_a

    .line 757
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v3}, Ljxl/WorkbookSettings;->getExcelDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljxl/biff/CountryCode;->getCountryCode(Ljava/lang/String;)Ljxl/biff/CountryCode;

    move-result-object v3

    .line 759
    sget-object v4, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    const-string v5, " using "

    const-string v6, "Unknown country code "

    if-ne v3, v4, :cond_9

    .line 761
    sget-object v3, Ljxl/write/biff/WritableWorkbookImpl;->logger:Lcommon/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v7, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v7}, Ljxl/WorkbookSettings;->getExcelDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    invoke-virtual {v7}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 764
    sget-object v3, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    .line 766
    :cond_9
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v4}, Ljxl/WorkbookSettings;->getExcelRegionalSettings()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljxl/biff/CountryCode;->getCountryCode(Ljava/lang/String;)Ljxl/biff/CountryCode;

    move-result-object v4

    .line 768
    new-instance v7, Ljxl/write/biff/CountryRecord;

    invoke-direct {v7, v3, v4}, Ljxl/write/biff/CountryRecord;-><init>(Ljxl/biff/CountryCode;Ljxl/biff/CountryCode;)V

    iput-object v7, p0, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    .line 769
    sget-object v3, Ljxl/biff/CountryCode;->UNKNOWN:Ljxl/biff/CountryCode;

    if-ne v4, v3, :cond_a

    .line 771
    sget-object v3, Ljxl/write/biff/WritableWorkbookImpl;->logger:Lcommon/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Ljxl/write/biff/WritableWorkbookImpl;->settings:Ljxl/WorkbookSettings;

    invoke-virtual {v6}, Ljxl/WorkbookSettings;->getExcelDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    invoke-virtual {v5}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 774
    sget-object v3, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    .line 778
    :cond_a
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->countryRecord:Ljxl/write/biff/CountryRecord;

    invoke-virtual {v3, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 781
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->addInFunctionNames:[Ljava/lang/String;

    if-eqz v3, :cond_b

    array-length v3, v3

    if-lez v3, :cond_b

    .line 784
    new-instance v3, Ljxl/write/biff/SupbookRecord;

    invoke-direct {v3}, Ljxl/write/biff/SupbookRecord;-><init>()V

    .line 785
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    const/4 v3, 0x0

    .line 787
    :goto_2
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->addInFunctionNames:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_b

    .line 789
    new-instance v5, Ljxl/write/biff/ExternalNameRecord;

    aget-object v4, v4, v3

    invoke-direct {v5, v4}, Ljxl/write/biff/ExternalNameRecord;-><init>(Ljava/lang/String;)V

    .line 790
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 795
    :cond_b
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    .line 798
    :goto_3
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 800
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->supbooks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/write/biff/SupbookRecord;

    .line 801
    iget-object v5, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 803
    :cond_c
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->externSheet:Ljxl/write/biff/ExternalSheetRecord;

    invoke-virtual {v3, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 807
    :cond_d
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    .line 809
    :goto_4
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 811
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->names:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/write/biff/NameRecord;

    .line 812
    iget-object v5, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 817
    :cond_e
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    if-eqz v3, :cond_f

    .line 819
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v4}, Ljxl/biff/drawing/DrawingGroup;->write(Ljxl/write/biff/File;)V

    .line 822
    :cond_f
    iget-object v3, p0, Ljxl/write/biff/WritableWorkbookImpl;->sharedStrings:Ljxl/write/biff/SharedStrings;

    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v4}, Ljxl/write/biff/SharedStrings;->write(Ljxl/write/biff/File;)V

    .line 824
    new-instance v3, Ljxl/write/biff/EOFRecord;

    invoke-direct {v3}, Ljxl/write/biff/EOFRecord;-><init>()V

    .line 825
    iget-object v4, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 831
    :goto_5
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v5

    if-ge v3, v5, :cond_11

    if-nez v4, :cond_11

    .line 833
    invoke-virtual {p0, v3}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/WritableSheetImpl;

    .line 834
    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/SheetSettings;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v4, 0x1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_11
    if-nez v4, :cond_12

    .line 842
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v3

    check-cast v3, Ljxl/write/biff/WritableSheetImpl;

    .line 843
    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljxl/SheetSettings;->setSelected(Z)V

    .line 847
    :cond_12
    :goto_6
    invoke-virtual {p0}, Ljxl/write/biff/WritableWorkbookImpl;->getNumberOfSheets()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 851
    iget-object v2, p0, Ljxl/write/biff/WritableWorkbookImpl;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2}, Ljxl/write/biff/File;->getPos()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I)[B

    move-result-object v3

    aget v4, v1, v0

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljxl/write/biff/File;->setData([BI)V

    .line 855
    invoke-virtual {p0, v0}, Ljxl/write/biff/WritableWorkbookImpl;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v2

    check-cast v2, Ljxl/write/biff/WritableSheetImpl;

    .line 856
    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->write()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    return-void
.end method
