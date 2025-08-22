.class public Ljxl/read/biff/HyperlinkRecord;
.super Ljxl/biff/RecordData;
.source "HyperlinkRecord.java"

# interfaces
.implements Ljxl/Hyperlink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/HyperlinkRecord$LinkType;
    }
.end annotation


# static fields
.field static synthetic class$jxl$read$biff$HyperlinkRecord:Ljava/lang/Class;

.field private static final fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private static logger:Lcommon/Logger;

.field private static final unknown:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private static final urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private static final workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;


# instance fields
.field private file:Ljava/io/File;

.field private firstColumn:I

.field private firstRow:I

.field private lastColumn:I

.field private lastRow:I

.field private linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

.field private location:Ljava/lang/String;

.field private range:Ljxl/biff/SheetRangeImpl;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->class$jxl$read$biff$HyperlinkRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.HyperlinkRecord"

    invoke-static {v0}, Ljxl/read/biff/HyperlinkRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->class$jxl$read$biff$HyperlinkRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    .line 96
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 97
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 98
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 99
    new-instance v0, Ljxl/read/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/read/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/read/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/read/biff/HyperlinkRecord;->unknown:Ljxl/read/biff/HyperlinkRecord$LinkType;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/Sheet;Ljxl/WorkbookSettings;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "http://www.andykhan.com/jexcelapi/index.html"

    .line 110
    invoke-direct/range {p0 .. p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 112
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->unknown:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/HyperlinkRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    const/4 v3, 0x0

    .line 117
    aget-byte v4, v0, v3

    const/4 v5, 0x1

    aget-byte v6, v0, v5

    invoke-static {v4, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    iput v4, v1, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    const/4 v4, 0x2

    .line 118
    aget-byte v6, v0, v4

    const/4 v7, 0x3

    aget-byte v8, v0, v7

    invoke-static {v6, v8}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    iput v6, v1, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    const/4 v6, 0x4

    .line 119
    aget-byte v8, v0, v6

    const/4 v9, 0x5

    aget-byte v9, v0, v9

    invoke-static {v8, v9}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v8

    iput v8, v1, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    const/4 v8, 0x6

    .line 120
    aget-byte v9, v0, v8

    const/4 v10, 0x7

    aget-byte v10, v0, v10

    invoke-static {v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v9

    iput v9, v1, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    .line 121
    new-instance v9, Ljxl/biff/SheetRangeImpl;

    iget v12, v1, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    iget v13, v1, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    iget v14, v1, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    iget v15, v1, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    move-object v10, v9

    move-object/from16 v11, p2

    invoke-direct/range {v10 .. v15}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v9, v1, Ljxl/read/biff/HyperlinkRecord;->range:Ljxl/biff/SheetRangeImpl;

    const/16 v9, 0x1c

    .line 125
    aget-byte v9, v0, v9

    const/16 v10, 0x1d

    aget-byte v10, v0, v10

    const/16 v11, 0x1e

    aget-byte v11, v0, v11

    const/16 v12, 0x1f

    aget-byte v12, v0, v12

    invoke-static {v9, v10, v11, v12}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v9

    and-int/lit8 v10, v9, 0x14

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x23

    const/16 v12, 0x21

    const/16 v13, 0x20

    const/16 v14, 0x22

    if-eqz v10, :cond_1

    .line 132
    aget-byte v10, v0, v13

    aget-byte v15, v0, v12

    aget-byte v12, v0, v14

    aget-byte v8, v0, v11

    invoke-static {v10, v15, v12, v8}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v6

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    add-int/2addr v8, v13

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_3

    .line 144
    aget-byte v10, v0, v8

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, v0, v12

    add-int/lit8 v15, v8, 0x2

    aget-byte v15, v0, v15

    add-int/lit8 v16, v8, 0x3

    aget-byte v11, v0, v16

    invoke-static {v10, v12, v15, v11}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v6

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    add-int/2addr v8, v10

    and-int/lit8 v10, v9, 0x3

    if-ne v10, v7, :cond_4

    .line 155
    sget-object v9, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v9, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 158
    aget-byte v9, v0, v8

    if-ne v9, v7, :cond_6

    .line 160
    sget-object v7, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v7, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    goto :goto_4

    :cond_4
    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_5

    .line 165
    sget-object v7, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v7, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 167
    aget-byte v7, v0, v8

    const/16 v9, -0x20

    if-ne v7, v9, :cond_6

    .line 169
    sget-object v7, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v7, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    goto :goto_4

    :cond_5
    and-int/lit8 v7, v9, 0x8

    if-eqz v7, :cond_6

    .line 174
    sget-object v7, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v7, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 178
    :cond_6
    :goto_4
    iget-object v7, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v9, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v7, v9, :cond_7

    const/4 v7, 0x0

    add-int/lit8 v8, v8, 0x10

    .line 186
    :try_start_0
    aget-byte v9, v0, v8

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, v0, v10

    add-int/lit8 v11, v8, 0x2

    aget-byte v11, v0, v11

    add-int/lit8 v12, v8, 0x3

    aget-byte v12, v0, v12

    invoke-static {v9, v10, v11, v12}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v9

    .line 191
    div-int/2addr v9, v4

    sub-int/2addr v9, v5

    add-int/2addr v8, v6

    invoke-static {v0, v9, v8}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v7

    .line 193
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    .line 221
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 222
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    iget v6, v1, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    iget v7, v1, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    invoke-static {v6, v7, v4}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 224
    iget v6, v1, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    iget v7, v1, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    invoke-static {v6, v7, v5}, Ljxl/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    const-string v6, "Exception when parsing URL "

    .line 225
    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v4, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\".  Using default."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    sget-object v3, Ljxl/read/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    invoke-virtual {v3, v4, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 232
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_6

    .line 197
    :catch_0
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " is malformed.  Trying a file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 200
    :try_start_2
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 205
    :catch_1
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    const-string v3, "Cannot set to file.  Setting a default URL"

    invoke-virtual {v0, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 210
    :try_start_3
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    .line 211
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 240
    :cond_7
    sget-object v2, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v7, v2, :cond_9

    add-int/lit8 v8, v8, 0x10

    .line 248
    :try_start_4
    aget-byte v2, v0, v8

    add-int/lit8 v4, v8, 0x1

    aget-byte v4, v0, v4

    invoke-static {v2, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 v4, v8, 0x2

    .line 250
    aget-byte v4, v0, v4

    add-int/lit8 v6, v8, 0x3

    aget-byte v6, v0, v6

    add-int/lit8 v7, v8, 0x4

    aget-byte v7, v0, v7

    add-int/lit8 v9, v8, 0x5

    aget-byte v9, v0, v9

    invoke-static {v4, v6, v7, v9}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v4

    sub-int/2addr v4, v5

    const/4 v5, 0x6

    add-int/2addr v8, v5

    move-object/from16 v5, p3

    .line 254
    invoke-static {v0, v4, v8, v5}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :goto_5
    if-ge v3, v2, :cond_8

    const-string v5, "..\\"

    .line 261
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 264
    :cond_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    sget-object v2, Ljxl/read/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Exception when parsing file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 273
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;

    goto :goto_6

    .line 276
    :cond_9
    sget-object v2, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v7, v2, :cond_a

    .line 278
    aget-byte v2, v0, v13

    const/16 v3, 0x21

    aget-byte v3, v0, v3

    aget-byte v4, v0, v14

    const/16 v6, 0x23

    aget-byte v6, v0, v6

    invoke-static {v2, v3, v4, v6}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    sub-int/2addr v2, v5

    const/16 v3, 0x24

    .line 279
    invoke-static {v0, v2, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljxl/read/biff/HyperlinkRecord;->location:Ljava/lang/String;

    :catch_2
    :goto_6
    return-void

    .line 284
    :cond_a
    sget-object v0, Ljxl/read/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    const-string v2, "Cannot determine link type"

    invoke-virtual {v0, v2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 47
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
.method public getColumn()I
    .locals 1

    .line 336
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->firstColumn:I

    return v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 376
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 356
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->lastColumn:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 346
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->lastRow:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Ljxl/Range;
    .locals 1

    .line 398
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->range:Ljxl/biff/SheetRangeImpl;

    return-object v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 386
    invoke-super {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 326
    iget v0, p0, Ljxl/read/biff/HyperlinkRecord;->firstRow:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 366
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isFile()Z
    .locals 2

    .line 296
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/read/biff/HyperlinkRecord;->fileLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocation()Z
    .locals 2

    .line 316
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/read/biff/HyperlinkRecord;->workbookLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isURL()Z
    .locals 2

    .line 306
    iget-object v0, p0, Ljxl/read/biff/HyperlinkRecord;->linkType:Ljxl/read/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/read/biff/HyperlinkRecord;->urlLink:Ljxl/read/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
