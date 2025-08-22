.class public Ljxl/demo/ReadWrite;
.super Ljava/lang/Object;
.source "ReadWrite.java"


# static fields
.field static synthetic class$jxl$demo$ReadWrite:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private inputWorkbook:Ljava/io/File;

.field private outputWorkbook:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    sget-object v0, Ljxl/demo/ReadWrite;->class$jxl$demo$ReadWrite:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.demo.ReadWrite"

    invoke-static {v0}, Ljxl/demo/ReadWrite;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/demo/ReadWrite;->class$jxl$demo$ReadWrite:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/demo/ReadWrite;->outputWorkbook:Ljava/io/File;

    .line 91
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    const-string v1, "jxl.nowarnings"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcommon/Logger;->setSuppressWarnings(Z)V

    .line 92
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Input file:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 93
    sget-object p1, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Output file:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 70
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

.method private modify(Ljxl/write/WritableWorkbook;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 128
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    const-string v1, "Modifying..."

    invoke-virtual {v0, v1}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    const-string v0, "modified"

    move-object/from16 v1, p1

    .line 130
    invoke-virtual {v1, v0}, Ljxl/write/WritableWorkbook;->getSheet(Ljava/lang/String;)Ljxl/write/WritableSheet;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 138
    invoke-interface {v1, v3, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 139
    new-instance v4, Ljxl/write/WritableFont;

    sget-object v5, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v6, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    const/16 v7, 0xa

    invoke-direct {v4, v5, v7, v6}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    .line 142
    new-instance v5, Ljxl/write/WritableCellFormat;

    invoke-direct {v5, v4}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 143
    invoke-interface {v0, v5}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/4 v4, 0x4

    .line 146
    invoke-interface {v1, v3, v4}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 147
    new-instance v5, Ljxl/write/WritableFont;

    sget-object v9, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    sget-object v11, Ljxl/write/WritableFont;->NO_BOLD:Ljxl/write/WritableFont$BoldStyle;

    sget-object v13, Ljxl/format/UnderlineStyle;->SINGLE:Ljxl/format/UnderlineStyle;

    const/16 v10, 0xa

    const/4 v12, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;ZLjxl/format/UnderlineStyle;)V

    .line 152
    new-instance v6, Ljxl/write/WritableCellFormat;

    invoke-direct {v6, v5}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 153
    invoke-interface {v0, v6}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/4 v5, 0x5

    .line 156
    invoke-interface {v1, v3, v5}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 157
    new-instance v6, Ljxl/write/WritableFont;

    sget-object v8, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    invoke-direct {v6, v8, v7}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    .line 158
    new-instance v8, Ljxl/write/WritableCellFormat;

    invoke-direct {v8, v6}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    .line 159
    invoke-interface {v0, v8}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/4 v6, 0x6

    .line 162
    invoke-interface {v1, v3, v6}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v8

    sget-object v9, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v8, v9, :cond_0

    .line 165
    check-cast v0, Ljxl/write/Label;

    .line 166
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljxl/write/Label;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v9, " - mod"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    :cond_0
    const/16 v8, 0x9

    .line 170
    invoke-interface {v1, v3, v8}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 171
    new-instance v9, Ljxl/write/NumberFormat;

    const-string v10, "#.0000000"

    invoke-direct {v9, v10}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v10, Ljxl/write/WritableCellFormat;

    invoke-direct {v10, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 173
    invoke-interface {v0, v10}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 177
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 178
    new-instance v7, Ljxl/write/NumberFormat;

    const-string v9, "0.####E0"

    invoke-direct {v7, v9}, Ljxl/write/NumberFormat;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v9, Ljxl/write/WritableCellFormat;

    invoke-direct {v9, v7}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 180
    invoke-interface {v0, v9}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v0, 0xb

    .line 183
    invoke-interface {v1, v3, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v7

    .line 184
    sget-object v9, Ljxl/write/WritableWorkbook;->NORMAL_STYLE:Ljxl/write/WritableCellFormat;

    invoke-interface {v7, v9}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v7, 0xc

    .line 187
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v7

    .line 188
    invoke-interface {v7}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v9

    sget-object v10, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v9, v10, :cond_1

    .line 190
    check-cast v7, Ljxl/write/Number;

    const-wide/high16 v9, 0x4045000000000000L    # 42.0

    .line 191
    invoke-virtual {v7, v9, v10}, Ljxl/write/Number;->setValue(D)V

    :cond_1
    const/16 v7, 0xd

    .line 195
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v7

    .line 196
    invoke-interface {v7}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v9

    sget-object v10, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v9, v10, :cond_2

    .line 198
    check-cast v7, Ljxl/write/Number;

    .line 199
    invoke-virtual {v7}, Ljxl/write/Number;->getValue()D

    move-result-wide v9

    const-wide v11, 0x3fb999999999999aL    # 0.1

    add-double/2addr v9, v11

    invoke-virtual {v7, v9, v10}, Ljxl/write/Number;->setValue(D)V

    :cond_2
    const/16 v7, 0x10

    .line 203
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 204
    new-instance v10, Ljxl/write/DateFormat;

    const-string v11, "dd MMM yyyy HH:mm:ss"

    invoke-direct {v10, v11}, Ljxl/write/DateFormat;-><init>(Ljava/lang/String;)V

    .line 205
    new-instance v11, Ljxl/write/WritableCellFormat;

    invoke-direct {v11, v10}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 206
    invoke-interface {v9, v11}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v9, 0x11

    .line 209
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 210
    new-instance v10, Ljxl/write/WritableCellFormat;

    sget-object v11, Ljxl/write/DateFormats;->FORMAT9:Ljxl/biff/DisplayFormat;

    invoke-direct {v10, v11}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    .line 211
    invoke-interface {v9, v10}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    const/16 v9, 0x12

    .line 214
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 215
    invoke-interface {v9}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v11

    sget-object v12, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v11, v12, :cond_3

    .line 217
    check-cast v9, Ljxl/write/DateTime;

    .line 218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    const/16 v12, 0x7ce

    const/4 v13, 0x1

    const/16 v14, 0x12

    const/16 v15, 0xb

    const/16 v16, 0x17

    const/16 v17, 0x1c

    move-object/from16 v11, v18

    .line 219
    invoke-virtual/range {v11 .. v17}, Ljava/util/Calendar;->set(IIIIII)V

    .line 220
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 221
    invoke-virtual {v9, v11}, Ljxl/write/DateTime;->setDate(Ljava/util/Date;)V

    :cond_3
    const/16 v9, 0x16

    .line 226
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 227
    invoke-interface {v9}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v11

    sget-object v12, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v11, v12, :cond_4

    .line 229
    check-cast v9, Ljxl/write/Number;

    const-wide v11, 0x401b333333333333L    # 6.8

    .line 230
    invoke-virtual {v9, v11, v12}, Ljxl/write/Number;->setValue(D)V

    :cond_4
    const/16 v9, 0x1d

    .line 235
    invoke-interface {v1, v3, v9}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v9

    .line 236
    invoke-interface {v9}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v11

    sget-object v12, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v11, v12, :cond_5

    .line 238
    check-cast v9, Ljxl/write/Label;

    const-string v11, "Modified string contents"

    .line 239
    invoke-virtual {v9, v11}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    :cond_5
    const/16 v9, 0x22

    .line 242
    invoke-interface {v1, v9}, Ljxl/write/WritableSheet;->insertRow(I)V

    const/16 v9, 0x26

    .line 245
    invoke-interface {v1, v9}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 248
    invoke-interface {v1, v8}, Ljxl/write/WritableSheet;->insertColumn(I)V

    .line 251
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeColumn(I)V

    const/16 v0, 0x2b

    .line 255
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeRow(I)V

    .line 256
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->insertRow(I)V

    .line 259
    invoke-interface {v1}, Ljxl/write/WritableSheet;->getWritableHyperlinks()[Ljxl/write/WritableHyperlink;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 261
    :goto_0
    array-length v0, v9

    if-ge v12, v0, :cond_a

    .line 263
    aget-object v0, v9, v12

    .line 264
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v13

    if-ne v13, v3, :cond_6

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v13

    const/16 v14, 0x27

    if-ne v13, v14, :cond_6

    .line 269
    :try_start_0
    new-instance v13, Ljava/net/URL;

    const-string v14, "http://www.andykhan.com/jexcelapi/index.html"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljxl/write/WritableHyperlink;->setURL(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 273
    sget-object v13, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_1

    .line 276
    :cond_6
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v13

    if-ne v13, v3, :cond_7

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v13

    const/16 v14, 0x28

    if-ne v13, v14, :cond_7

    .line 278
    new-instance v13, Ljava/io/File;

    const-string v14, "../jexcelapi/docs/overview-summary.html"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljxl/write/WritableHyperlink;->setFile(Ljava/io/File;)V

    goto :goto_1

    .line 280
    :cond_7
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v13

    if-ne v13, v3, :cond_8

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v13

    const/16 v14, 0x29

    if-ne v13, v14, :cond_8

    .line 282
    new-instance v13, Ljava/io/File;

    const-string v14, "d:/home/jexcelapi/docs/jxl/package-summary.html"

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljxl/write/WritableHyperlink;->setFile(Ljava/io/File;)V

    goto :goto_1

    .line 284
    :cond_8
    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getColumn()I

    move-result v13

    if-ne v13, v3, :cond_9

    invoke-virtual {v0}, Ljxl/write/WritableHyperlink;->getRow()I

    move-result v13

    const/16 v14, 0x2c

    if-ne v13, v14, :cond_9

    .line 287
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeHyperlink(Ljxl/write/WritableHyperlink;)V

    :cond_9
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_a
    const/16 v0, 0x1e

    .line 292
    invoke-interface {v1, v5, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 293
    new-instance v5, Ljxl/write/WritableCellFormat;

    invoke-interface {v0}, Ljxl/write/WritableCell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v9

    invoke-direct {v5, v9}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/format/CellFormat;)V

    .line 294
    sget-object v9, Ljxl/format/Colour;->RED:Ljxl/format/Colour;

    invoke-virtual {v5, v9}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 295
    invoke-interface {v0, v5}, Ljxl/write/WritableCell;->setCellFormat(Ljxl/format/CellFormat;)V

    .line 298
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x31

    const-string v9, "Modified merged cells"

    invoke-direct {v0, v11, v5, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 299
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x46

    .line 302
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    const-wide/high16 v12, 0x4022000000000000L    # 9.0

    .line 303
    invoke-virtual {v0, v12, v13}, Ljxl/write/Number;->setValue(D)V

    const/16 v0, 0x47

    .line 305
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 306
    invoke-virtual {v0, v12, v13}, Ljxl/write/Number;->setValue(D)V

    const/16 v0, 0x49

    .line 308
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    check-cast v0, Ljxl/write/Number;

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    .line 309
    invoke-virtual {v0, v12, v13}, Ljxl/write/Number;->setValue(D)V

    .line 312
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x50

    const-string v9, "ROUND(COS(original!B10),2)"

    invoke-direct {v0, v3, v5, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 313
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 316
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x53

    const-string v9, "value1+value2"

    invoke-direct {v0, v3, v5, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 317
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 320
    new-instance v0, Ljxl/write/Formula;

    const/16 v5, 0x54

    const-string v9, "AVERAGE(value1,value1*4,value2)"

    invoke-direct {v0, v3, v5, v9}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 321
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 327
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x58

    const-string v9, "Some copied cells"

    invoke-direct {v0, v11, v5, v9, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    .line 328
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 330
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x59

    const-string v9, "Number from B9"

    invoke-direct {v0, v11, v5, v9}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 331
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 333
    invoke-interface {v1, v3, v8}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 334
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 336
    new-instance v0, Ljxl/write/Label;

    const/16 v5, 0x5a

    const-string v8, "Label from B4 (modified format)"

    invoke-direct {v0, v11, v5, v8}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 337
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 339
    invoke-interface {v1, v3, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v5}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 340
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 342
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x5b

    const-string v5, "Date from B17"

    invoke-direct {v0, v11, v2, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 343
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 345
    invoke-interface {v1, v3, v7}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 346
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 348
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x5c

    const-string v5, "Boolean from E16"

    invoke-direct {v0, v11, v2, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 349
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0xf

    .line 351
    invoke-interface {v1, v4, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 352
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 354
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x5d

    const-string v4, "URL from B40"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 355
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x27

    .line 357
    invoke-interface {v1, v3, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 358
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_b

    .line 363
    new-instance v2, Ljxl/write/Number;

    add-int/lit8 v4, v0, 0x5e

    add-int/lit8 v5, v0, 0x1

    int-to-double v7, v5

    int-to-double v9, v0

    const-wide/high16 v12, 0x4020000000000000L    # 8.0

    div-double/2addr v9, v12

    add-double/2addr v7, v9

    invoke-direct {v2, v3, v4, v7, v8}, Ljxl/write/Number;-><init>(IID)V

    .line 364
    invoke-interface {v1, v2}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    move v0, v5

    goto :goto_2

    .line 367
    :cond_b
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x64

    const-string v4, "Formula from B27"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 368
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x1a

    .line 370
    invoke-interface {v1, v3, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 371
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 373
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x65

    const-string v4, "A brand new formula"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 374
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 376
    new-instance v0, Ljxl/write/Formula;

    const-string v4, "SUM(B94:B96)"

    invoke-direct {v0, v3, v2, v4}, Ljxl/write/Formula;-><init>(IILjava/lang/String;)V

    .line 377
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 379
    new-instance v0, Ljxl/write/Label;

    const/16 v4, 0x66

    const-string v5, "A copy of it"

    invoke-direct {v0, v11, v4, v5}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 380
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 382
    invoke-interface {v1, v3, v2}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    const/16 v2, 0x66

    invoke-interface {v0, v3, v2}, Ljxl/write/WritableCell;->copyTo(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 383
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 386
    invoke-interface {v1, v3}, Ljxl/write/WritableSheet;->getImage(I)Ljxl/write/WritableImage;

    move-result-object v0

    .line 387
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->removeImage(Ljxl/write/WritableImage;)V

    .line 389
    new-instance v0, Ljxl/write/WritableImage;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x405d000000000000L    # 116.0

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    const-wide/high16 v19, 0x4022000000000000L    # 9.0

    new-instance v2, Ljava/io/File;

    const-string v4, "resources/littlemoretonhall.png"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    move-object/from16 v21, v2

    invoke-direct/range {v12 .. v21}, Ljxl/write/WritableImage;-><init>(DDDDLjava/io/File;)V

    .line 391
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addImage(Ljxl/write/WritableImage;)V

    .line 394
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x97

    const-string v4, "Added drop down validation"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 395
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 397
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, v3, v2}, Ljxl/write/Blank;-><init>(II)V

    .line 398
    new-instance v2, Ljxl/write/WritableCellFeatures;

    invoke-direct {v2}, Ljxl/write/WritableCellFeatures;-><init>()V

    .line 399
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "The Fellowship of the Ring"

    .line 400
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "The Two Towers"

    .line 401
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "The Return of the King"

    .line 402
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v2, v4}, Ljxl/write/WritableCellFeatures;->setDataValidationList(Ljava/util/Collection;)V

    .line 404
    invoke-virtual {v0, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 405
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 408
    new-instance v0, Ljxl/write/Label;

    const/16 v2, 0x98

    const-string v4, "Added number validation 2.718 < x < 3.142"

    invoke-direct {v0, v11, v2, v4}, Ljxl/write/Label;-><init>(IILjava/lang/String;)V

    .line 409
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 410
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, v3, v2}, Ljxl/write/Blank;-><init>(II)V

    .line 411
    new-instance v2, Ljxl/write/WritableCellFeatures;

    invoke-direct {v2}, Ljxl/write/WritableCellFeatures;-><init>()V

    const-wide v5, 0x4005be76c8b43958L    # 2.718

    const-wide v7, 0x400922d0e5604189L    # 3.142

    .line 412
    sget-object v9, Ljxl/write/WritableCellFeatures;->BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Ljxl/write/WritableCellFeatures;->setNumberValidation(DDLjxl/biff/BaseCellFeatures$ValidationCondition;)V

    .line 413
    invoke-virtual {v0, v2}, Ljxl/write/Blank;->setCellFeatures(Ljxl/write/WritableCellFeatures;)V

    .line 414
    invoke-interface {v1, v0}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    const/16 v0, 0x9c

    .line 417
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 418
    check-cast v0, Ljxl/write/Label;

    const-string v2, "Label text modified"

    .line 419
    invoke-virtual {v0, v2}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    const/16 v0, 0x9d

    .line 421
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 422
    invoke-interface {v0}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v0

    const-string v2, "modified comment text"

    .line 423
    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFeatures;->setComment(Ljava/lang/String;)V

    const/16 v0, 0x9e

    .line 425
    invoke-interface {v1, v11, v0}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljxl/write/WritableCell;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Ljxl/write/WritableCellFeatures;->removeComment()V

    return-void
.end method


# virtual methods
.method public readWrite()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;,
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 104
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    const-string v1, "Reading..."

    invoke-virtual {v0, v1}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    invoke-static {v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/File;)Ljxl/Workbook;

    move-result-object v0

    .line 107
    sget-object v1, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    const-string v2, "Copying..."

    invoke-virtual {v1, v2}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Ljxl/demo/ReadWrite;->outputWorkbook:Ljava/io/File;

    invoke-static {v1, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;

    move-result-object v0

    .line 110
    iget-object v1, p0, Ljxl/demo/ReadWrite;->inputWorkbook:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jxlrwtest.xls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, v0}, Ljxl/demo/ReadWrite;->modify(Ljxl/write/WritableWorkbook;)V

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->write()V

    .line 116
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V

    .line 117
    sget-object v0, Ljxl/demo/ReadWrite;->logger:Lcommon/Logger;

    const-string v1, "Done"

    invoke-virtual {v0, v1}, Lcommon/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method
