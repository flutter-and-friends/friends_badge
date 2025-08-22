.class final Ljxl/write/biff/SheetWriter;
.super Ljava/lang/Object;
.source "SheetWriter.java"


# static fields
.field static synthetic class$jxl$write$biff$SheetWriter:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

.field private footer:Ljxl/write/biff/FooterRecord;

.field private header:Ljxl/write/biff/HeaderRecord;

.field private hyperlinks:Ljava/util/ArrayList;

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private numCols:I

.field private numRows:I

.field private outputFile:Ljxl/write/biff/File;

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private rows:[Ljxl/write/biff/RowRecord;

.field private settings:Ljxl/SheetSettings;

.field private sheet:Ljxl/write/biff/WritableSheetImpl;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbookSettings:Ljxl/WorkbookSettings;

.field private workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget-object v0, Ljxl/write/biff/SheetWriter;->class$jxl$write$biff$SheetWriter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.SheetWriter"

    invoke-static {v0}, Ljxl/write/biff/SheetWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetWriter;->class$jxl$write$biff$SheetWriter:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetWriter;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/File;Ljxl/write/biff/WritableSheetImpl;Ljxl/WorkbookSettings;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    .line 184
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    .line 185
    new-instance p1, Ljxl/biff/WorkspaceInformationRecord;

    invoke-direct {p1}, Ljxl/biff/WorkspaceInformationRecord;-><init>()V

    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    .line 186
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    .line 188
    new-instance p1, Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-direct {p1, p3}, Ljxl/biff/drawing/SheetDrawingWriter;-><init>(Ljxl/WorkbookSettings;)V

    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 65
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

.method private getColumn(I)[Ljxl/Cell;
    .locals 6

    .line 989
    iget v0, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_1

    if-nez v3, :cond_1

    .line 993
    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v5, v4, v0

    if-eqz v5, :cond_0

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    .line 1005
    new-array v1, v1, [Ljxl/Cell;

    :goto_1
    if-gt v2, v0, :cond_3

    .line 1009
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v4, v3, v2

    if-eqz v4, :cond_2

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljxl/write/biff/RowRecord;->getCell(I)Ljxl/write/biff/CellValue;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private writeDataValidation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v0, :cond_3

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1089
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getComboBox()Ljxl/biff/drawing/ComboBox;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/ComboBox;->getObjectId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1091
    :goto_0
    new-instance v1, Ljxl/biff/DataValidation;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v2

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v3}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v3

    iget-object v4, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v1, v0, v2, v3, v4}, Ljxl/biff/DataValidation;-><init>(ILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1096
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1098
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 1099
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 1100
    new-instance v2, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-direct {v2, v1}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1102
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v1, v2}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_1

    .line 1104
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void

    .line 1109
    :cond_3
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/write/biff/CellValue;

    .line 1112
    invoke-virtual {v1}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v1

    .line 1113
    new-instance v2, Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v1}, Ljxl/CellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-direct {v2, v1}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DVParser;)V

    .line 1115
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    invoke-virtual {v1, v2}, Ljxl/biff/DataValidation;->add(Ljxl/biff/DataValiditySettingsRecord;)V

    goto :goto_2

    .line 1117
    :cond_4
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/DataValidation;->write(Ljxl/write/biff/File;)V

    return-void
.end method


# virtual methods
.method checkMergedBorders()V
    .locals 13

    .line 706
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    invoke-virtual {v0}, Ljxl/write/biff/MergedCells;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    .line 707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 708
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_16

    .line 710
    aget-object v3, v0, v2

    .line 711
    invoke-interface {v3}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v4

    .line 712
    invoke-interface {v4}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v5

    check-cast v5, Ljxl/biff/XFRecord;

    if-eqz v5, :cond_15

    .line 714
    invoke-virtual {v5}, Ljxl/biff/XFRecord;->hasBorders()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    invoke-virtual {v5}, Ljxl/biff/XFRecord;->isRead()Z

    move-result v6

    if-nez v6, :cond_15

    .line 720
    :try_start_0
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 721
    invoke-interface {v3}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v3

    .line 723
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v9, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v10, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 724
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 727
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 731
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 733
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 738
    :cond_0
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 740
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v9, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v9}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v9

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 745
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 748
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_1

    .line 752
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    :goto_1
    move-object v8, v4

    check-cast v8, Ljxl/write/WritableCell;

    invoke-interface {v8, v6}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 757
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-le v6, v8, :cond_7

    .line 760
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-eq v6, v8, :cond_4

    .line 762
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 763
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 764
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 767
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 771
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_3

    .line 774
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_2

    .line 778
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    :goto_2
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 787
    :cond_4
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v6

    add-int/2addr v6, v7

    :goto_3
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 789
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 790
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 791
    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 795
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v10

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    if-ne v10, v11, :cond_5

    .line 797
    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 802
    :cond_5
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_6

    .line 805
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_4

    .line 809
    :cond_6
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :goto_4
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-direct {v11, v12, v6, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 817
    :cond_7
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-le v6, v8, :cond_e

    .line 819
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-eq v6, v8, :cond_9

    .line 822
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 823
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 824
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 827
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 830
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_8

    .line 833
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_5

    .line 837
    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_5
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 845
    :cond_9
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v6

    add-int/2addr v6, v7

    .line 846
    :goto_6
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    if-ge v6, v8, :cond_b

    .line 848
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 849
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 850
    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 854
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_a

    .line 857
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_7

    .line 861
    :cond_a
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    :goto_7
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v12

    invoke-direct {v11, v12, v6, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 868
    :cond_b
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/2addr v6, v7

    .line 869
    :goto_8
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-ge v6, v8, :cond_e

    .line 871
    new-instance v8, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v8, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 872
    sget-object v10, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v11, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v12, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 873
    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 877
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v10

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v11

    if-ne v10, v11, :cond_c

    .line 879
    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v11

    sget-object v12, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v12}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v12

    invoke-virtual {v8, v10, v11, v12}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 884
    :cond_c
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v10, v9, :cond_d

    .line 887
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljxl/write/biff/CellXFRecord;

    goto :goto_9

    .line 891
    :cond_d
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    :goto_9
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v11, Ljxl/write/Blank;

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v11, v6, v12, v8}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v10, v11}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 899
    :cond_e
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v8

    if-gt v6, v8, :cond_f

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v6

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    if-le v6, v8, :cond_15

    .line 903
    :cond_f
    new-instance v6, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v6, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 904
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 905
    sget-object v8, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 908
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 912
    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v10

    if-ne v8, v10, :cond_10

    .line 914
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 919
    :cond_10
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v8

    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v10

    if-ne v8, v10, :cond_11

    .line 921
    sget-object v8, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v6, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 926
    :cond_11
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_12

    .line 929
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljxl/write/biff/CellXFRecord;

    goto :goto_a

    .line 933
    :cond_12
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :goto_a
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v11

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v12

    invoke-direct {v10, v11, v12, v6}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 941
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v6

    add-int/2addr v6, v7

    .line 942
    :goto_b
    invoke-interface {v3}, Ljxl/Cell;->getColumn()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 944
    new-instance v7, Ljxl/write/biff/CellXFRecord;

    invoke-direct {v7, v5}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 945
    sget-object v8, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v10, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object v11, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 946
    sget-object v8, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 950
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v8

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v10

    if-ne v8, v10, :cond_13

    .line 952
    sget-object v8, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v10, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v10}, Ljxl/biff/XFRecord;->getBorderLine(Ljxl/format/Border;)Ljxl/format/BorderLineStyle;

    move-result-object v10

    sget-object v11, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-virtual {v5, v11}, Ljxl/biff/XFRecord;->getBorderColour(Ljxl/format/Border;)Ljxl/format/Colour;

    move-result-object v11

    invoke-virtual {v7, v8, v10, v11}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 957
    :cond_13
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v9, :cond_14

    .line 960
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/write/biff/CellXFRecord;

    goto :goto_c

    .line 964
    :cond_14
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    :goto_c
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    new-instance v10, Ljxl/write/Blank;

    invoke-interface {v3}, Ljxl/Cell;->getRow()I

    move-result v11

    invoke-direct {v10, v6, v11, v7}, Ljxl/write/Blank;-><init>(IILjxl/format/CellFormat;)V

    invoke-virtual {v8, v10}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V
    :try_end_0
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :catch_0
    move-exception v3

    .line 974
    sget-object v4, Ljxl/write/biff/SheetWriter;->logger:Lcommon/Logger;

    invoke-virtual {v3}, Ljxl/write/WriteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    return-void
.end method

.method getCharts()[Ljxl/biff/drawing/Chart;
    .locals 1

    .line 695
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0}, Ljxl/biff/drawing/SheetDrawingWriter;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v0

    return-object v0
.end method

.method final getFooter()Ljxl/write/biff/FooterRecord;
    .locals 1

    .line 595
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->footer:Ljxl/write/biff/FooterRecord;

    return-object v0
.end method

.method final getHeader()Ljxl/write/biff/HeaderRecord;
    .locals 1

    .line 585
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->header:Ljxl/write/biff/HeaderRecord;

    return-object v0
.end method

.method getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;
    .locals 1

    .line 650
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    return-object v0
.end method

.method setAutoFilter(Ljxl/biff/AutoFilter;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    return-void
.end method

.method setButtonPropertySet(Ljxl/write/biff/ButtonPropertySetRecord;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-void
.end method

.method setChartOnly()V
    .locals 1

    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    return-void
.end method

.method setCharts([Ljxl/biff/drawing/Chart;)V
    .locals 1

    .line 674
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/SheetDrawingWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    return-void
.end method

.method setConditionalFormats(Ljava/util/ArrayList;)V
    .locals 0

    .line 1062
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    return-void
.end method

.method setDataValidation(Ljxl/biff/DataValidation;Ljava/util/ArrayList;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    .line 1052
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    return-void
.end method

.method setDimensions(II)V
    .locals 0

    .line 628
    iput p1, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    .line 629
    iput p2, p0, Ljxl/write/biff/SheetWriter;->numCols:I

    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;Z)V
    .locals 1

    .line 685
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    invoke-virtual {v0, p1, p2}, Ljxl/biff/drawing/SheetDrawingWriter;->setDrawings(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method setPLS(Ljxl/write/biff/PLSRecord;)V
    .locals 0

    .line 1030
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    return-void
.end method

.method setSettings(Ljxl/SheetSettings;)V
    .locals 0

    .line 640
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    return-void
.end method

.method setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 662
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    :cond_0
    return-void
.end method

.method setWriteData([Ljxl/write/biff/RowRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljxl/write/biff/MergedCells;Ljava/util/TreeSet;)V
    .locals 0

    .line 611
    iput-object p1, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    .line 612
    iput-object p2, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    .line 613
    iput-object p3, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    .line 614
    iput-object p4, p0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    .line 615
    iput-object p5, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    .line 616
    iput-object p6, p0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    return-void
.end method

.method public write()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 204
    iget-boolean v0, p0, Ljxl/write/biff/SheetWriter;->chartOnly:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    return-void

    .line 210
    :cond_1
    new-instance v0, Ljxl/write/biff/BOFRecord;

    sget-object v3, Ljxl/write/biff/BOFRecord;->sheet:Ljxl/write/biff/BOFRecord$SheetBOF;

    invoke-direct {v0, v3}, Ljxl/write/biff/BOFRecord;-><init>(Ljxl/write/biff/BOFRecord$SheetBOF;)V

    .line 211
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 214
    iget v0, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    div-int/lit8 v3, v0, 0x20

    mul-int/lit8 v4, v3, 0x20

    sub-int/2addr v0, v4

    if-eqz v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 220
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v0}, Ljxl/write/biff/File;->getPos()I

    move-result v0

    .line 224
    new-instance v4, Ljxl/write/biff/IndexRecord;

    iget v5, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    invoke-direct {v4, v2, v5, v3}, Ljxl/write/biff/IndexRecord;-><init>(III)V

    .line 225
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v4}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 227
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getAutomaticFormulaCalculation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    new-instance v5, Ljxl/write/biff/CalcModeRecord;

    sget-object v6, Ljxl/write/biff/CalcModeRecord;->automatic:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 230
    iget-object v6, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_1

    .line 234
    :cond_3
    new-instance v5, Ljxl/write/biff/CalcModeRecord;

    sget-object v6, Ljxl/write/biff/CalcModeRecord;->manual:Ljxl/write/biff/CalcModeRecord$CalcMode;

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcModeRecord;-><init>(Ljxl/write/biff/CalcModeRecord$CalcMode;)V

    .line 235
    iget-object v6, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v6, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 238
    :goto_1
    new-instance v5, Ljxl/write/biff/CalcCountRecord;

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljxl/write/biff/CalcCountRecord;-><init>(I)V

    .line 239
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 241
    new-instance v5, Ljxl/write/biff/RefModeRecord;

    invoke-direct {v5}, Ljxl/write/biff/RefModeRecord;-><init>()V

    .line 242
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 244
    new-instance v5, Ljxl/write/biff/IterationRecord;

    invoke-direct {v5, v2}, Ljxl/write/biff/IterationRecord;-><init>(Z)V

    .line 245
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 247
    new-instance v5, Ljxl/write/biff/DeltaRecord;

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DeltaRecord;-><init>(D)V

    .line 248
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 250
    new-instance v5, Ljxl/write/biff/SaveRecalcRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getRecalculateFormulasBeforeSave()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/SaveRecalcRecord;-><init>(Z)V

    .line 252
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 254
    new-instance v5, Ljxl/write/biff/PrintHeadersRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPrintHeaders()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PrintHeadersRecord;-><init>(Z)V

    .line 256
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 258
    new-instance v5, Ljxl/write/biff/PrintGridLinesRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPrintGridLines()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PrintGridLinesRecord;-><init>(Z)V

    .line 260
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 262
    new-instance v5, Ljxl/write/biff/GridSetRecord;

    invoke-direct {v5, v1}, Ljxl/write/biff/GridSetRecord;-><init>(Z)V

    .line 263
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 265
    new-instance v5, Ljxl/write/biff/GuttersRecord;

    invoke-direct {v5}, Ljxl/write/biff/GuttersRecord;-><init>()V

    .line 266
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 268
    new-instance v5, Ljxl/write/biff/DefaultRowHeightRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v7

    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v8}, Ljxl/SheetSettings;->getDefaultRowHeight()I

    move-result v8

    const/16 v9, 0xff

    if-eq v8, v9, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    :goto_2
    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DefaultRowHeightRecord;-><init>(IZ)V

    .line 272
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 274
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getFitToPages()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljxl/biff/WorkspaceInformationRecord;->setFitToPages(Z)V

    .line 275
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->workspaceOptions:Ljxl/biff/WorkspaceInformationRecord;

    invoke-virtual {v5, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 277
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 279
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    const/4 v7, 0x0

    .line 281
    :goto_3
    array-length v8, v5

    if-ge v7, v8, :cond_5

    .line 283
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->rowBreaks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 286
    :cond_5
    new-instance v7, Ljxl/write/biff/HorizontalPageBreaksRecord;

    invoke-direct {v7, v5}, Ljxl/write/biff/HorizontalPageBreaksRecord;-><init>([I)V

    .line 287
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 290
    :cond_6
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    .line 292
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    const/4 v7, 0x0

    .line 294
    :goto_4
    array-length v8, v5

    if-ge v7, v8, :cond_7

    .line 296
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->columnBreaks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 299
    :cond_7
    new-instance v7, Ljxl/write/biff/VerticalPageBreaksRecord;

    invoke-direct {v7, v5}, Ljxl/write/biff/VerticalPageBreaksRecord;-><init>([I)V

    .line 300
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 303
    :cond_8
    new-instance v5, Ljxl/write/biff/HeaderRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getHeader()Ljxl/HeaderFooter;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/HeaderRecord;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 306
    new-instance v5, Ljxl/write/biff/FooterRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getFooter()Ljxl/HeaderFooter;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/FooterRecord;-><init>(Ljava/lang/String;)V

    .line 307
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 309
    new-instance v5, Ljxl/write/biff/HorizontalCentreRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isHorizontalCentre()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/HorizontalCentreRecord;-><init>(Z)V

    .line 311
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 313
    new-instance v5, Ljxl/write/biff/VerticalCentreRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isVerticalCentre()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/VerticalCentreRecord;-><init>(Z)V

    .line 315
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 318
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_9

    .line 320
    new-instance v5, Ljxl/write/biff/LeftMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getLeftMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/LeftMarginRecord;-><init>(D)V

    .line 321
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 324
    :cond_9
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultWidthMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_a

    .line 326
    new-instance v5, Ljxl/write/biff/RightMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getRightMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/RightMarginRecord;-><init>(D)V

    .line 327
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 330
    :cond_a
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_b

    .line 332
    new-instance v5, Ljxl/write/biff/TopMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getTopMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/TopMarginRecord;-><init>(D)V

    .line 333
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 336
    :cond_b
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v7

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getDefaultHeightMargin()D

    move-result-wide v9

    cmpl-double v5, v7, v9

    if-eqz v5, :cond_c

    .line 338
    new-instance v5, Ljxl/write/biff/BottomMarginRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getBottomMargin()D

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/BottomMarginRecord;-><init>(D)V

    .line 339
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 342
    :cond_c
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->plsRecord:Ljxl/write/biff/PLSRecord;

    if-eqz v5, :cond_d

    .line 344
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 347
    :cond_d
    new-instance v5, Ljxl/write/biff/SetupRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v5, v7}, Ljxl/write/biff/SetupRecord;-><init>(Ljxl/SheetSettings;)V

    .line 348
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 350
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->isProtected()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 352
    new-instance v5, Ljxl/write/biff/ProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ProtectRecord;-><init>(Z)V

    .line 353
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 355
    new-instance v5, Ljxl/write/biff/ScenarioProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ScenarioProtectRecord;-><init>(Z)V

    .line 357
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 359
    new-instance v5, Ljxl/write/biff/ObjectProtectRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->isProtected()Z

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/ObjectProtectRecord;-><init>(Z)V

    .line 361
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 363
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 365
    new-instance v5, Ljxl/write/biff/PasswordRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PasswordRecord;-><init>(Ljava/lang/String;)V

    .line 366
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_5

    .line 368
    :cond_e
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v5

    if-eqz v5, :cond_f

    .line 370
    new-instance v5, Ljxl/write/biff/PasswordRecord;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getPasswordHash()I

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/PasswordRecord;-><init>(I)V

    .line 371
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 375
    :cond_f
    :goto_5
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5}, Ljxl/write/biff/File;->getPos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljxl/write/biff/IndexRecord;->setDataStartPosition(I)V

    .line 376
    new-instance v5, Ljxl/write/biff/DefaultColumnWidth;

    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v7}, Ljxl/SheetSettings;->getDefaultColumnWidth()I

    move-result v7

    invoke-direct {v5, v7}, Ljxl/write/biff/DefaultColumnWidth;-><init>(I)V

    .line 378
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 381
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v5

    invoke-virtual {v5}, Ljxl/write/biff/Styles;->getNormalStyle()Ljxl/write/WritableCellFormat;

    move-result-object v5

    .line 383
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->sheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v7}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/write/biff/WritableWorkbookImpl;->getStyles()Ljxl/write/biff/Styles;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/write/biff/Styles;->getDefaultDateFormat()Ljxl/write/WritableCellFormat;

    move-result-object v7

    .line 388
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 390
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljxl/write/biff/ColumnInfoRecord;

    .line 393
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v10

    const/16 v11, 0x100

    if-ge v10, v11, :cond_11

    .line 395
    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v10, v9}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 398
    :cond_11
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getCellFormat()Ljxl/biff/XFRecord;

    move-result-object v10

    if-eq v10, v5, :cond_10

    .line 400
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v12

    if-ge v12, v11, :cond_10

    .line 403
    invoke-virtual {v9}, Ljxl/write/biff/ColumnInfoRecord;->getColumn()I

    move-result v9

    invoke-direct {p0, v9}, Ljxl/write/biff/SheetWriter;->getColumn(I)[Ljxl/Cell;

    move-result-object v9

    const/4 v11, 0x0

    .line 405
    :goto_6
    array-length v12, v9

    if-ge v11, v12, :cond_10

    .line 407
    aget-object v12, v9, v11

    if-eqz v12, :cond_13

    aget-object v12, v9, v11

    invoke-interface {v12}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v12

    if-eq v12, v5, :cond_12

    aget-object v12, v9, v11

    invoke-interface {v12}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v12

    if-ne v12, v7, :cond_13

    .line 413
    :cond_12
    aget-object v12, v9, v11

    check-cast v12, Ljxl/write/WritableCell;

    invoke-interface {v12, v10}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 420
    :cond_14
    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->autoFilter:Ljxl/biff/AutoFilter;

    if-eqz v5, :cond_15

    .line 422
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v5, v7}, Ljxl/biff/AutoFilter;->write(Ljxl/write/biff/File;)V

    .line 425
    :cond_15
    new-instance v5, Ljxl/write/biff/DimensionRecord;

    iget v7, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    iget v8, p0, Ljxl/write/biff/SheetWriter;->numCols:I

    invoke-direct {v5, v7, v8}, Ljxl/write/biff/DimensionRecord;-><init>(II)V

    .line 426
    iget-object v7, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v7, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v3, :cond_1a

    .line 431
    new-instance v7, Ljxl/write/biff/DBCellRecord;

    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-direct {v7, v8}, Ljxl/write/biff/DBCellRecord;-><init>(I)V

    .line 433
    iget v8, p0, Ljxl/write/biff/SheetWriter;->numRows:I

    mul-int/lit8 v9, v5, 0x20

    sub-int/2addr v8, v9

    const/16 v10, 0x20

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v10, v9

    const/4 v11, 0x1

    :goto_8
    add-int v12, v9, v8

    if-ge v10, v12, :cond_17

    .line 439
    iget-object v12, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v13, v12, v10

    if-eqz v13, :cond_16

    .line 441
    aget-object v12, v12, v10

    iget-object v13, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v12, v13}, Ljxl/write/biff/RowRecord;->write(Ljxl/write/biff/File;)V

    if-eqz v11, :cond_16

    .line 444
    iget-object v11, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v11}, Ljxl/write/biff/File;->getPos()I

    move-result v11

    invoke-virtual {v7, v11}, Ljxl/write/biff/DBCellRecord;->setCellOffset(I)V

    const/4 v11, 0x0

    :cond_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_17
    :goto_9
    if-ge v9, v12, :cond_19

    .line 453
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v8, v8, v9

    if-eqz v8, :cond_18

    .line 455
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v7, v8}, Ljxl/write/biff/DBCellRecord;->addCellRowPosition(I)V

    .line 456
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->rows:[Ljxl/write/biff/RowRecord;

    aget-object v8, v8, v9

    iget-object v10, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v10}, Ljxl/write/biff/RowRecord;->writeCells(Ljxl/write/biff/File;)V

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 461
    :cond_19
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v4, v8}, Ljxl/write/biff/IndexRecord;->addBlockPosition(I)V

    .line 465
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8}, Ljxl/write/biff/File;->getPos()I

    move-result v8

    invoke-virtual {v7, v8}, Ljxl/write/biff/DBCellRecord;->setPosition(I)V

    .line 466
    iget-object v8, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v8, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 470
    :cond_1a
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-virtual {v1}, Ljxl/WorkbookSettings;->getDrawingsDisabled()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 472
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->drawingWriter:Ljxl/biff/drawing/SheetDrawingWriter;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v3}, Ljxl/biff/drawing/SheetDrawingWriter;->write(Ljxl/write/biff/File;)V

    .line 475
    :cond_1b
    new-instance v1, Ljxl/write/biff/Window2Record;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-direct {v1, v3}, Ljxl/write/biff/Window2Record;-><init>(Ljxl/SheetSettings;)V

    .line 476
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 479
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_a

    .line 525
    :cond_1c
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    invoke-direct {v1, v3, v2, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 527
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto/16 :goto_b

    .line 482
    :cond_1d
    :goto_a
    new-instance v1, Ljxl/write/biff/PaneRecord;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v3

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v5}, Ljxl/write/biff/PaneRecord;-><init>(II)V

    .line 484
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 487
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    invoke-direct {v1, v3, v2, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 489
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 492
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 494
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->upperRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v5, v2}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 496
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 500
    :cond_1e
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 502
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v3, Ljxl/write/biff/SelectionRecord;->lowerLeft:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v3, v2, v5}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 504
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 508
    :cond_1f
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v1

    if-eqz v1, :cond_20

    .line 511
    new-instance v1, Ljxl/write/biff/SelectionRecord;

    sget-object v2, Ljxl/write/biff/SelectionRecord;->lowerRight:Ljxl/write/biff/SelectionRecord$PaneType;

    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v3}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v3

    iget-object v5, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v5}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v5

    invoke-direct {v1, v2, v3, v5}, Ljxl/write/biff/SelectionRecord;-><init>(Ljxl/write/biff/SelectionRecord$PaneType;II)V

    .line 515
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 518
    :cond_20
    new-instance v1, Ljxl/write/biff/Weird1Record;

    invoke-direct {v1}, Ljxl/write/biff/Weird1Record;-><init>()V

    .line 519
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 531
    :goto_b
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v1}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v1

    if-eq v1, v6, :cond_21

    .line 533
    new-instance v1, Ljxl/write/biff/SCLRecord;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->settings:Ljxl/SheetSettings;

    invoke-virtual {v2}, Ljxl/SheetSettings;->getZoomFactor()I

    move-result v2

    invoke-direct {v1, v2}, Ljxl/write/biff/SCLRecord;-><init>(I)V

    .line 534
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 538
    :cond_21
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->mergedCells:Ljxl/write/biff/MergedCells;

    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v1, v2}, Ljxl/write/biff/MergedCells;->write(Ljxl/write/biff/File;)V

    .line 541
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 543
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 545
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/write/WritableHyperlink;

    .line 546
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v3, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_c

    .line 549
    :cond_22
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    if-eqz v1, :cond_23

    .line 551
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 555
    :cond_23
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->dataValidation:Ljxl/biff/DataValidation;

    if-nez v1, :cond_24

    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 557
    :cond_24
    invoke-direct {p0}, Ljxl/write/biff/SheetWriter;->writeDataValidation()V

    .line 561
    :cond_25
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 563
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->conditionalFormats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 565
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/ConditionalFormat;

    .line 566
    iget-object v3, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v3}, Ljxl/biff/ConditionalFormat;->write(Ljxl/write/biff/File;)V

    goto :goto_d

    .line 570
    :cond_26
    new-instance v1, Ljxl/write/biff/EOFRecord;

    invoke-direct {v1}, Ljxl/write/biff/EOFRecord;-><init>()V

    .line 571
    iget-object v2, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v2, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 575
    iget-object v1, p0, Ljxl/write/biff/SheetWriter;->outputFile:Ljxl/write/biff/File;

    invoke-virtual {v4}, Ljxl/write/biff/IndexRecord;->getData()[B

    move-result-object v2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v2, v0}, Ljxl/write/biff/File;->setData([BI)V

    return-void
.end method
