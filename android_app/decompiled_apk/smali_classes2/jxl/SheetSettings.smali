.class public final Ljxl/SheetSettings;
.super Ljava/lang/Object;
.source "SheetSettings.java"


# static fields
.field private static final DEFAULT_DEFAULT_COLUMN_WIDTH:I = 0x8

.field public static final DEFAULT_DEFAULT_ROW_HEIGHT:I = 0xff

.field private static final DEFAULT_FOOTER_MARGIN:D = 0.5

.field private static final DEFAULT_HEADER_MARGIN:D = 0.5

.field private static final DEFAULT_HEIGHT_MARGIN:D = 1.0

.field private static final DEFAULT_NORMAL_MAGNIFICATION:I = 0x64

.field private static final DEFAULT_ORIENTATION:Ljxl/format/PageOrientation;

.field private static final DEFAULT_PAGE_BREAK_PREVIEW_MAGNIFICATION:I = 0x3c

.field private static final DEFAULT_PAPER_SIZE:Ljxl/format/PaperSize;

.field private static final DEFAULT_PRINT_RESOLUTION:I = 0x12c

.field private static final DEFAULT_WIDTH_MARGIN:D = 0.75

.field private static final DEFAULT_ZOOM_FACTOR:I = 0x64


# instance fields
.field private automaticFormulaCalculation:Z

.field private bottomMargin:D

.field private copies:I

.field private defaultColumnWidth:I

.field private defaultRowHeight:I

.field private displayZeroValues:Z

.field private fitHeight:I

.field private fitToPages:Z

.field private fitWidth:I

.field private footer:Ljxl/HeaderFooter;

.field private footerMargin:D

.field private header:Ljxl/HeaderFooter;

.field private headerMargin:D

.field private hidden:Z

.field private horizontalCentre:Z

.field private horizontalFreeze:I

.field private horizontalPrintResolution:I

.field private leftMargin:D

.field private normalMagnification:I

.field private orientation:Ljxl/format/PageOrientation;

.field private pageBreakPreviewMagnification:I

.field private pageBreakPreviewMode:Z

.field private pageStart:I

.field private paperSize:Ljxl/format/PaperSize;

.field private password:Ljava/lang/String;

.field private passwordHash:I

.field private printArea:Ljxl/Range;

.field private printGridLines:Z

.field private printHeaders:Z

.field private recalculateFormulasBeforeSave:Z

.field private rightMargin:D

.field private scaleFactor:I

.field private selected:Z

.field private sheet:Ljxl/Sheet;

.field private sheetProtected:Z

.field private showGridLines:Z

.field private topMargin:D

.field private verticalCentre:Z

.field private verticalFreeze:I

.field private verticalPrintResolution:I

.field private zoomFactor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 248
    sget-object v0, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    sput-object v0, Ljxl/SheetSettings;->DEFAULT_ORIENTATION:Ljxl/format/PageOrientation;

    .line 250
    sget-object v0, Ljxl/format/PaperSize;->A4:Ljxl/format/PaperSize;

    sput-object v0, Ljxl/SheetSettings;->DEFAULT_PAPER_SIZE:Ljxl/format/PaperSize;

    return-void
.end method

.method public constructor <init>(Ljxl/Sheet;)V
    .locals 3

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    .line 274
    sget-object p1, Ljxl/SheetSettings;->DEFAULT_ORIENTATION:Ljxl/format/PageOrientation;

    iput-object p1, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    .line 275
    sget-object p1, Ljxl/SheetSettings;->DEFAULT_PAPER_SIZE:Ljxl/format/PaperSize;

    iput-object p1, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    const/4 p1, 0x0

    .line 276
    iput-boolean p1, p0, Ljxl/SheetSettings;->sheetProtected:Z

    .line 277
    iput-boolean p1, p0, Ljxl/SheetSettings;->hidden:Z

    .line 278
    iput-boolean p1, p0, Ljxl/SheetSettings;->selected:Z

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 279
    iput-wide v0, p0, Ljxl/SheetSettings;->headerMargin:D

    .line 280
    iput-wide v0, p0, Ljxl/SheetSettings;->footerMargin:D

    const/16 v0, 0x12c

    .line 281
    iput v0, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    .line 282
    iput v0, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 283
    iput-wide v0, p0, Ljxl/SheetSettings;->leftMargin:D

    .line 284
    iput-wide v0, p0, Ljxl/SheetSettings;->rightMargin:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 285
    iput-wide v0, p0, Ljxl/SheetSettings;->topMargin:D

    .line 286
    iput-wide v0, p0, Ljxl/SheetSettings;->bottomMargin:D

    .line 287
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Ljxl/SheetSettings;->showGridLines:Z

    .line 289
    iput-boolean p1, p0, Ljxl/SheetSettings;->printGridLines:Z

    .line 290
    iput-boolean p1, p0, Ljxl/SheetSettings;->printHeaders:Z

    .line 291
    iput-boolean p1, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    .line 292
    iput-boolean v0, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    const/16 v1, 0x8

    .line 293
    iput v1, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    const/16 v1, 0xff

    .line 294
    iput v1, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    const/16 v1, 0x64

    .line 295
    iput v1, p0, Ljxl/SheetSettings;->zoomFactor:I

    const/16 v2, 0x3c

    .line 296
    iput v2, p0, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    .line 297
    iput v1, p0, Ljxl/SheetSettings;->normalMagnification:I

    .line 298
    iput p1, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    .line 299
    iput p1, p0, Ljxl/SheetSettings;->verticalFreeze:I

    .line 300
    iput v0, p0, Ljxl/SheetSettings;->copies:I

    .line 301
    new-instance p1, Ljxl/HeaderFooter;

    invoke-direct {p1}, Ljxl/HeaderFooter;-><init>()V

    iput-object p1, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    .line 302
    new-instance p1, Ljxl/HeaderFooter;

    invoke-direct {p1}, Ljxl/HeaderFooter;-><init>()V

    iput-object p1, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    .line 303
    iput-boolean v0, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    .line 304
    iput-boolean v0, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    return-void
.end method

.method public constructor <init>(Ljxl/SheetSettings;Ljxl/Sheet;)V
    .locals 6

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 313
    :goto_0
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 315
    iput-object p2, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    .line 316
    iget-object p2, p1, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    iput-object p2, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    .line 317
    iget-object p2, p1, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    iput-object p2, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    .line 318
    iget-boolean p2, p1, Ljxl/SheetSettings;->sheetProtected:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->sheetProtected:Z

    .line 319
    iget-boolean p2, p1, Ljxl/SheetSettings;->hidden:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->hidden:Z

    .line 320
    iput-boolean v0, p0, Ljxl/SheetSettings;->selected:Z

    .line 321
    iget-wide v0, p1, Ljxl/SheetSettings;->headerMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->headerMargin:D

    .line 322
    iget-wide v0, p1, Ljxl/SheetSettings;->footerMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->footerMargin:D

    .line 323
    iget p2, p1, Ljxl/SheetSettings;->scaleFactor:I

    iput p2, p0, Ljxl/SheetSettings;->scaleFactor:I

    .line 324
    iget p2, p1, Ljxl/SheetSettings;->pageStart:I

    iput p2, p0, Ljxl/SheetSettings;->pageStart:I

    .line 325
    iget p2, p1, Ljxl/SheetSettings;->fitWidth:I

    iput p2, p0, Ljxl/SheetSettings;->fitWidth:I

    .line 326
    iget p2, p1, Ljxl/SheetSettings;->fitHeight:I

    iput p2, p0, Ljxl/SheetSettings;->fitHeight:I

    .line 327
    iget p2, p1, Ljxl/SheetSettings;->horizontalPrintResolution:I

    iput p2, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    .line 328
    iget p2, p1, Ljxl/SheetSettings;->verticalPrintResolution:I

    iput p2, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    .line 329
    iget-wide v0, p1, Ljxl/SheetSettings;->leftMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->leftMargin:D

    .line 330
    iget-wide v0, p1, Ljxl/SheetSettings;->rightMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->rightMargin:D

    .line 331
    iget-wide v0, p1, Ljxl/SheetSettings;->topMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->topMargin:D

    .line 332
    iget-wide v0, p1, Ljxl/SheetSettings;->bottomMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->bottomMargin:D

    .line 333
    iget-boolean p2, p1, Ljxl/SheetSettings;->fitToPages:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->fitToPages:Z

    .line 334
    iget-object p2, p1, Ljxl/SheetSettings;->password:Ljava/lang/String;

    iput-object p2, p0, Ljxl/SheetSettings;->password:Ljava/lang/String;

    .line 335
    iget p2, p1, Ljxl/SheetSettings;->passwordHash:I

    iput p2, p0, Ljxl/SheetSettings;->passwordHash:I

    .line 336
    iget p2, p1, Ljxl/SheetSettings;->defaultColumnWidth:I

    iput p2, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    .line 337
    iget p2, p1, Ljxl/SheetSettings;->defaultRowHeight:I

    iput p2, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    .line 338
    iget p2, p1, Ljxl/SheetSettings;->zoomFactor:I

    iput p2, p0, Ljxl/SheetSettings;->zoomFactor:I

    .line 339
    iget p2, p1, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    iput p2, p0, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    .line 340
    iget p2, p1, Ljxl/SheetSettings;->normalMagnification:I

    iput p2, p0, Ljxl/SheetSettings;->normalMagnification:I

    .line 341
    iget-boolean p2, p1, Ljxl/SheetSettings;->showGridLines:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->showGridLines:Z

    .line 342
    iget-boolean p2, p1, Ljxl/SheetSettings;->displayZeroValues:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    .line 343
    iget-boolean p2, p1, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    .line 344
    iget p2, p1, Ljxl/SheetSettings;->horizontalFreeze:I

    iput p2, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    .line 345
    iget p2, p1, Ljxl/SheetSettings;->verticalFreeze:I

    iput p2, p0, Ljxl/SheetSettings;->verticalFreeze:I

    .line 346
    iget-boolean p2, p1, Ljxl/SheetSettings;->horizontalCentre:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->horizontalCentre:Z

    .line 347
    iget-boolean p2, p1, Ljxl/SheetSettings;->verticalCentre:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->verticalCentre:Z

    .line 348
    iget p2, p1, Ljxl/SheetSettings;->copies:I

    iput p2, p0, Ljxl/SheetSettings;->copies:I

    .line 349
    new-instance p2, Ljxl/HeaderFooter;

    iget-object v0, p1, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    invoke-direct {p2, v0}, Ljxl/HeaderFooter;-><init>(Ljxl/HeaderFooter;)V

    iput-object p2, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    .line 350
    new-instance p2, Ljxl/HeaderFooter;

    iget-object v0, p1, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    invoke-direct {p2, v0}, Ljxl/HeaderFooter;-><init>(Ljxl/HeaderFooter;)V

    iput-object p2, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    .line 351
    iget-boolean p2, p1, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    .line 352
    iget-boolean p2, p1, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    .line 354
    iget-object p2, p1, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    if-eqz p2, :cond_1

    .line 356
    new-instance p2, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v4

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object p1

    invoke-interface {p1}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object p1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p2, p0, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAutomaticFormulaCalculation()Z
    .locals 1

    .line 1169
    iget-boolean v0, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    return v0
.end method

.method public getBottomMargin()D
    .locals 2

    .line 718
    iget-wide v0, p0, Ljxl/SheetSettings;->bottomMargin:D

    return-wide v0
.end method

.method public getCopies()I
    .locals 1

    .line 1067
    iget v0, p0, Ljxl/SheetSettings;->copies:I

    return v0
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    .line 806
    iget v0, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    return v0
.end method

.method public getDefaultHeightMargin()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public getDefaultRowHeight()I
    .locals 1

    .line 826
    iget v0, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    return v0
.end method

.method public getDefaultWidthMargin()D
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    return-wide v0
.end method

.method public getDisplayZeroValues()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    return v0
.end method

.method public getFitHeight()I
    .locals 1

    .line 598
    iget v0, p0, Ljxl/SheetSettings;->fitHeight:I

    return v0
.end method

.method public getFitToPages()Z
    .locals 1

    .line 747
    iget-boolean v0, p0, Ljxl/SheetSettings;->fitToPages:Z

    return v0
.end method

.method public getFitWidth()I
    .locals 1

    .line 577
    iget v0, p0, Ljxl/SheetSettings;->fitWidth:I

    return v0
.end method

.method public getFooter()Ljxl/HeaderFooter;
    .locals 1

    .line 1107
    iget-object v0, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    return-object v0
.end method

.method public getFooterMargin()D
    .locals 2

    .line 462
    iget-wide v0, p0, Ljxl/SheetSettings;->footerMargin:D

    return-wide v0
.end method

.method public getHeader()Ljxl/HeaderFooter;
    .locals 1

    .line 1077
    iget-object v0, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    return-object v0
.end method

.method public getHeaderMargin()D
    .locals 2

    .line 442
    iget-wide v0, p0, Ljxl/SheetSettings;->headerMargin:D

    return-wide v0
.end method

.method public getHorizontalFreeze()I
    .locals 1

    .line 1016
    iget v0, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    return v0
.end method

.method public getHorizontalPrintResolution()I
    .locals 1

    .line 618
    iget v0, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    return v0
.end method

.method public getLeftMargin()D
    .locals 2

    .line 678
    iget-wide v0, p0, Ljxl/SheetSettings;->leftMargin:D

    return-wide v0
.end method

.method public getNormalMagnification()I
    .locals 1

    .line 893
    iget v0, p0, Ljxl/SheetSettings;->normalMagnification:I

    return v0
.end method

.method public getOrientation()Ljxl/format/PageOrientation;
    .locals 1

    .line 382
    iget-object v0, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    return-object v0
.end method

.method public getPageBreakPreviewMagnification()I
    .locals 1

    .line 871
    iget v0, p0, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    return v0
.end method

.method public getPageBreakPreviewMode()Z
    .locals 1

    .line 955
    iget-boolean v0, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    return v0
.end method

.method public getPageStart()I
    .locals 1

    .line 555
    iget v0, p0, Ljxl/SheetSettings;->pageStart:I

    return v0
.end method

.method public getPaperSize()Ljxl/format/PaperSize;
    .locals 1

    .line 402
    iget-object v0, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 766
    iget-object v0, p0, Ljxl/SheetSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordHash()I
    .locals 1

    .line 786
    iget v0, p0, Ljxl/SheetSettings;->passwordHash:I

    return v0
.end method

.method public getPrintArea()Ljxl/Range;
    .locals 1

    .line 1218
    iget-object v0, p0, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    return-object v0
.end method

.method public getPrintGridLines()Z
    .locals 1

    .line 975
    iget-boolean v0, p0, Ljxl/SheetSettings;->printGridLines:Z

    return v0
.end method

.method public getPrintHeaders()Z
    .locals 1

    .line 995
    iget-boolean v0, p0, Ljxl/SheetSettings;->printHeaders:Z

    return v0
.end method

.method public getRecalculateFormulasBeforeSave()Z
    .locals 1

    .line 1191
    iget-boolean v0, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    return v0
.end method

.method public getRightMargin()D
    .locals 2

    .line 658
    iget-wide v0, p0, Ljxl/SheetSettings;->rightMargin:D

    return-wide v0
.end method

.method public getScaleFactor()I
    .locals 1

    .line 535
    iget v0, p0, Ljxl/SheetSettings;->scaleFactor:I

    return v0
.end method

.method public getShowGridLines()Z
    .locals 1

    .line 935
    iget-boolean v0, p0, Ljxl/SheetSettings;->showGridLines:Z

    return v0
.end method

.method public getTopMargin()D
    .locals 2

    .line 698
    iget-wide v0, p0, Ljxl/SheetSettings;->topMargin:D

    return-wide v0
.end method

.method public getVerticalFreeze()I
    .locals 1

    .line 1037
    iget v0, p0, Ljxl/SheetSettings;->verticalFreeze:I

    return v0
.end method

.method public getVerticalPrintResolution()I
    .locals 1

    .line 638
    iget v0, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    return v0
.end method

.method public getZoomFactor()I
    .locals 1

    .line 848
    iget v0, p0, Ljxl/SheetSettings;->zoomFactor:I

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Ljxl/SheetSettings;->hidden:Z

    return v0
.end method

.method public isHorizontalCentre()Z
    .locals 1

    .line 1117
    iget-boolean v0, p0, Ljxl/SheetSettings;->horizontalCentre:Z

    return v0
.end method

.method public isProtected()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Ljxl/SheetSettings;->sheetProtected:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Ljxl/SheetSettings;->selected:Z

    return v0
.end method

.method public isVerticalCentre()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Ljxl/SheetSettings;->verticalCentre:Z

    return v0
.end method

.method public setAutomaticFormulaCalculation(Z)V
    .locals 0

    .line 1158
    iput-boolean p1, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    return-void
.end method

.method public setBottomMargin(D)V
    .locals 0

    .line 708
    iput-wide p1, p0, Ljxl/SheetSettings;->bottomMargin:D

    return-void
.end method

.method public setCopies(I)V
    .locals 0

    .line 1057
    iput p1, p0, Ljxl/SheetSettings;->copies:I

    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 0

    .line 816
    iput p1, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    return-void
.end method

.method public setDefaultRowHeight(I)V
    .locals 0

    .line 836
    iput p1, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    return-void
.end method

.method public setDisplayZeroValues(Z)V
    .locals 0

    .line 925
    iput-boolean p1, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    return-void
.end method

.method public setFitHeight(I)V
    .locals 0

    .line 587
    iput p1, p0, Ljxl/SheetSettings;->fitHeight:I

    const/4 p1, 0x1

    .line 588
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setFitToPages(Z)V
    .locals 0

    .line 756
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setFitWidth(I)V
    .locals 0

    .line 566
    iput p1, p0, Ljxl/SheetSettings;->fitWidth:I

    const/4 p1, 0x1

    .line 567
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setFooter(Ljxl/HeaderFooter;)V
    .locals 0

    .line 1097
    iput-object p1, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    return-void
.end method

.method public setFooterMargin(D)V
    .locals 0

    .line 452
    iput-wide p1, p0, Ljxl/SheetSettings;->footerMargin:D

    return-void
.end method

.method public setHeader(Ljxl/HeaderFooter;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    return-void
.end method

.method public setHeaderMargin(D)V
    .locals 0

    .line 432
    iput-wide p1, p0, Ljxl/SheetSettings;->headerMargin:D

    return-void
.end method

.method public setHidden(Z)V
    .locals 0

    .line 472
    iput-boolean p1, p0, Ljxl/SheetSettings;->hidden:Z

    return-void
.end method

.method public setHorizontalCentre(Z)V
    .locals 0

    .line 1127
    iput-boolean p1, p0, Ljxl/SheetSettings;->horizontalCentre:Z

    return-void
.end method

.method public setHorizontalFreeze(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1026
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    return-void
.end method

.method public setHorizontalPrintResolution(I)V
    .locals 0

    .line 608
    iput p1, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    return-void
.end method

.method public setLeftMargin(D)V
    .locals 0

    .line 668
    iput-wide p1, p0, Ljxl/SheetSettings;->leftMargin:D

    return-void
.end method

.method public setNormalMagnification(I)V
    .locals 0

    .line 904
    iput p1, p0, Ljxl/SheetSettings;->normalMagnification:I

    return-void
.end method

.method public setOrientation(Ljxl/format/PageOrientation;)V
    .locals 0

    .line 372
    iput-object p1, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    return-void
.end method

.method public setPageBreakPreviewMagnification(I)V
    .locals 0

    .line 882
    iput p1, p0, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    return-void
.end method

.method public setPageBreakPreviewMode(Z)V
    .locals 0

    .line 965
    iput-boolean p1, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    return-void
.end method

.method public setPageStart(I)V
    .locals 0

    .line 545
    iput p1, p0, Ljxl/SheetSettings;->pageStart:I

    return-void
.end method

.method public setPaperSize(Ljxl/format/PaperSize;)V
    .locals 0

    .line 392
    iput-object p1, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 776
    iput-object p1, p0, Ljxl/SheetSettings;->password:Ljava/lang/String;

    return-void
.end method

.method public setPasswordHash(I)V
    .locals 0

    .line 796
    iput p1, p0, Ljxl/SheetSettings;->passwordHash:I

    return-void
.end method

.method public setPrintArea(IIII)V
    .locals 7

    .line 1207
    new-instance v6, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v6, p0, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    return-void
.end method

.method public setPrintGridLines(Z)V
    .locals 0

    .line 985
    iput-boolean p1, p0, Ljxl/SheetSettings;->printGridLines:Z

    return-void
.end method

.method public setPrintHeaders(Z)V
    .locals 0

    .line 1005
    iput-boolean p1, p0, Ljxl/SheetSettings;->printHeaders:Z

    return-void
.end method

.method public setProtected(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Ljxl/SheetSettings;->sheetProtected:Z

    return-void
.end method

.method public setRecalculateFormulasBeforeSave(Z)V
    .locals 0

    .line 1180
    iput-boolean p1, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    return-void
.end method

.method public setRightMargin(D)V
    .locals 0

    .line 648
    iput-wide p1, p0, Ljxl/SheetSettings;->rightMargin:D

    return-void
.end method

.method public setScaleFactor(I)V
    .locals 0

    .line 524
    iput p1, p0, Ljxl/SheetSettings;->scaleFactor:I

    const/4 p1, 0x0

    .line 525
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setSelected()V
    .locals 1

    const/4 v0, 0x1

    .line 492
    invoke-virtual {p0, v0}, Ljxl/SheetSettings;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Ljxl/SheetSettings;->selected:Z

    return-void
.end method

.method public setShowGridLines(Z)V
    .locals 0

    .line 945
    iput-boolean p1, p0, Ljxl/SheetSettings;->showGridLines:Z

    return-void
.end method

.method public setTopMargin(D)V
    .locals 0

    .line 688
    iput-wide p1, p0, Ljxl/SheetSettings;->topMargin:D

    return-void
.end method

.method public setVerticalCentre(Z)V
    .locals 0

    .line 1147
    iput-boolean p1, p0, Ljxl/SheetSettings;->verticalCentre:Z

    return-void
.end method

.method public setVerticalFreeze(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1047
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/SheetSettings;->verticalFreeze:I

    return-void
.end method

.method public setVerticalPrintResolution(I)V
    .locals 0

    .line 628
    iput p1, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    return-void
.end method

.method public setZoomFactor(I)V
    .locals 0

    .line 860
    iput p1, p0, Ljxl/SheetSettings;->zoomFactor:I

    return-void
.end method
