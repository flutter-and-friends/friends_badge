.class public Ljxl/demo/Write;
.super Ljava/lang/Object;
.source "Write.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private workbook:Ljxl/write/WritableWorkbook;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Ljxl/demo/Write;->filename:Ljava/lang/String;

    return-void
.end method

.method private writeBordersSheet(Ljxl/write/WritableSheet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1227
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setProtected(Z)V

    const/16 v0, 0xf

    .line 1229
    invoke-interface {p1, v1, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v2, 0x2

    .line 1230
    invoke-interface {p1, v2, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v3, 0x4

    .line 1231
    invoke-interface {p1, v3, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1232
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1233
    sget-object v4, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1234
    new-instance v4, Ljxl/write/Label;

    const/4 v5, 0x0

    const-string v6, "Thick left"

    invoke-direct {v4, v1, v5, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1235
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1237
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1238
    sget-object v4, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    sget-object v6, Ljxl/format/BorderLineStyle;->DASHED:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v6}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1239
    new-instance v4, Ljxl/write/Label;

    const-string v6, "Dashed right"

    invoke-direct {v4, v2, v5, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1240
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1242
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1243
    sget-object v4, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->DOUBLE:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1244
    new-instance v4, Ljxl/write/Label;

    const-string v5, "Double top"

    invoke-direct {v4, v1, v2, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1245
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1247
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1248
    sget-object v4, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->HAIR:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1249
    new-instance v4, Ljxl/write/Label;

    const-string v5, "Hair bottom"

    invoke-direct {v4, v2, v2, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1250
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1252
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1253
    sget-object v4, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1254
    new-instance v4, Ljxl/write/Label;

    const-string v5, "All thin"

    invoke-direct {v4, v3, v2, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1255
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1257
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1258
    sget-object v4, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1259
    sget-object v4, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object v5, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1260
    new-instance v4, Ljxl/write/Label;

    const/4 v5, 0x6

    const-string v6, "Two borders"

    invoke-direct {v4, v5, v2, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1261
    invoke-interface {p1, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1264
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x14

    const-string v4, "Dislocated cell - after a page break"

    invoke-direct {v0, v2, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1265
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1268
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    sget-object v2, Ljxl/format/PaperSize;->A3:Ljxl/format/PaperSize;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPaperSize(Ljxl/format/PaperSize;)V

    .line 1269
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    sget-object v2, Ljxl/format/PageOrientation;->LANDSCAPE:Ljxl/format/PageOrientation;

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setOrientation(Ljxl/format/PageOrientation;)V

    .line 1270
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setHeaderMargin(D)V

    .line 1271
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setFooterMargin(D)V

    .line 1273
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setTopMargin(D)V

    .line 1274
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljxl/SheetSettings;->setBottomMargin(D)V

    .line 1277
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 1278
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getCentre()Ljxl/HeaderFooter$Contents;

    move-result-object v2

    const-string v4, "Page Header"

    invoke-virtual {v2, v4}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1279
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljxl/SheetSettings;->setHeader(Ljxl/HeaderFooter;)V

    .line 1281
    new-instance v0, Ljxl/HeaderFooter;

    invoke-direct {v0}, Ljxl/HeaderFooter;-><init>()V

    .line 1282
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object v2

    const-string v4, "page "

    invoke-virtual {v2, v4}, Ljxl/HeaderFooter$Contents;->append(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {v0}, Ljxl/HeaderFooter;->getRight()Ljxl/HeaderFooter$Contents;

    move-result-object v2

    invoke-virtual {v2}, Ljxl/HeaderFooter$Contents;->appendPageNumber()V

    .line 1284
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljxl/SheetSettings;->setFooter(Ljxl/HeaderFooter;)V

    const/16 v0, 0x12

    .line 1287
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addRowPageBreak(I)V

    const/16 v0, 0x11

    .line 1288
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 1289
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 1290
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->removeRow(I)V

    const/16 v0, 0x1e

    .line 1293
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addRowPageBreak(I)V

    .line 1296
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0xa

    const-string v4, "Hidden column"

    invoke-direct {v0, v2, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1297
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1299
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x8

    const/4 v4, 0x3

    const-string v5, "Hidden row"

    invoke-direct {v0, v4, v2, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1300
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1301
    invoke-interface {p1, v2, v1}, Ljxl/write/WritableSheet;->setRowView(IZ)V

    .line 1303
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1304
    sget-object v2, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v4, Ljxl/format/BorderLineStyle;->THICK:Ljxl/format/BorderLineStyle;

    sget-object v5, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v0, v2, v4, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1305
    new-instance v2, Ljxl/write/Label;

    const/4 v4, 0x5

    const-string v5, "All thick red"

    invoke-direct {v2, v1, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1306
    invoke-interface {p1, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1308
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1309
    sget-object v1, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    sget-object v5, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v1, v2, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1310
    sget-object v1, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    sget-object v2, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    sget-object v5, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v1, v2, v5}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 1311
    new-instance v1, Ljxl/write/Label;

    const-string v2, "Top and bottom blue"

    invoke-direct {v1, v3, v4, v2, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1312
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    return-void
.end method

.method private writeDateFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 447
    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    const/4 v2, 0x1

    .line 449
    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 451
    invoke-interface {v0, v4, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v5, 0x2

    .line 452
    invoke-interface {v0, v5, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v6, 0x3

    .line 453
    invoke-interface {v0, v6, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v7, 0x4

    .line 454
    invoke-interface {v0, v7, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 456
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljxl/SheetSettings;->setFitWidth(I)V

    .line 457
    invoke-interface/range {p1 .. p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljxl/SheetSettings;->setFitHeight(I)V

    const-string v3, "GMT"

    .line 459
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    const/16 v10, 0x7b7

    const/4 v11, 0x4

    const/16 v12, 0x1f

    const/16 v13, 0xf

    const/16 v14, 0x15

    const/16 v15, 0x2d

    move-object v9, v8

    .line 460
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v15, 0xe

    const/16 v9, 0x294

    .line 461
    invoke-virtual {v8, v15, v9}, Ljava/util/Calendar;->set(II)V

    .line 462
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    const/16 v10, 0x76c

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v8

    move-object v6, v14

    move/from16 v14, v16

    const/16 v7, 0xe

    move/from16 v15, v17

    .line 463
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 464
    invoke-virtual {v8, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 466
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    const/16 v10, 0x7b2

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 467
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 468
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x77e

    const/16 v11, 0xa

    const/16 v12, 0xb

    const/16 v13, 0xb

    move-object/from16 v28, v15

    move/from16 v15, v16

    .line 469
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 470
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x76c

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v29, v15

    move/from16 v15, v16

    .line 471
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 472
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x76d

    const/4 v12, 0x1

    move-object/from16 v30, v15

    move/from16 v15, v16

    .line 473
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 474
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x76c

    const/4 v11, 0x4

    const/16 v12, 0x1f

    move-object/from16 v31, v15

    move/from16 v15, v16

    .line 475
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 476
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v32, v15

    move/from16 v15, v16

    .line 477
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 478
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x0

    const/16 v12, 0x1f

    move-object/from16 v33, v15

    move/from16 v15, v16

    .line 479
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 480
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object/from16 v34, v15

    move/from16 v15, v16

    .line 481
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 482
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/4 v11, 0x1

    const/16 v12, 0x1b

    move-object/from16 v35, v15

    move/from16 v15, v16

    .line 483
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 484
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v12, 0x1c

    move-object/from16 v36, v15

    move/from16 v15, v16

    .line 485
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 486
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    const/16 v10, 0x7bc

    const/4 v11, 0x5

    const/16 v12, 0x1f

    const/16 v13, 0xc

    move-object/from16 v37, v15

    move/from16 v15, v16

    .line 487
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 488
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v38

    const/16 v10, 0x42a

    const/16 v11, 0x9

    const/16 v12, 0xe

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 489
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 490
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 493
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "dd MMM yyyy HH:mm:ss.SSS"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 495
    new-instance v3, Ljxl/write/Label;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "All dates are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v4, v4, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 497
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 499
    new-instance v3, Ljxl/write/Label;

    const-string v10, "Built in formats"

    invoke-direct {v3, v4, v2, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 501
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 503
    new-instance v3, Ljxl/write/Label;

    const-string v10, "Custom formats"

    invoke-direct {v3, v5, v2, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 504
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 506
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT1:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 507
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x2

    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 508
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 510
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT2:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 511
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x3

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 512
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 514
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT3:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 515
    new-instance v3, Ljxl/write/DateTime;

    const/4 v10, 0x4

    invoke-direct {v3, v4, v10, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 516
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 518
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT4:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 519
    new-instance v3, Ljxl/write/DateTime;

    const/4 v10, 0x5

    invoke-direct {v3, v4, v10, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 520
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 522
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT5:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 523
    new-instance v3, Ljxl/write/DateTime;

    const/4 v11, 0x6

    invoke-direct {v3, v4, v11, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 524
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 526
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT6:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 527
    new-instance v3, Ljxl/write/DateTime;

    const/4 v12, 0x7

    invoke-direct {v3, v4, v12, v6, v2}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;)V

    .line 528
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 530
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT7:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 531
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x8

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 532
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 534
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT8:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 535
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x9

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 536
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 538
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 539
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xa

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 540
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 542
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT10:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 543
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xb

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 544
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 546
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT11:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 547
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xc

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 548
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 550
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT12:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 551
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0xd

    move-object/from16 v16, v3

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 552
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 555
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "dd MM yyyy"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 556
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 557
    new-instance v2, Ljxl/write/Label;

    invoke-direct {v2, v5, v5, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 558
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 560
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v17, 0x3

    const/16 v18, 0x2

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 561
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 563
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 564
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 565
    new-instance v2, Ljxl/write/Label;

    const/4 v14, 0x3

    invoke-direct {v2, v5, v14, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 566
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 568
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x3

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 569
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 571
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "hh:mm"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 572
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 573
    new-instance v2, Ljxl/write/Label;

    const/4 v14, 0x4

    invoke-direct {v2, v5, v14, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 574
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 576
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x4

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 577
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 579
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "hh:mm:ss"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 580
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 581
    new-instance v2, Ljxl/write/Label;

    invoke-direct {v2, v5, v10, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 582
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 584
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x5

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 585
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 587
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "H:mm:ss a"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 588
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 589
    new-instance v2, Ljxl/write/Label;

    const-string v13, "H:mm:ss a"

    invoke-direct {v2, v5, v10, v13}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 590
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 592
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    move-object/from16 v16, v2

    move-object/from16 v20, v3

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 593
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 594
    new-instance v2, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x4

    const/16 v24, 0x5

    move-object/from16 v22, v2

    move-object/from16 v25, v38

    move-object/from16 v26, v3

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 595
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 597
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "mm:ss.SSS"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 598
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 599
    new-instance v2, Ljxl/write/Label;

    const-string v10, "mm:ss.SSS"

    invoke-direct {v2, v5, v11, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 600
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 602
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x6

    move-object/from16 v16, v2

    move-object/from16 v20, v3

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 603
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 605
    new-instance v2, Ljxl/write/DateFormat;

    const-string v3, "hh:mm:ss a"

    invoke-direct {v2, v3}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 606
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 607
    new-instance v2, Ljxl/write/Label;

    const-string v6, "hh:mm:ss a"

    invoke-direct {v2, v5, v12, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 608
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 610
    new-instance v2, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x7

    move-object/from16 v22, v2

    move-object/from16 v26, v3

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 611
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 615
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Zero date "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-direct {v2, v4, v5, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 617
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 619
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 620
    new-instance v3, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x0

    const/16 v24, 0x11

    move-object/from16 v22, v3

    move-object/from16 v25, v7

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 621
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 624
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Zero date + 1 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, v30

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 626
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 628
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 629
    new-instance v3, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x3

    move-object/from16 v22, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 630
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 633
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v31

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x13

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 635
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 637
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 638
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x14

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 639
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 642
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v32

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x16

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 644
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 646
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 647
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x17

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 648
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 651
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v33

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x19

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 653
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 655
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 656
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x1a

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 657
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 660
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v34

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1c

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 662
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 664
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 665
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x1d

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 666
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 669
    new-instance v2, Ljxl/write/Label;

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 671
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 673
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 674
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    move-object/from16 v22, v5

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 675
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 678
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v35

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 680
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 682
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 683
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x20

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 684
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 687
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v36

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x22

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 689
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 691
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 692
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x23

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 693
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 696
    new-instance v2, Ljxl/write/Label;

    move-object/from16 v3, v37

    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x25

    const/4 v7, 0x3

    invoke-direct {v2, v7, v6, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 698
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 700
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v5, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 701
    new-instance v5, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v24, 0x26

    move-object/from16 v22, v5

    move-object/from16 v25, v3

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 702
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 705
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Zero UTC date "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, v28

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x13

    invoke-direct {v2, v4, v6, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 707
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 709
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 710
    new-instance v3, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v17, 0x0

    const/16 v18, 0x14

    move-object/from16 v16, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v2

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 711
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 714
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Armistice date "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v5, v29

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x16

    invoke-direct {v2, v4, v6, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 716
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 718
    new-instance v2, Ljxl/write/WritableCellFormat;

    sget-object v3, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v2, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 719
    new-instance v3, Ljxl/write/DateTime;

    sget-object v27, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v23, 0x0

    const/16 v24, 0x17

    move-object/from16 v22, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v2

    invoke-direct/range {v22 .. v27}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 720
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 723
    new-instance v2, Ljxl/write/Label;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Battle of Hastings "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x19

    invoke-direct {v2, v4, v5, v3, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 725
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 727
    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/DateFormats;->FORMAT2:Ljxl/biff/DisplayFormat;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 728
    new-instance v2, Ljxl/write/DateTime;

    sget-object v21, Ljxl/write/DateTime;->GMT:Ljxl/write/biff/DateRecord$GMTDate;

    const/16 v18, 0x1a

    move-object/from16 v16, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v1

    invoke-direct/range {v16 .. v21}, Ljxl/write/DateTime;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V

    .line 729
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    return-void
.end method

.method private writeFormulaSheet(Ljxl/write/WritableSheet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1387
    new-instance v0, Ljxl/write/Number;

    const/4 v1, 0x0

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v1, v1, v2, v3}, Ljxl/write/Number;-><init>(IID)V

    .line 1388
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1390
    new-instance v0, Ljxl/write/Number;

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-direct {v0, v1, v2, v3, v4}, Ljxl/write/Number;-><init>(IID)V

    .line 1391
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1393
    new-instance v0, Ljxl/write/Number;

    const/4 v3, 0x2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-direct {v0, v1, v3, v4, v5}, Ljxl/write/Number;-><init>(IID)V

    .line 1394
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1396
    new-instance v0, Ljxl/write/Number;

    const/4 v4, 0x3

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    invoke-direct {v0, v1, v4, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    .line 1397
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x14

    .line 1399
    invoke-interface {p1, v3, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 1400
    new-instance v5, Ljxl/write/WritableCellFormat;

    invoke-direct {v5}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1401
    sget-object v6, Ljxl/format/Alignment;->RIGHT:Ljxl/format/Alignment;

    invoke-virtual {v5, v6}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 1402
    invoke-virtual {v5, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 1403
    new-instance v6, Ljxl/CellView;

    invoke-direct {v6}, Ljxl/CellView;-><init>()V

    const/16 v7, 0x1900

    .line 1404
    invoke-virtual {v6, v7}, Ljxl/CellView;->setSize(I)V

    .line 1405
    invoke-virtual {v6, v5}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    .line 1406
    invoke-interface {p1, v4, v6}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    .line 1412
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "A1+A2"

    invoke-direct {v5, v3, v1, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1413
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1414
    new-instance v5, Ljxl/write/Label;

    const-string v6, "a1+a2"

    invoke-direct {v5, v4, v1, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1415
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1417
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "A2 * 3"

    invoke-direct {v5, v3, v2, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1418
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1419
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v2, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1420
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1422
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "A2+A1/2.5"

    invoke-direct {v5, v3, v3, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1423
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1424
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v3, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1425
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1427
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "3+(a1+a2)/2.5"

    invoke-direct {v5, v3, v4, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1428
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1429
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v4, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1430
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1432
    new-instance v5, Ljxl/write/Formula;

    const-string v6, "(a1+a2)/2.5"

    const/4 v7, 0x4

    invoke-direct {v5, v3, v7, v6}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1433
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1434
    new-instance v5, Ljxl/write/Label;

    invoke-direct {v5, v4, v7, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1435
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1437
    new-instance v5, Ljxl/write/Formula;

    const/4 v6, 0x5

    const-string v7, "15+((a1+a2)/2.5)*17"

    invoke-direct {v5, v3, v6, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1438
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1439
    new-instance v5, Ljxl/write/Label;

    const-string v7, "15+((a1+a2)/2.5)*17"

    invoke-direct {v5, v4, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1440
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1442
    new-instance v5, Ljxl/write/Formula;

    const/4 v6, 0x6

    const-string v7, "SUM(a1:a4)"

    invoke-direct {v5, v3, v6, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1443
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1444
    new-instance v5, Ljxl/write/Label;

    const-string v7, "SUM(a1:a4)"

    invoke-direct {v5, v4, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1445
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1447
    new-instance v5, Ljxl/write/Formula;

    const/4 v6, 0x7

    const-string v7, "SUM(a1:a4)/4"

    invoke-direct {v5, v3, v6, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1448
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1449
    new-instance v5, Ljxl/write/Label;

    const-string v7, "SUM(a1:a4)/4"

    invoke-direct {v5, v4, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1450
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1452
    new-instance v5, Ljxl/write/Formula;

    const/16 v6, 0x8

    const-string v7, "AVERAGE(A1:A4)"

    invoke-direct {v5, v3, v6, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1453
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1454
    new-instance v5, Ljxl/write/Label;

    const-string v7, "AVERAGE(a1:a4)"

    invoke-direct {v5, v4, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1455
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1457
    new-instance v5, Ljxl/write/Formula;

    const/16 v6, 0x9

    const-string v7, "MIN(5,4,1,2,3)"

    invoke-direct {v5, v3, v6, v7}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1458
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1459
    new-instance v5, Ljxl/write/Label;

    const-string v7, "MIN(5,4,1,2,3)"

    invoke-direct {v5, v4, v6, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1460
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1462
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xa

    const-string v8, "ROUND(3.14159265, 3)"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1463
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1464
    new-instance v5, Ljxl/write/Label;

    const-string v8, "ROUND(3.14159265, 3)"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1465
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1467
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xb

    const-string v8, "MAX(SUM(A1:A2), A1*A2, POWER(A1, 2))"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1468
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1469
    new-instance v5, Ljxl/write/Label;

    const-string v8, "MAX(SUM(A1:A2), A1*A2, POWER(A1, 2))"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1470
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1472
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xc

    const-string v8, "IF(A2>A1, \"A2 bigger\", \"A1 bigger\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1473
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1474
    new-instance v5, Ljxl/write/Label;

    const-string v8, "IF(A2>A1, \"A2 bigger\", \"A1 bigger\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1475
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1477
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xd

    const-string v8, "IF(A2<=A1, \"A2 smaller\", \"A1 smaller\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1478
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1479
    new-instance v5, Ljxl/write/Label;

    const-string v8, "IF(A2<=A1, \"A2 smaller\", \"A1 smaller\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1480
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1482
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xe

    const-string v8, "IF(A3<=10, \"<= 10\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1483
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1484
    new-instance v5, Ljxl/write/Label;

    const-string v8, "IF(A3<=10, \"<= 10\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1485
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1487
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0xf

    const-string v8, "SUM(1,2,3,4,5)"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1488
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1489
    new-instance v5, Ljxl/write/Label;

    const-string v8, "SUM(1,2,3,4,5)"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1490
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1492
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0x10

    const-string v8, "HYPERLINK(\"http://www.andykhan.com/jexcelapi\", \"JExcelApi Home Page\")"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1493
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1494
    new-instance v5, Ljxl/write/Label;

    const-string v8, "HYPERLINK(\"http://www.andykhan.com/jexcelapi\", \"JExcelApi Home Page\")"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1495
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1497
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0x11

    const-string v8, "3*4+5"

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1498
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1499
    new-instance v5, Ljxl/write/Label;

    const-string v8, "3*4+5"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1500
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1502
    new-instance v5, Ljxl/write/Formula;

    const/16 v7, 0x12

    const-string v8, "\"Plain text formula\""

    invoke-direct {v5, v3, v7, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1503
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1504
    new-instance v5, Ljxl/write/Label;

    const-string v8, "Plain text formula"

    invoke-direct {v5, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1505
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1507
    new-instance v5, Ljxl/write/Formula;

    const/16 v8, 0x13

    const-string v9, "SUM(a1,a2,-a3,a4)"

    invoke-direct {v5, v3, v8, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1508
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1509
    new-instance v5, Ljxl/write/Label;

    const-string v9, "SUM(a1,a2,-a3,a4)"

    invoke-direct {v5, v4, v8, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1510
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1512
    new-instance v5, Ljxl/write/Formula;

    const-string v8, "2*-(a1+a2)"

    invoke-direct {v5, v3, v0, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1513
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1514
    new-instance v5, Ljxl/write/Label;

    const-string v8, "2*-(a1+a2)"

    invoke-direct {v5, v4, v0, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1515
    invoke-interface {p1, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1517
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x15

    const-string v8, "\'Number Formats\'!B1/2"

    invoke-direct {v0, v3, v5, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1518
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1519
    new-instance v0, Ljxl/write/Label;

    const-string v8, "\'Number Formats\'!B1/2"

    invoke-direct {v0, v4, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1520
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1522
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x16

    const-string v8, "IF(F22=0, 0, F21/F22)"

    invoke-direct {v0, v3, v5, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1523
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1524
    new-instance v0, Ljxl/write/Label;

    const-string v8, "IF(F22=0, 0, F21/F22)"

    invoke-direct {v0, v4, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1525
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1527
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x17

    const-string v8, "RAND()"

    invoke-direct {v0, v3, v5, v8}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1528
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1529
    new-instance v0, Ljxl/write/Label;

    const-string v8, "RAND()"

    invoke-direct {v0, v4, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1530
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1532
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "\'"

    .line 1533
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1534
    iget-object v5, p0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v5, v1}, Ljxl/write/WritableWorkbook;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v1

    invoke-interface {v1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'!"

    .line 1535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1536
    invoke-static {v6, v7}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "*25"

    .line 1537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1538
    new-instance v1, Ljxl/write/Formula;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x18

    invoke-direct {v1, v3, v6, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1539
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1540
    new-instance v1, Ljxl/write/Label;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x18

    invoke-direct {v1, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1541
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1543
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 1544
    new-instance v1, Ljxl/write/Formula;

    const/16 v5, 0x19

    const-string v6, "NOW()"

    invoke-direct {v1, v3, v5, v6, v0}, Ljxl/write/Formula;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1545
    invoke-interface {p1, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1546
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x19

    const-string v5, "NOW()"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1547
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1549
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1a

    const-string v5, "$A$2+A3"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1550
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1551
    new-instance v0, Ljxl/write/Label;

    const-string v5, "$A$2+A3"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1552
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1554
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1b

    const-string v5, "IF(COUNT(A1:A9,B1:B9)=0,\"\",COUNT(A1:A9,B1:B9))"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1555
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1556
    new-instance v0, Ljxl/write/Label;

    const-string v5, "IF(COUNT(A1:A9,B1:B9)=0,\"\",COUNT(A1:A9,B1:B9))"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1557
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1559
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1c

    const-string v5, "SUM(A1,A2,A3,A4)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1560
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1561
    new-instance v0, Ljxl/write/Label;

    const-string v5, "SUM(A1,A2,A3,A4)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1562
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1564
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x1d

    const-string v5, "a1"

    invoke-direct {v0, v2, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1565
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1566
    new-instance v0, Ljxl/write/Formula;

    const-string v5, "SUM(INDIRECT(ADDRESS(2,29)):A4)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1567
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1568
    new-instance v0, Ljxl/write/Label;

    const-string v5, "SUM(INDIRECT(ADDRESS(2,29):A4)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1569
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1571
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1e

    const-string v5, "COUNTIF(A1:A4, \">=12\")"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1572
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1573
    new-instance v0, Ljxl/write/Label;

    const-string v5, "COUNTIF(A1:A4, \">=12\")"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1574
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1576
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x1f

    const-string v5, "MAX($A$1:$A$4)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1577
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1578
    new-instance v0, Ljxl/write/Label;

    const-string v5, "MAX($A$1:$A$4)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1579
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1581
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x20

    const-string v5, "OR(A1,TRUE)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1582
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1583
    new-instance v0, Ljxl/write/Label;

    const-string v5, "OR(A1,TRUE)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1584
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1586
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x21

    const-string v5, "ROWS(A1:C14)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1587
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1588
    new-instance v0, Ljxl/write/Label;

    const-string v5, "ROWS(A1:C14)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1589
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1591
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x22

    const-string v5, "COUNTBLANK(A1:C14)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1592
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1593
    new-instance v0, Ljxl/write/Label;

    const-string v5, "COUNTBLANK(A1:C14)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1594
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1596
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x23

    const-string v5, "IF(((F1=\"Not Found\")*(F2=\"Not Found\")*(F3=\"\")*(F4=\"\")*(F5=\"\")),1,0)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1597
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1598
    new-instance v0, Ljxl/write/Label;

    const-string v5, "IF(((F1=\"Not Found\")*(F2=\"Not Found\")*(F3=\"\")*(F4=\"\")*(F5=\"\")),1,0)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1599
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1601
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x24

    const-string v5, "HYPERLINK(\"http://www.amazon.co.uk/exec/obidos/ASIN/0571058086qid=1099836249/sr=1-3/ref=sr_1_11_3/202-6017285-1620664\",  \"Long hyperlink\")"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1603
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1605
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x25

    const-string v5, "1234567+2699"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1606
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1607
    new-instance v0, Ljxl/write/Label;

    const-string v5, "1234567+2699"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1608
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1610
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x26

    const-string v5, "IF(ISERROR(G25/G29),0,-1)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1611
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1612
    new-instance v0, Ljxl/write/Label;

    const-string v5, "IF(ISERROR(G25/G29),0,-1)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1613
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1615
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x27

    const-string v5, "SEARCH(\"C\",D40)"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1616
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1617
    new-instance v0, Ljxl/write/Label;

    const-string v5, "SEARCH(\"C\",D40)"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1618
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1620
    new-instance v0, Ljxl/write/Formula;

    const/16 v1, 0x28

    const-string v5, "#REF!"

    invoke-direct {v0, v3, v1, v5}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1621
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1622
    new-instance v0, Ljxl/write/Label;

    const-string v5, "#REF!"

    invoke-direct {v0, v4, v1, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1623
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1625
    new-instance v0, Ljxl/write/Number;

    const/16 v1, 0x29

    const-wide v5, 0x4053c00000000000L    # 79.0

    invoke-direct {v0, v2, v1, v5, v6}, Ljxl/write/Number;-><init>(IID)V

    .line 1626
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1627
    new-instance v0, Ljxl/write/Formula;

    const-string v2, "--B42"

    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 1628
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1629
    new-instance v0, Ljxl/write/Label;

    const-string v2, "--B42"

    invoke-direct {v0, v4, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1630
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    return-void
.end method

.method private writeImageSheet(Ljxl/write/WritableSheet;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1657
    new-instance v0, Ljxl/write/Label;

    const/4 v1, 0x0

    const-string v2, "Weald & Downland Open Air Museum, Sussex"

    invoke-direct {v0, v1, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1658
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1660
    new-instance v0, Ljxl/write/WritableImage;

    new-instance v12, Ljava/io/File;

    const-string v2, "resources/wealdanddownland.png"

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 1662
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    .line 1664
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0xc

    const-string v3, "Merchant Adventurers Hall, York"

    invoke-direct {v0, v1, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1665
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1667
    new-instance v0, Ljxl/write/WritableImage;

    new-instance v13, Ljava/io/File;

    const-string v1, "resources/merchantadventurers.png"

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    const-wide/high16 v7, 0x4028000000000000L    # 12.0

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 1669
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    return-void
.end method

.method private writeLabelFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v12, p1

    const/4 v13, 0x0

    const/16 v0, 0x3c

    .line 740
    invoke-interface {v12, v13, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 742
    new-instance v0, Ljxl/write/Label;

    const-string v1, "Arial Fonts"

    invoke-direct {v0, v13, v13, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 743
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 745
    new-instance v0, Ljxl/write/Label;

    const/4 v14, 0x1

    const-string v1, "10pt"

    invoke-direct {v0, v14, v13, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 746
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 748
    new-instance v0, Ljxl/write/Label;

    const/4 v1, 0x2

    const-string v2, "Normal"

    invoke-direct {v0, v1, v13, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 749
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 751
    new-instance v0, Ljxl/write/Label;

    const/4 v15, 0x3

    const-string v2, "12pt"

    invoke-direct {v0, v15, v13, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 752
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 754
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v11, 0xc

    invoke-direct {v0, v2, v11}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 755
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 756
    invoke-virtual {v10, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 757
    new-instance v0, Ljxl/write/Label;

    const/4 v9, 0x4

    const-string v2, "Normal"

    invoke-direct {v0, v9, v13, v2, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 758
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 760
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v8, 0xa

    invoke-direct {v0, v2, v8, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 762
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 764
    new-instance v0, Ljxl/write/Label;

    const-string v3, "BOLD"

    invoke-direct {v0, v1, v1, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 765
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 767
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v2, v11, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 769
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 771
    new-instance v0, Ljxl/write/Label;

    const-string v3, "BOLD"

    invoke-direct {v0, v9, v1, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 772
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 774
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v2, v8, v3, v14}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    .line 776
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 778
    new-instance v0, Ljxl/write/Label;

    const-string v3, "Italic"

    invoke-direct {v0, v1, v9, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 779
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 781
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v2, v11, v3, v14}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;Z)V

    .line 783
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 785
    new-instance v0, Ljxl/write/Label;

    const-string v3, "Italic"

    invoke-direct {v0, v9, v9, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 786
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 788
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v2, v8}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 789
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 790
    new-instance v0, Ljxl/write/Label;

    const/4 v7, 0x7

    const-string v3, "Times Fonts"

    invoke-direct {v0, v13, v7, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 791
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 793
    new-instance v0, Ljxl/write/Label;

    const-string v3, "10pt"

    invoke-direct {v0, v14, v7, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 794
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 796
    new-instance v0, Ljxl/write/Label;

    const-string v3, "Normal"

    invoke-direct {v0, v1, v7, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 797
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 799
    new-instance v0, Ljxl/write/Label;

    const-string v3, "12pt"

    invoke-direct {v0, v15, v7, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 800
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 802
    new-instance v6, Ljxl/write/WritableFont;

    sget-object v0, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    invoke-direct {v6, v0, v11}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 803
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 804
    new-instance v2, Ljxl/write/Label;

    const-string v3, "Normal"

    invoke-direct {v2, v9, v7, v3, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 805
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 807
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v2, v8, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 809
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 811
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x9

    const-string v3, "BOLD"

    invoke-direct {v0, v1, v5, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 812
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 814
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v2, v11, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 816
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 818
    new-instance v0, Ljxl/write/Label;

    const-string v3, "BOLD"

    invoke-direct {v0, v9, v5, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 819
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 v4, 0x6

    const/16 v0, 0x16

    .line 822
    invoke-interface {v12, v4, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 823
    invoke-interface {v12, v7, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/16 v3, 0x8

    .line 824
    invoke-interface {v12, v3, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 825
    invoke-interface {v12, v5, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 827
    new-instance v2, Ljxl/write/Label;

    const/16 v8, 0xb

    const-string v15, "Underlining"

    invoke-direct {v2, v13, v8, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 828
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 830
    new-instance v2, Ljxl/write/WritableFont;

    sget-object v18, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v20, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v22, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v19, 0xa

    const/16 v21, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v22}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 836
    new-instance v15, Ljxl/write/WritableCellFormat;

    invoke-direct {v15, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 838
    new-instance v2, Ljxl/write/Label;

    const-string v0, "Underline"

    invoke-direct {v2, v4, v8, v0, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 839
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 841
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->DOUBLE:Ljxl/format/UnderlineStyle;

    const/16 v20, 0xa

    const/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 847
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 849
    new-instance v0, Ljxl/write/Label;

    const-string v15, "Double Underline"

    invoke-direct {v0, v7, v8, v15, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 850
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 852
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->SINGLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 858
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 860
    new-instance v0, Ljxl/write/Label;

    const-string v15, "Single Accounting Underline"

    invoke-direct {v0, v3, v8, v15, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 861
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 863
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->DOUBLE_ACCOUNTING:Ljxl/format/UnderlineStyle;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 869
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 871
    new-instance v0, Ljxl/write/Label;

    const-string v15, "Double Accounting Underline"

    invoke-direct {v0, v5, v8, v15, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 872
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 874
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v20, 0xe

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 880
    new-instance v15, Ljxl/write/WritableCellFormat;

    invoke-direct {v15, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 882
    new-instance v0, Ljxl/write/Label;

    const-string v2, "Times 14 Bold Underline"

    invoke-direct {v0, v4, v11, v2, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 883
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 885
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v19, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v21, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v23, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v20, 0x12

    const/16 v22, 0x1

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 891
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 893
    new-instance v0, Ljxl/write/Label;

    const/16 v8, 0xd

    const-string v3, "Arial 18 Bold Italic Underline"

    invoke-direct {v0, v4, v8, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 895
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 897
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0xf

    const-string v3, "Script styles"

    invoke-direct {v0, v13, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 898
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 900
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v26, Ljxl/format/ScriptStyle;->SUPERSCRIPT:Ljxl/format/ScriptStyle;

    const/16 v21, 0xa

    const/16 v23, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 908
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 910
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0xf

    const-string v8, "superscript"

    invoke-direct {v0, v14, v3, v8, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 911
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 913
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    sget-object v26, Ljxl/format/ScriptStyle;->SUBSCRIPT:Ljxl/format/ScriptStyle;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;Ljxl/format/ScriptStyle;)V

    .line 921
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 923
    new-instance v0, Ljxl/write/Label;

    const-string v8, "subscript"

    invoke-direct {v0, v1, v3, v8, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 924
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 926
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x11

    const-string v3, "Colours"

    invoke-direct {v0, v13, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 927
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 929
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    .line 935
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 936
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x11

    const-string v8, "Red"

    invoke-direct {v0, v1, v3, v8, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 937
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 939
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    .line 945
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 946
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x12

    const-string v8, "Blue"

    invoke-direct {v0, v1, v3, v8, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 947
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 949
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v2, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v2}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;)V

    .line 950
    sget-object v2, Ljxl/format/Colour;->LIME:Ljxl/format/Colour;

    invoke-virtual {v0, v2}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 951
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 952
    invoke-virtual {v2, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 953
    new-instance v0, Ljxl/write/Label;

    const-string v8, "Modified palette - was lime, now red"

    invoke-direct {v0, v9, v3, v8, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 954
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 956
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 957
    invoke-virtual {v0, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 958
    sget-object v2, Ljxl/format/Colour;->GRAY_50:Ljxl/format/Colour;

    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 959
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x13

    const-string v8, "Grey background"

    invoke-direct {v2, v1, v3, v8, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 960
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 962
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v20, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v22, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v24, Ljxl/format/UnderlineStyle;->NO_UNDERLINE:Ljxl/format/UnderlineStyle;

    sget-object v25, Ljxl/format/Colour;->YELLOW:Ljxl/format/Colour;

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v25}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;Ljxl/format/Colour;)V

    .line 968
    new-instance v2, Ljxl/write/WritableCellFormat;

    invoke-direct {v2, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 969
    invoke-virtual {v2, v14}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 970
    sget-object v0, Ljxl/format/Colour;->BLUE:Ljxl/format/Colour;

    invoke-virtual {v2, v0}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 971
    new-instance v0, Ljxl/write/Label;

    const/16 v3, 0x14

    const-string v8, "Blue background, yellow foreground"

    invoke-direct {v0, v1, v3, v8, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 972
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 974
    new-instance v0, Ljxl/write/Label;

    const-string v2, "Null label"

    const/16 v3, 0x16

    invoke-direct {v0, v13, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 975
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 977
    new-instance v0, Ljxl/write/Label;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 978
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 980
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x18

    const-string v3, "A very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nA very long label, more than 255 characters\nRejoice O shores\nSing O bells\nBut I with mournful tread\nWalk the deck my captain lies\nFallen cold and dead\nSummer surprised, coming over the Starnbergersee\nWith a shower of rain. We stopped in the Colonnade\nAnd sat and drank coffee an talked for an hour\n"

    invoke-direct {v0, v13, v2, v3, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1013
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1015
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1016
    sget-object v2, Ljxl/format/Orientation;->VERTICAL:Ljxl/format/Orientation;

    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1017
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x1a

    const-string v8, "Vertical orientation"

    invoke-direct {v2, v13, v3, v8, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1018
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1021
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1022
    sget-object v2, Ljxl/format/Orientation;->PLUS_90:Ljxl/format/Orientation;

    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1023
    new-instance v2, Ljxl/write/Label;

    const-string v8, "Plus 90"

    invoke-direct {v2, v14, v3, v8, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1024
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1027
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1028
    sget-object v2, Ljxl/format/Orientation;->MINUS_90:Ljxl/format/Orientation;

    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFormat;->setOrientation(Ljxl/format/Orientation;)V

    .line 1029
    new-instance v2, Ljxl/write/Label;

    const-string v8, "Minus 90"

    invoke-direct {v2, v1, v3, v8, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1030
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1032
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x1c

    const-string v3, "Modified row height"

    invoke-direct {v0, v13, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1033
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x1c

    const/16 v2, 0x1e0

    .line 1034
    invoke-interface {v12, v0, v2}, Ljxl/write/WritableSheet;->setRowView(II)V

    .line 1036
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x1d

    const-string v3, "Collapsed row"

    invoke-direct {v0, v13, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1037
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x1d

    .line 1038
    invoke-interface {v12, v0, v14}, Ljxl/write/WritableSheet;->setRowView(IZ)V

    .line 1043
    :try_start_0
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x1e

    const-string v3, "Hyperlink to home page"

    invoke-direct {v0, v13, v2, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1044
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1046
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://www.andykhan.com/jexcelapi"

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1047
    new-instance v2, Ljxl/write/WritableHyperlink;

    const/16 v20, 0x0

    const/16 v21, 0x1e

    const/16 v22, 0x8

    const/16 v23, 0x1f

    move-object/from16 v19, v2

    move-object/from16 v24, v0

    invoke-direct/range {v19 .. v24}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 1048
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1051
    new-instance v2, Ljxl/write/WritableHyperlink;

    const/16 v20, 0x7

    const/16 v21, 0x1e

    const/16 v22, 0x9

    const/16 v23, 0x1f

    move-object/from16 v19, v2

    move-object/from16 v24, v0

    invoke-direct/range {v19 .. v24}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 1052
    invoke-interface {v12, v2}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1054
    new-instance v0, Ljxl/write/Label;

    const-string v2, "File hyperlink to documentation"

    invoke-direct {v0, v9, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1055
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1057
    new-instance v0, Ljava/io/File;

    const-string v1, "../jexcelapi/docs/index.html"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1058
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v20, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x8

    const/16 v23, 0x20

    move-object/from16 v19, v1

    move-object/from16 v24, v0

    invoke-direct/range {v19 .. v24}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;)V

    .line 1059
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1062
    new-instance v0, Ljxl/write/WritableHyperlink;

    const/4 v2, 0x0

    const/16 v3, 0x22

    const/16 v8, 0x8

    const/16 v17, 0x22

    const-string v19, "Link to another cell"
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v20, 0x0

    const/16 v21, 0xb4

    const/16 v22, 0x1

    const/16 v23, 0xb5

    move-object v1, v0

    const/16 v14, 0x8

    move v4, v8

    const/16 v8, 0x9

    move/from16 v5, v17

    move-object/from16 v27, v6

    move-object/from16 v6, v19

    move-object/from16 v7, p1

    const/16 v13, 0xa

    move/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v28, v10

    move/from16 v10, v22

    move/from16 v11, v23

    :try_start_1
    invoke-direct/range {v1 .. v11}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 1066
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1068
    new-instance v0, Ljava/io/File;

    const-string v1, "\\\\localhost\\file.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1069
    new-instance v1, Ljxl/write/WritableHyperlink;

    const/16 v18, 0x0

    const/16 v19, 0x24

    const/16 v20, 0x8

    const/16 v21, 0x24

    move-object/from16 v17, v1

    move-object/from16 v22, v0

    invoke-direct/range {v17 .. v22}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/io/File;)V

    .line 1070
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V

    .line 1073
    new-instance v7, Ljava/net/URL;

    const-string v0, "http://www.amazon.co.uk/exec/obidos/ASIN/0571058086/qid=1099836249/sr=1-3/ref=sr_1_11_3/202-6017285-1620664"

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1075
    new-instance v0, Ljxl/write/WritableHyperlink;

    const/4 v3, 0x0

    const/16 v4, 0x26

    const/4 v5, 0x0

    const/16 v6, 0x26

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Ljxl/write/WritableHyperlink;-><init>(IIIILjava/net/URL;)V

    .line 1076
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addHyperlink(Ljxl/write/WritableHyperlink;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v27, v6

    move-object/from16 v28, v10

    const/16 v13, 0xa

    const/16 v14, 0x8

    .line 1080
    :goto_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1084
    :goto_1
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x23

    const/4 v2, 0x5

    const-string v3, "Merged cells"

    invoke-direct {v0, v2, v1, v3, v15}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    const/16 v3, 0x25

    .line 1085
    invoke-interface {v12, v2, v1, v14, v3}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1086
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1088
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x26

    const-string v3, "More merged cells"

    invoke-direct {v0, v2, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1089
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x26

    const/16 v1, 0x29

    .line 1090
    invoke-interface {v12, v2, v0, v14, v1}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    move-result-object v0

    const/16 v1, 0x28

    .line 1091
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->insertRow(I)V

    const/16 v1, 0x27

    .line 1092
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 1093
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->unmergeCells(Ljxl/Range;)V

    .line 1096
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1097
    sget-object v1, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 1098
    new-instance v1, Ljxl/write/Label;

    const/16 v3, 0x2a

    const-string v4, "Centred across merged cells"

    invoke-direct {v1, v2, v3, v4, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1099
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x2a

    const/16 v1, 0x2a

    .line 1100
    invoke-interface {v12, v2, v0, v13, v1}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1102
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0}, Ljxl/write/WritableCellFormat;-><init>()V

    .line 1103
    sget-object v1, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v3, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v1, v3}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 1104
    sget-object v1, Ljxl/format/Colour;->GRAY_25:Ljxl/format/Colour;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 1105
    new-instance v1, Ljxl/write/Label;

    const/16 v3, 0x2c

    const-string v4, "Merged with border"

    const/4 v5, 0x3

    invoke-direct {v1, v5, v3, v4, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1106
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x2c

    const/16 v1, 0x2e

    const/4 v3, 0x4

    .line 1107
    invoke-interface {v12, v5, v0, v3, v1}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1124
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->COURIER:Ljxl/write/WritableFont$FontName;

    invoke-direct {v0, v1, v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1125
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1126
    new-instance v0, Ljxl/write/Label;

    const/16 v4, 0x31

    const-string v5, "Courier fonts"

    const/4 v6, 0x0

    invoke-direct {v0, v6, v4, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1127
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1129
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->TAHOMA:Ljxl/write/WritableFont$FontName;

    const/16 v4, 0xc

    invoke-direct {v0, v1, v4}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1130
    new-instance v1, Ljxl/write/WritableCellFormat;

    invoke-direct {v1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1131
    new-instance v0, Ljxl/write/Label;

    const/16 v4, 0x32

    const-string v5, "Tahoma fonts"

    invoke-direct {v0, v6, v4, v5, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1132
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const-string v0, "Wingdings 2"

    .line 1134
    invoke-static {v0}, Ljxl/write/WritableFont;->createFont(Ljava/lang/String;)Ljxl/write/WritableFont$FontName;

    move-result-object v0

    .line 1136
    new-instance v1, Ljxl/write/WritableFont;

    invoke-direct {v1, v0, v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1137
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1139
    new-instance v1, Ljxl/write/Label;

    const/16 v4, 0x33

    const-string v5, "Bespoke Windgdings 2"

    invoke-direct {v1, v6, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1140
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1142
    new-instance v0, Ljxl/write/WritableCellFormat;

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    const/4 v4, 0x1

    .line 1143
    invoke-virtual {v0, v4}, Ljxl/write/WritableCellFormat;->setShrinkToFit(Z)V

    .line 1144
    new-instance v4, Ljxl/write/Label;

    const/16 v5, 0x35

    const-string v6, "Shrunk to fit"

    const/4 v7, 0x3

    invoke-direct {v4, v7, v5, v6, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1145
    invoke-interface {v12, v4}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1147
    new-instance v0, Ljxl/write/Label;

    const/16 v4, 0x37

    const-string v5, "Some long wrapped text in a merged cell"

    move-object/from16 v6, v28

    invoke-direct {v0, v7, v4, v5, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1149
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x37

    .line 1150
    invoke-interface {v12, v7, v0, v3, v4}, Ljxl/write/WritableSheet;->mergeCells(IIII)Ljxl/Range;

    .line 1152
    new-instance v0, Ljxl/write/Label;

    const/16 v4, 0x39

    const-string v5, "A cell with a comment"

    const/4 v6, 0x0

    invoke-direct {v0, v6, v4, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1153
    new-instance v4, Ljxl/write/WritableCellFeatures;

    invoke-direct {v4}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-string v5, "the cell comment"

    .line 1154
    invoke-virtual {v4, v5}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v0, v4}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1156
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1158
    new-instance v0, Ljxl/write/Label;

    const/16 v4, 0x3b

    const-string v5, "A cell with a long comment"

    invoke-direct {v0, v6, v4, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1160
    new-instance v4, Ljxl/write/WritableCellFeatures;

    invoke-direct {v4}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    const-string v17, "a very long cell comment indeed that won\'t fit inside a standard comment box, so a larger comment box is used instead"

    move-object/from16 v16, v4

    .line 1161
    invoke-virtual/range {v16 .. v21}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;DD)V

    .line 1165
    invoke-virtual {v0, v4}, Ljxl/write/Label;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1166
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1168
    new-instance v0, Ljxl/write/WritableCellFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1169
    invoke-virtual {v0, v3}, Ljxl/write/WritableCellFormat;->setIndentation(I)V

    .line 1170
    new-instance v1, Ljxl/write/Label;

    const/16 v4, 0x3d

    const-string v5, "Some indented text"

    const/4 v6, 0x0

    invoke-direct {v1, v6, v4, v5, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1171
    invoke-interface {v12, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1173
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x3f

    const-string v4, "Data validation:  list"

    invoke-direct {v0, v6, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1174
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1176
    new-instance v0, Ljxl/write/Blank;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1}, Ljxl/write/Blank;-><init>(II)V

    .line 1177
    new-instance v1, Ljxl/write/WritableCellFeatures;

    invoke-direct {v1}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 1178
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "bagpuss"

    .line 1179
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "clangers"

    .line 1180
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "ivor the engine"

    .line 1181
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "noggin the nog"

    .line 1182
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1183
    invoke-virtual {v1, v4}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 1184
    invoke-virtual {v0, v1}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1185
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1187
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x40

    const-string v4, "Data validation:  number > 4.5"

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1188
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1190
    new-instance v0, Ljxl/write/Blank;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1}, Ljxl/write/Blank;-><init>(II)V

    .line 1191
    new-instance v1, Ljxl/write/WritableCellFeatures;

    invoke-direct {v1}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    .line 1192
    sget-object v6, Ljxl/write/WritableCellFeatures;->GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    invoke-virtual {v1, v4, v5, v6}, Ljxl/write/WritableCellFeatures;->setNumberValidation(DLjxl/biff/BaseCellFeatures$ValidationCondition;)V

    .line 1193
    invoke-virtual {v0, v1}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1194
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1196
    new-instance v0, Ljxl/write/Label;

    const/16 v1, 0x41

    const-string v4, "Data validation:  named range"

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1197
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1199
    new-instance v0, Ljxl/write/Label;

    const-string v4, "tiger"

    invoke-direct {v0, v3, v1, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1200
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1201
    new-instance v0, Ljxl/write/Label;

    const-string v3, "sword"

    invoke-direct {v0, v2, v1, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1202
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1203
    new-instance v0, Ljxl/write/Label;

    const-string v2, "honour"

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1204
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1205
    new-instance v0, Ljxl/write/Label;

    const-string v2, "company"

    const/4 v3, 0x7

    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1206
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1207
    new-instance v0, Ljxl/write/Label;

    const-string v2, "victory"

    invoke-direct {v0, v14, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1208
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1209
    new-instance v0, Ljxl/write/Label;

    const-string v2, "fortress"

    const/16 v3, 0x9

    invoke-direct {v0, v3, v1, v2}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1210
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1212
    new-instance v0, Ljxl/write/Blank;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljxl/write/Blank;-><init>(II)V

    .line 1213
    new-instance v1, Ljxl/write/WritableCellFeatures;

    invoke-direct {v1}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-string v2, "validation_range"

    .line 1214
    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFeatures;->setDataValidationRange(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v0, v1}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 1216
    invoke-interface {v12, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    return-void
.end method

.method private writeLabelsSheet(Ljxl/write/WritableSheet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 1320
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljxl/SheetSettings;->setProtected(Z)V

    .line 1321
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const-string v2, "jxl"

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setPassword(Ljava/lang/String;)V

    .line 1322
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljxl/SheetSettings;->setVerticalFreeze(I)V

    .line 1324
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 1325
    invoke-virtual {v0, v1}, Ljxl/write/WritableFont;->setItalic(Z)V

    .line 1327
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1329
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    const/16 v4, 0x1900

    .line 1330
    invoke-virtual {v0, v4}, Ljxl/CellView;->setSize(I)V

    .line 1331
    invoke-virtual {v0, v3}, Ljxl/CellView;->setFormat(Ljxl/format/CellFormat;)V

    const/4 v4, 0x0

    .line 1332
    invoke-interface {p1, v4, v0}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    const/16 v0, 0xf

    .line 1333
    invoke-interface {p1, v1, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v0, 0x0

    :goto_0
    const-string v5, "Distinct label number "

    const-string v6, "Common Label"

    const/16 v7, 0x3d

    if-ge v0, v7, :cond_0

    .line 1337
    new-instance v7, Ljxl/write/Label;

    invoke-direct {v7, v4, v0, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1338
    new-instance v6, Ljxl/write/Label;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v1, v0, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1339
    invoke-interface {p1, v7}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1340
    invoke-interface {p1, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1346
    :cond_0
    new-instance v0, Ljxl/write/Label;

    invoke-direct {v0, v4, v7, v6, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1347
    new-instance v8, Ljxl/write/Label;

    const-string v9, "1-1234567890"

    invoke-direct {v8, v1, v7, v9, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1348
    new-instance v9, Ljxl/write/Label;

    const/4 v10, 0x2

    const-string v11, "2-1234567890"

    invoke-direct {v9, v10, v7, v11, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1349
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1350
    invoke-interface {p1, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1351
    invoke-interface {p1, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x3e

    :goto_1
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_1

    .line 1355
    new-instance v3, Ljxl/write/Label;

    invoke-direct {v3, v4, v0, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1356
    new-instance v7, Ljxl/write/Label;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v0, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1357
    invoke-interface {p1, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1358
    invoke-interface {p1, v7}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1362
    :cond_1
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v3, Ljxl/write/WritableFont;->TIMES:Ljxl/write/WritableFont$FontName;

    const/16 v5, 0xa

    sget-object v6, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v3, v5, v6}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 1363
    sget-object v3, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v0, v3}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 1364
    new-instance v3, Ljxl/write/WritableCellFormat;

    invoke-direct {v3, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 1365
    invoke-virtual {v3, v1}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    .line 1366
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0xcd

    const-string v6, "Different format"

    invoke-direct {v0, v4, v5, v6, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1367
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1370
    new-instance v0, Ljxl/write/Label;

    const-string v4, "A column for autosizing"

    invoke-direct {v0, v2, v10, v4, v3}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 1371
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1372
    new-instance v0, Ljxl/write/Label;

    const/4 v3, 0x4

    const-string v4, "Another label, longer this time and in a different font"

    invoke-direct {v0, v2, v3, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 1374
    invoke-interface {p1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 1376
    new-instance v0, Ljxl/CellView;

    invoke-direct {v0}, Ljxl/CellView;-><init>()V

    .line 1377
    invoke-virtual {v0, v1}, Ljxl/CellView;->setAutosize(Z)V

    .line 1378
    invoke-interface {p1, v2, v0}, Ljxl/write/WritableSheet;->setColumnView(ILjxl/CellView;)V

    return-void
.end method

.method private writeNumberFormatSheet(Ljxl/write/WritableSheet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 147
    new-instance v1, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {v1, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v1, v2}, Ljxl/write/WritableCellFormat;->setWrap(Z)V

    const/16 v3, 0x14

    const/4 v4, 0x0

    .line 151
    invoke-interface {v0, v4, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v5, 0x4

    .line 152
    invoke-interface {v0, v5, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v6, 0x5

    .line 153
    invoke-interface {v0, v6, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    const/4 v7, 0x6

    .line 154
    invoke-interface {v0, v7, v3}, Ljxl/write/WritableSheet;->setColumnView(II)V

    .line 157
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Pi - default format"

    invoke-direct {v3, v4, v4, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 158
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 160
    new-instance v3, Ljxl/write/Number;

    const-wide v8, 0x400921fb54411744L    # 3.1415926535

    invoke-direct {v3, v2, v4, v8, v9}, Ljxl/write/Number;-><init>(IID)V

    .line 161
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 163
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x2

    const-wide v9, -0x3ff6de04abbee8bcL    # -3.1415926535

    invoke-direct {v3, v8, v4, v9, v10}, Ljxl/write/Number;-><init>(IID)V

    .line 164
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 166
    new-instance v3, Ljxl/write/Label;

    const-string v9, "+/- Pi - integer format"

    invoke-direct {v3, v4, v2, v9, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 167
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 169
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v9, Ljxl/write/NumberFormats;->INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 170
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-wide v13, 0x400921fb54411744L    # 3.1415926535

    move-object v10, v9

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 171
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 173
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x2

    const-wide v13, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 174
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 176
    new-instance v3, Ljxl/write/Label;

    const-string v9, "+/- Pi - float 2dps"

    invoke-direct {v3, v4, v8, v9, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 177
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 179
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v9, Ljxl/write/NumberFormats;->FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 180
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x1

    const/4 v12, 0x2

    const-wide v13, 0x400921fb54411744L    # 3.1415926535

    move-object v10, v9

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 181
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 183
    new-instance v9, Ljxl/write/Number;

    const/4 v11, 0x2

    const-wide v13, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 184
    invoke-interface {v0, v9}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 186
    new-instance v3, Ljxl/write/Label;

    const/4 v9, 0x3

    const-string v10, "+/- Pi - custom 3dps"

    invoke-direct {v3, v4, v9, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 188
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 190
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v10, "#.###"

    invoke-direct {v3, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 192
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x1

    const/4 v13, 0x3

    const-wide v14, 0x400921fb54411744L    # 3.1415926535

    move-object v11, v3

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 193
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 195
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x2

    const-wide v14, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 196
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 198
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Pi - custom &3.14"

    invoke-direct {v3, v4, v5, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 200
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 202
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v10, "&#.00"

    invoke-direct {v3, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 204
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x1

    const/4 v13, 0x4

    const-wide v14, 0x400921fb54411744L    # 3.1415926535

    move-object v11, v3

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 205
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 207
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x2

    const-wide v14, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 208
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 210
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Pi - custom Text #.### Text"

    invoke-direct {v3, v4, v6, v10, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 212
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 214
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v10, "Text#.####Text"

    invoke-direct {v3, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 215
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 216
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x1

    const/4 v13, 0x5

    const-wide v14, 0x400921fb54411744L    # 3.1415926535

    move-object v11, v3

    move-object/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 217
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 219
    new-instance v3, Ljxl/write/Number;

    const/4 v12, 0x2

    const-wide v14, -0x3ff6de04abbee8bcL    # -3.1415926535

    move-object v11, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 220
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 223
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Bilko default format"

    invoke-direct {v3, v5, v4, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 224
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 225
    new-instance v3, Ljxl/write/Number;

    const-wide v10, 0x416cb11160000000L    # 1.5042699E7

    invoke-direct {v3, v6, v4, v10, v11}, Ljxl/write/Number;-><init>(IID)V

    .line 226
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 227
    new-instance v3, Ljxl/write/Number;

    const-wide v10, -0x3e934eeea0000000L    # -1.5042699E7

    invoke-direct {v3, v7, v4, v10, v11}, Ljxl/write/Number;-><init>(IID)V

    .line 228
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 230
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Bilko float format"

    invoke-direct {v3, v5, v2, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 231
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 232
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v10, Ljxl/write/NumberFormats;->FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 233
    new-instance v10, Ljxl/write/Number;

    const/4 v12, 0x5

    const/4 v13, 0x1

    const-wide v14, 0x416cb11160000000L    # 1.5042699E7

    move-object v11, v10

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 234
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 235
    new-instance v10, Ljxl/write/Number;

    const/4 v12, 0x6

    const-wide v14, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 236
    invoke-interface {v0, v10}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 238
    new-instance v3, Ljxl/write/Label;

    const-string v10, "+/- Thousands separator"

    invoke-direct {v3, v5, v8, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 239
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 240
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->THOUSANDS_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 242
    new-instance v8, Ljxl/write/Number;

    const/4 v12, 0x5

    const/4 v13, 0x2

    const-wide v14, 0x416cb11160000000L    # 1.5042699E7

    move-object v11, v8

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 243
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 244
    new-instance v8, Ljxl/write/Number;

    const/4 v12, 0x6

    const-wide v14, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 245
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 247
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Accounting red - added 0.01"

    invoke-direct {v3, v5, v9, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 248
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 249
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->ACCOUNTING_RED_FLOAT:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 251
    new-instance v8, Ljxl/write/Number;

    const/4 v11, 0x5

    const/4 v12, 0x3

    const-wide v13, 0x416cb1116051eb85L    # 1.504269901E7

    move-object v10, v8

    move-object v15, v3

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 252
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 253
    new-instance v8, Ljxl/write/Number;

    const/4 v11, 0x6

    const-wide v13, -0x3e934eee9fae147bL    # -1.504269901E7

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 254
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 256
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Percent"

    invoke-direct {v3, v5, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 257
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 258
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v8, Ljxl/write/NumberFormats;->PERCENT_INTEGER:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v8}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 260
    new-instance v8, Ljxl/write/Number;

    const/4 v10, 0x5

    const/4 v11, 0x4

    const-wide v12, 0x416cb11160000000L    # 1.5042699E7

    move-object v9, v8

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 261
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 262
    new-instance v8, Ljxl/write/Number;

    const/4 v10, 0x6

    const-wide v12, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 263
    invoke-interface {v0, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 265
    new-instance v3, Ljxl/write/Label;

    const-string v8, "+/- Exponential - 2dps"

    invoke-direct {v3, v5, v6, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 266
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 267
    new-instance v3, Ljxl/write/WritableCellFormat;

    sget-object v6, Ljxl/write/NumberFormats;->EXPONENTIAL:Ljxl/biff/DisplayFormat;

    invoke-direct {v3, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 269
    new-instance v6, Ljxl/write/Number;

    const/4 v10, 0x5

    const/4 v11, 0x5

    const-wide v12, 0x416cb11160000000L    # 1.5042699E7

    move-object v9, v6

    move-object v14, v3

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 270
    invoke-interface {v0, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 271
    new-instance v6, Ljxl/write/Number;

    const/4 v10, 0x6

    const-wide v12, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v9, v6

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 272
    invoke-interface {v0, v6}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 274
    new-instance v3, Ljxl/write/Label;

    const-string v6, "+/- Custom exponentional - 3dps"

    invoke-direct {v3, v5, v7, v6, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 275
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 276
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v6, "0.000E0"

    invoke-direct {v3, v6}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 277
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 278
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x5

    const/4 v9, 0x6

    const-wide v10, 0x416cb11160000000L    # 1.5042699E7

    move-object v7, v3

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 279
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 280
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x6

    const-wide v10, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 281
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 283
    new-instance v3, Ljxl/write/Label;

    const/4 v6, 0x7

    const-string v7, "Custom neg brackets"

    invoke-direct {v3, v5, v6, v7, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 284
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 285
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v6, "#,##0;(#,##0)"

    invoke-direct {v3, v6}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 286
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 287
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x5

    const/4 v9, 0x7

    const-wide v10, 0x416cb11160000000L    # 1.5042699E7

    move-object v7, v3

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 288
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 289
    new-instance v3, Ljxl/write/Number;

    const/4 v8, 0x6

    const-wide v10, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 290
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 292
    new-instance v3, Ljxl/write/Label;

    const/16 v6, 0x8

    const-string v7, "Custom neg brackets 2"

    invoke-direct {v3, v5, v6, v7, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 293
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 294
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v7, "#,##0;(#,##0)a"

    invoke-direct {v3, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance v7, Ljxl/write/WritableCellFormat;

    invoke-direct {v7, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 296
    new-instance v3, Ljxl/write/Number;

    const/4 v9, 0x5

    const/16 v10, 0x8

    const-wide v11, 0x416cb11160000000L    # 1.5042699E7

    move-object v8, v3

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 297
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 298
    new-instance v3, Ljxl/write/Number;

    const/4 v9, 0x6

    const-wide v11, -0x3e934eeea0000000L    # -1.5042699E7

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 299
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 301
    new-instance v3, Ljxl/write/Label;

    const/16 v7, 0x9

    const-string v8, "Custom percent"

    invoke-direct {v3, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 302
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 303
    new-instance v3, Ljxl/write/NumberFormat;

    const-string v7, "0.0%"

    invoke-direct {v3, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 304
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 305
    new-instance v3, Ljxl/write/Number;

    const/4 v9, 0x5

    const/16 v10, 0x9

    const-wide v11, 0x400921fb53c8d4f1L    # 3.14159265

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 306
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 310
    new-instance v3, Ljxl/write/Label;

    const/16 v7, 0xa

    const-string v8, "Boolean - TRUE"

    invoke-direct {v3, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 311
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 312
    new-instance v3, Ljxl/write/Boolean;

    invoke-direct {v3, v2, v7, v2}, Ljxl/write/Boolean;-><init>(IIZ)V

    .line 313
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 315
    new-instance v3, Ljxl/write/Label;

    const/16 v7, 0xb

    const-string v8, "Boolean - FALSE"

    invoke-direct {v3, v4, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 316
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 317
    new-instance v3, Ljxl/write/Boolean;

    invoke-direct {v3, v2, v7, v4}, Ljxl/write/Boolean;-><init>(IIZ)V

    .line 318
    invoke-interface {v0, v3}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 320
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0xc

    const-string v7, "A hidden cell->"

    invoke-direct {v2, v4, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 321
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 322
    new-instance v2, Ljxl/write/Number;

    sget-object v13, Ljxl/write/WritableWorkbook;->HIDDEN_STYLE:Ljxl/write/WritableCellFormat;

    const/4 v9, 0x1

    const/16 v10, 0xc

    const-wide/high16 v11, 0x4031000000000000L    # 17.0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 323
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 326
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x13

    const-string v7, "Currency formats"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 327
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 329
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x15

    const-string v7, "UK Pound"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 330
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 331
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "\u00a3 #,###.00"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 334
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 335
    new-instance v2, Ljxl/write/Number;

    const/4 v9, 0x5

    const/16 v10, 0x15

    const-wide v11, 0x40c81c8000000000L    # 12345.0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 336
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 338
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x16

    const-string v7, "Euro 1"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 339
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 340
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "[$\u20ac-2] #,###.00"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 343
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 345
    new-instance v2, Ljxl/write/Number;

    const/16 v10, 0x16

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 346
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 348
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x17

    const-string v7, "Euro 2"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 349
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 350
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "#,###.00[$\u20ac-1]"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 353
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 355
    new-instance v2, Ljxl/write/Number;

    const/16 v10, 0x17

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 356
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 358
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x18

    const-string v7, "Dollar"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 359
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 360
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v3, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v7, "[$$-409] #,###.00"

    invoke-direct {v2, v7, v3}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 363
    new-instance v13, Ljxl/write/WritableCellFormat;

    invoke-direct {v13, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 365
    new-instance v2, Ljxl/write/Number;

    const/16 v10, 0x18

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 366
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 368
    new-instance v2, Ljxl/write/Label;

    const/16 v3, 0x19

    const-string v7, "Japanese Yen"

    invoke-direct {v2, v5, v3, v7}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 369
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 370
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v7, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v8, "[$\u00a5-411] #,###.00"

    invoke-direct {v2, v8, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 373
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 375
    new-instance v2, Ljxl/write/Number;

    const/4 v10, 0x5

    const/16 v11, 0x19

    const-wide v12, 0x40c81c8000000000L    # 12345.0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 376
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 378
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x1e

    const-string v8, "Fraction formats"

    invoke-direct {v2, v5, v7, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 379
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 381
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x20

    const-string v8, "One digit fraction format"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 382
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 384
    new-instance v14, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/NumberFormats;->FRACTION_ONE_DIGIT:Ljxl/biff/DisplayFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 386
    new-instance v2, Ljxl/write/Number;

    const/16 v11, 0x20

    const-wide v12, 0x4009765a9a804966L    # 3.18279

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 387
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 389
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x21

    const-string v8, "Two digit fraction format"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 390
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 392
    new-instance v14, Ljxl/write/WritableCellFormat;

    sget-object v2, Ljxl/write/NumberFormats;->FRACTION_TWO_DIGITS:Ljxl/biff/DisplayFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 394
    new-instance v2, Ljxl/write/Number;

    const/16 v11, 0x21

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 395
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 397
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x22

    const-string v8, "Three digit fraction format (improper)"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 398
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 400
    new-instance v2, Ljxl/write/NumberFormat;

    sget-object v7, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v8, "???/???"

    invoke-direct {v2, v8, v7}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 403
    new-instance v14, Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 405
    new-instance v2, Ljxl/write/Number;

    const/16 v11, 0x22

    const-wide v12, 0x4009839ffd60e94fL    # 3.18927

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 406
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 408
    new-instance v2, Ljxl/write/Label;

    const/16 v7, 0x23

    const-string v8, "Three digit fraction format (proper)"

    invoke-direct {v2, v5, v7, v8, v1}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 409
    invoke-interface {v0, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 411
    new-instance v1, Ljxl/write/NumberFormat;

    sget-object v2, Ljxl/write/NumberFormat;->COMPLEX_FORMAT:Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;

    const-string v5, "# ???/???"

    invoke-direct {v1, v5, v2}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;Ljxl/write/biff/NumberFormatRecord$NonValidatingFormat;)V

    .line 414
    new-instance v12, Ljxl/write/WritableCellFormat;

    invoke-direct {v12, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 416
    new-instance v1, Ljxl/write/Number;

    const/4 v8, 0x5

    const/16 v9, 0x23

    const-wide v10, 0x4009839ffd60e94fL    # 3.18927

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Ljxl/write/Number;-><init>(IIDLjxl/format/CellFormat;)V

    .line 417
    invoke-interface {v0, v1}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    const/16 v2, 0x8

    :goto_1
    const/16 v5, 0x6c

    if-ge v2, v5, :cond_0

    .line 424
    new-instance v5, Ljxl/write/Number;

    add-int v7, v2, v1

    int-to-double v7, v7

    invoke-direct {v5, v2, v1, v7, v8}, Ljxl/write/Number;-><init>(IID)V

    .line 425
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x65

    :goto_2
    const/16 v2, 0xbb8

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_2

    .line 434
    new-instance v5, Ljxl/write/Number;

    add-int v6, v2, v1

    int-to-double v6, v6

    invoke-direct {v5, v2, v1, v6, v7}, Ljxl/write/Number;-><init>(IID)V

    .line 435
    invoke-interface {v0, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public write()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/write/WriteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 103
    new-instance v1, Ljxl/WorkbookSettings;

    invoke-direct {v1}, Ljxl/WorkbookSettings;-><init>()V

    .line 104
    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "EN"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljxl/WorkbookSettings;->setLocale(Ljava/util/Locale;)V

    .line 105
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Ljxl/demo/Write;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object v1

    iput-object v1, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    .line 108
    iget-object v1, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const/4 v2, 0x0

    const-string v3, "Number Formats"

    invoke-virtual {v1, v3, v2}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v1

    .line 109
    iget-object v3, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v4, "Date Formats"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v3

    .line 110
    iget-object v4, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v5, "Label Formats"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v4

    .line 111
    iget-object v5, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v6, "Borders"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v5

    .line 112
    iget-object v6, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const/4 v15, 0x4

    const-string v7, "Labels"

    invoke-virtual {v6, v7, v15}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v6

    .line 113
    iget-object v7, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v8, "Formulas"

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v7

    .line 114
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v9, "Images"

    const/4 v10, 0x6

    invoke-virtual {v8, v9, v10}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v14

    .line 119
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    sget-object v9, Ljxl/format/Colour;->LIME:Ljxl/format/Colour;

    const/16 v10, 0xff

    invoke-virtual {v8, v9, v10, v2, v2}, Ljxl/write/WritableWorkbook;->setColourRGB(Ljxl/format/Colour;III)V

    .line 122
    iget-object v8, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v9, "namedrange"

    const/4 v11, 0x1

    const/16 v12, 0xb

    const/4 v13, 0x5

    const/16 v2, 0xe

    move-object v10, v5

    move-object/from16 v16, v14

    move v14, v2

    invoke-virtual/range {v8 .. v14}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 123
    iget-object v2, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    const-string v8, "validation_range"

    const/4 v10, 0x4

    const/16 v11, 0x41

    const/16 v12, 0x9

    const/16 v13, 0x41

    move-object v14, v7

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v13}, Ljxl/write/WritableWorkbook;->addNameArea(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V

    .line 126
    invoke-interface {v6}, Ljxl/write/WritableSheet;->getSettings()Ljxl/SheetSettings;

    move-result-object v2

    const/16 v7, 0xf

    const/16 v8, 0x23

    invoke-virtual {v2, v15, v15, v7, v8}, Ljxl/SheetSettings;->setPrintArea(IIII)V

    .line 128
    invoke-direct {v0, v4}, Ljxl/demo/Write;->writeLabelFormatSheet(Ljxl/write/WritableSheet;)V

    .line 129
    invoke-direct {v0, v1}, Ljxl/demo/Write;->writeNumberFormatSheet(Ljxl/write/WritableSheet;)V

    .line 130
    invoke-direct {v0, v3}, Ljxl/demo/Write;->writeDateFormatSheet(Ljxl/write/WritableSheet;)V

    .line 131
    invoke-direct {v0, v5}, Ljxl/demo/Write;->writeBordersSheet(Ljxl/write/WritableSheet;)V

    .line 132
    invoke-direct {v0, v6}, Ljxl/demo/Write;->writeLabelsSheet(Ljxl/write/WritableSheet;)V

    .line 133
    invoke-direct {v0, v14}, Ljxl/demo/Write;->writeFormulaSheet(Ljxl/write/WritableSheet;)V

    move-object/from16 v1, v16

    .line 134
    invoke-direct {v0, v1}, Ljxl/demo/Write;->writeImageSheet(Ljxl/write/WritableSheet;)V

    .line 136
    iget-object v1, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v1}, Ljxl/write/WritableWorkbook;->write()V

    .line 137
    iget-object v1, v0, Ljxl/demo/Write;->workbook:Ljxl/write/WritableWorkbook;

    invoke-virtual {v1}, Ljxl/write/WritableWorkbook;->close()V

    return-void
.end method
