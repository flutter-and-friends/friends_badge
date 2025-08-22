.class public Ljxl/write/biff/HyperlinkRecord;
.super Ljxl/biff/WritableRecordData;
.source "HyperlinkRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/HyperlinkRecord$LinkType;
    }
.end annotation


# static fields
.field static synthetic class$jxl$write$biff$HyperlinkRecord:Ljava/lang/Class;

.field private static final fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static logger:Lcommon/Logger;

.field private static final uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private static final workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;


# instance fields
.field private contents:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;

.field private firstColumn:I

.field private firstRow:I

.field private lastColumn:I

.field private lastRow:I

.field private linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

.field private location:Ljava/lang/String;

.field private modified:Z

.field private range:Ljxl/Range;

.field private sheet:Ljxl/write/WritableSheet;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->class$jxl$write$biff$HyperlinkRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.HyperlinkRecord"

    invoke-static {v0}, Ljxl/write/biff/HyperlinkRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->class$jxl$write$biff$HyperlinkRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    .line 122
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 123
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 124
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 125
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 126
    new-instance v0, Ljxl/write/biff/HyperlinkRecord$LinkType;

    invoke-direct {v0, v1}, Ljxl/write/biff/HyperlinkRecord$LinkType;-><init>(Ljxl/write/biff/HyperlinkRecord$1;)V

    sput-object v0, Ljxl/write/biff/HyperlinkRecord;->unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

    return-void
.end method

.method protected constructor <init>(IIIILjava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 218
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 220
    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 221
    iput p2, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 223
    iget p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 224
    iget p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 225
    iput-object p6, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 227
    iput-object p5, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 229
    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\\\"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    sget-object p1, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    goto :goto_0

    .line 235
    :cond_0
    sget-object p1, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    :goto_0
    const/4 p1, 0x1

    .line 238
    iput-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    return-void
.end method

.method protected constructor <init>(IIIILjava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 7

    move-object v6, p0

    .line 262
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    move v0, p1

    .line 264
    iput v0, v6, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    move v0, p2

    .line 265
    iput v0, v6, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 267
    iget v0, v6, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    move v1, p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 268
    iget v0, v6, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    move v1, p4

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v0, p0

    move-object v1, p6

    move v2, p7

    move v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    .line 270
    invoke-direct/range {v0 .. v5}, Ljxl/write/biff/HyperlinkRecord;->setLocation(Ljxl/write/WritableSheet;IIII)V

    move-object v0, p5

    .line 271
    iput-object v0, v6, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 273
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, v6, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, v6, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    return-void
.end method

.method protected constructor <init>(IIIILjava/net/URL;Ljava/lang/String;)V
    .locals 1

    .line 189
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 191
    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 192
    iput p2, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 194
    iget p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 195
    iget p1, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 197
    iput-object p5, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 198
    iput-object p6, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 200
    sget-object p1, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 p1, 0x1

    .line 202
    iput-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .locals 7

    .line 135
    sget-object v0, Ljxl/biff/Type;->HLINK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 137
    instance-of v0, p1, Ljxl/read/biff/HyperlinkRecord;

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 139
    check-cast p1, Ljxl/read/biff/HyperlinkRecord;

    .line 141
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    .line 142
    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    .line 145
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 146
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 147
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getLastRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 148
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getLastColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 149
    new-instance v0, Ljxl/biff/SheetRangeImpl;

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v1, v0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    .line 153
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->unknown:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 155
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->isFile()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 157
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 158
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->isURL()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 162
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 163
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getURL()Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->isLocation()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 167
    sget-object p2, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object p2, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    .line 168
    invoke-virtual {p1}, Ljxl/read/biff/HyperlinkRecord;->getLocation()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 52
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

.method private getFileData([B)[B
    .locals 10

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 916
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljxl/write/biff/HyperlinkRecord;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    .line 922
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ljxl/write/biff/HyperlinkRecord;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 930
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    move v5, v2

    const/4 v2, 0x1

    const/4 v6, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 935
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ".."

    .line 936
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 939
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 940
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 950
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 951
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 953
    iget-object v7, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_3

    .line 955
    iget-object v7, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x43

    if-eq v7, v9, :cond_3

    const/16 v9, 0x63

    if-eq v7, v9, :cond_3

    .line 958
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 959
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 960
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 961
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 965
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_3
    if-ltz v7, :cond_5

    .line 967
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 968
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_4

    const-string v8, "\\"

    .line 972
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 973
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 978
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 981
    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x18

    .line 989
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 991
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v2, v5

    .line 995
    :cond_6
    new-array v2, v2, [B

    .line 997
    array-length v5, p1

    invoke-static {p1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 999
    array-length p1, p1

    .line 1001
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1003
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5, v2, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1004
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    add-int/lit8 v7, p1, 0x4

    invoke-static {v5, v2, v7}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 1005
    iget-object v5, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr p1, v5

    .line 1011
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5, v2, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 v5, p1, 0x4

    .line 1014
    invoke-static {v1, v2, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 1016
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    add-int/2addr p1, v1

    const/4 v1, 0x3

    .line 1019
    aput-byte v1, v2, p1

    add-int/lit8 v5, p1, 0x1

    .line 1020
    aput-byte v1, v2, v5

    add-int/lit8 v5, p1, 0x2

    .line 1021
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0x3

    .line 1022
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0x4

    .line 1023
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0x5

    .line 1024
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0x6

    .line 1025
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0x7

    .line 1026
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0x8

    const/16 v7, -0x40

    .line 1027
    aput-byte v7, v2, v5

    add-int/lit8 v5, p1, 0x9

    .line 1028
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0xa

    .line 1029
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0xb

    .line 1030
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0xc

    .line 1031
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0xd

    .line 1032
    aput-byte v4, v2, v5

    add-int/lit8 v5, p1, 0xe

    .line 1033
    aput-byte v4, v2, v5

    add-int/lit8 v4, p1, 0xf

    const/16 v5, 0x46

    .line 1034
    aput-byte v5, v2, v4

    add-int/lit8 p1, p1, 0x10

    .line 1039
    invoke-static {v6, v2, p1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 p1, p1, 0x2

    .line 1044
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4, v2, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 p1, p1, 0x4

    .line 1048
    invoke-static {v0, v2, p1}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 1049
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr p1, v0

    const/4 v0, -0x1

    .line 1052
    aput-byte v0, v2, p1

    add-int/lit8 v3, p1, 0x1

    .line 1053
    aput-byte v0, v2, v3

    add-int/lit8 v0, p1, 0x2

    const/16 v3, -0x53

    .line 1054
    aput-byte v3, v2, v0

    add-int/2addr p1, v1

    const/16 v0, -0x22

    .line 1055
    aput-byte v0, v2, p1

    return-object v2
.end method

.method private getLocationData([B)[B
    .locals 3

    .line 1127
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1128
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1130
    array-length p1, p1

    .line 1133
    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v0, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 1136
    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x4

    invoke-static {v1, v0, p1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v0
.end method

.method private getShortName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x2e

    .line 1085
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 1097
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 1098
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object p1, v3

    .line 1101
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    .line 1103
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v5, 0x6

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "~"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1104
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v3, 0x3

    .line 1107
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1111
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private getUNCData([B)[B
    .locals 4

    .line 888
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 890
    array-length v1, p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 891
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 893
    array-length p1, p1

    .line 896
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 897
    invoke-static {v2, v1, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 p1, p1, 0x4

    .line 900
    invoke-static {v0, v1, p1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method private getURLData([B)[B
    .locals 5

    .line 831
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    array-length v1, p1

    add-int/lit8 v1, v1, 0x14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 835
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 837
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 840
    :cond_0
    new-array v1, v1, [B

    .line 842
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    array-length p1, p1

    .line 846
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 848
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v1, p1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 849
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    add-int/lit8 v4, p1, 0x4

    invoke-static {v2, v1, v4}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 850
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr p1, v2

    :cond_1
    const/16 v2, -0x20

    .line 854
    aput-byte v2, v1, p1

    add-int/lit8 v2, p1, 0x1

    const/16 v4, -0x37

    .line 855
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x2

    const/16 v4, -0x16

    .line 856
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x3

    const/16 v4, 0x79

    .line 857
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x4

    const/4 v4, -0x7

    .line 858
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x5

    const/16 v4, -0x46

    .line 859
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x6

    const/16 v4, -0x32

    .line 860
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x7

    const/16 v4, 0x11

    .line 861
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x8

    const/16 v4, -0x74

    .line 862
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0x9

    const/16 v4, -0x7e

    .line 863
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0xa

    .line 864
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xb

    const/16 v4, -0x56

    .line 865
    aput-byte v4, v1, v2

    add-int/lit8 v2, p1, 0xc

    .line 866
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xd

    const/16 v3, 0x4b

    .line 867
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xe

    const/16 v3, -0x57

    .line 868
    aput-byte v3, v1, v2

    add-int/lit8 v2, p1, 0xf

    const/16 v3, 0xb

    .line 869
    aput-byte v3, v1, v2

    .line 872
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p1, 0x10

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    add-int/lit8 p1, p1, 0x14

    .line 875
    invoke-static {v0, v1, p1}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method private setLocation(Ljxl/write/WritableSheet;IIII)V
    .locals 6

    .line 637
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x27

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 640
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 642
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 650
    :cond_0
    invoke-interface {p1}, Ljxl/write/WritableSheet;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 652
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    :goto_0
    if-eq v4, v3, :cond_1

    .line 654
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 656
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\'\'"

    .line 657
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v4, 0x1

    .line 659
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_0

    .line 661
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 p1, 0x21

    .line 665
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 667
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 668
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 670
    invoke-static {p2, p3, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    const/16 p2, 0x3a

    .line 671
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 672
    invoke-static {p1, p4, v0}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    .line 674
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .line 335
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    return v0
.end method

.method getContents()Ljava/lang/String;
    .locals 1

    .line 1163
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 8

    .line 385
    iget-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-nez v0, :cond_0

    .line 387
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    return-object v0

    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 394
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 395
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 396
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 397
    iget v1, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    const/4 v4, 0x6

    invoke-static {v1, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, -0x30

    const/16 v4, 0x8

    aput-byte v1, v0, v4

    const/16 v1, 0x9

    const/16 v5, -0x37

    aput-byte v5, v0, v1

    const/16 v1, 0xa

    const/16 v5, -0x16

    aput-byte v5, v0, v1

    const/16 v1, 0x79

    const/16 v5, 0xb

    aput-byte v1, v0, v5

    const/16 v1, 0xc

    const/4 v6, -0x7

    aput-byte v6, v0, v1

    const/16 v1, 0xd

    const/16 v6, -0x46

    aput-byte v6, v0, v1

    const/16 v1, 0xe

    const/16 v6, -0x32

    aput-byte v6, v0, v1

    const/16 v1, 0xf

    const/16 v6, 0x11

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    const/16 v7, -0x74

    aput-byte v7, v0, v1

    const/16 v1, -0x7e

    aput-byte v1, v0, v6

    const/16 v1, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v6, -0x56

    aput-byte v6, v0, v1

    const/16 v1, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v6, 0x4b

    aput-byte v6, v0, v1

    const/16 v1, 0x16

    const/16 v6, -0x57

    aput-byte v6, v0, v1

    const/16 v1, 0x17

    aput-byte v5, v0, v1

    const/16 v5, 0x18

    aput-byte v3, v0, v5

    const/16 v3, 0x19

    aput-byte v2, v0, v3

    const/16 v3, 0x1a

    aput-byte v2, v0, v3

    const/16 v3, 0x1b

    aput-byte v2, v0, v3

    .line 424
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v3

    const/4 v5, 0x3

    if-eqz v3, :cond_2

    .line 428
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    .line 433
    :cond_2
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 437
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    .line 442
    :cond_3
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isLocation()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x8

    goto :goto_0

    .line 446
    :cond_4
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v2, 0x103

    const/16 v1, 0x103

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x1c

    .line 451
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 453
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 455
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getURLData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_1

    .line 457
    :cond_6
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 459
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getFileData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_1

    .line 461
    :cond_7
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isLocation()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 463
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getLocationData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    goto :goto_1

    .line 465
    :cond_8
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 467
    invoke-direct {p0, v0}, Ljxl/write/biff/HyperlinkRecord;->getUNCData([B)[B

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    .line 470
    :cond_9
    :goto_1
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->data:[B

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 375
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLastColumn()I
    .locals 1

    .line 355
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    return v0
.end method

.method public getLastRow()I
    .locals 1

    .line 345
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    return v0
.end method

.method public getRange()Ljxl/Range;
    .locals 1

    .line 508
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    return-object v0
.end method

.method public getRow()I
    .locals 1

    .line 325
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    return v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .line 365
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    return-object v0
.end method

.method initialize(Ljxl/write/WritableSheet;)V
    .locals 7

    .line 1149
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    .line 1150
    new-instance v6, Ljxl/biff/SheetRangeImpl;

    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v6, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    return-void
.end method

.method insertColumn(I)V
    .locals 6

    .line 722
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 724
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    if-le p1, v0, :cond_1

    return-void

    .line 729
    :cond_1
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    if-gt p1, v0, :cond_2

    add-int/2addr v0, v1

    .line 731
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 732
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 735
    :cond_2
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    if-gt p1, v0, :cond_3

    add-int/2addr v0, v1

    .line 737
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 738
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 741
    :cond_3
    iget-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz p1, :cond_4

    .line 743
    new-instance p1, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    :cond_4
    return-void
.end method

.method insertRow(I)V
    .locals 6

    .line 686
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 688
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    if-le p1, v0, :cond_1

    return-void

    .line 693
    :cond_1
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    if-gt p1, v0, :cond_2

    add-int/2addr v0, v1

    .line 695
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 696
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 699
    :cond_2
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    if-gt p1, v0, :cond_3

    add-int/2addr v0, v1

    .line 701
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 702
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 705
    :cond_3
    iget-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz p1, :cond_4

    .line 707
    new-instance p1, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    :cond_4
    return-void
.end method

.method public isFile()Z
    .locals 2

    .line 285
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

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

    .line 315
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUNC()Z
    .locals 2

    .line 295
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->uncLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

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

    .line 305
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method removeColumn(I)V
    .locals 8

    .line 795
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 797
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    if-le p1, v0, :cond_1

    return-void

    .line 802
    :cond_1
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    if-ge p1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 804
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    .line 805
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 808
    :cond_2
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    if-ge p1, v0, :cond_3

    sub-int/2addr v0, v2

    .line 810
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    .line 811
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 814
    :cond_3
    iget-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz p1, :cond_5

    .line 816
    iget-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 817
    new-instance p1, Ljxl/biff/SheetRangeImpl;

    iget-object v3, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v7, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    :cond_5
    return-void
.end method

.method removeRow(I)V
    .locals 8

    .line 758
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 760
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    if-le p1, v0, :cond_1

    return-void

    .line 765
    :cond_1
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    if-ge p1, v0, :cond_2

    sub-int/2addr v0, v2

    .line 767
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    .line 768
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 771
    :cond_2
    iget v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    if-ge p1, v0, :cond_3

    sub-int/2addr v0, v2

    .line 773
    iput v0, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    .line 774
    iput-boolean v2, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 777
    :cond_3
    iget-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    if-eqz p1, :cond_5

    .line 779
    iget-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 780
    new-instance p1, Ljxl/biff/SheetRangeImpl;

    iget-object v3, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v5, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    iget v6, p0, Ljxl/write/biff/HyperlinkRecord;->lastColumn:I

    iget v7, p0, Ljxl/write/biff/HyperlinkRecord;->lastRow:I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->range:Ljxl/Range;

    :cond_5
    return-void
.end method

.method protected setContents(Ljava/lang/String;)V
    .locals 0

    .line 1173
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1174
    iput-boolean p1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 4

    .line 564
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->fileLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 v0, 0x0

    .line 565
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 566
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 567
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 568
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 571
    iget-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    if-nez v1, :cond_0

    return-void

    .line 578
    :cond_0
    iget v2, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-interface {v1, v2, v3}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v1

    .line 580
    invoke-interface {v1}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v2

    sget-object v3, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 582
    check-cast v1, Ljxl/write/Label;

    .line 583
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    return-void
.end method

.method protected setLocation(Ljava/lang/String;Ljxl/write/WritableSheet;IIII)V
    .locals 7

    .line 601
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->workbookLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 v0, 0x0

    .line 602
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 603
    iput-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    const/4 v0, 0x1

    .line 604
    iput-boolean v0, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 605
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 607
    invoke-direct/range {v1 .. v6}, Ljxl/write/biff/HyperlinkRecord;->setLocation(Ljxl/write/WritableSheet;IIII)V

    if-nez p2, :cond_0

    return-void

    .line 616
    :cond_0
    iget p3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget p4, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-interface {p2, p3, p4}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object p2

    .line 618
    invoke-interface {p2}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object p3

    sget-object p4, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne p3, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 620
    check-cast p2, Ljxl/write/Label;

    .line 621
    invoke-virtual {p2, p1}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public setURL(Ljava/net/URL;)V
    .locals 5

    .line 518
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    .line 519
    sget-object v1, Ljxl/write/biff/HyperlinkRecord;->urlLink:Ljxl/write/biff/HyperlinkRecord$LinkType;

    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->linkType:Ljxl/write/biff/HyperlinkRecord$LinkType;

    const/4 v1, 0x0

    .line 520
    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    .line 521
    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->location:Ljava/lang/String;

    .line 522
    iput-object v1, p0, Ljxl/write/biff/HyperlinkRecord;->contents:Ljava/lang/String;

    .line 523
    iput-object p1, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    const/4 v1, 0x1

    .line 524
    iput-boolean v1, p0, Ljxl/write/biff/HyperlinkRecord;->modified:Z

    .line 526
    iget-object v2, p0, Ljxl/write/biff/HyperlinkRecord;->sheet:Ljxl/write/WritableSheet;

    if-nez v2, :cond_0

    return-void

    .line 534
    :cond_0
    iget v3, p0, Ljxl/write/biff/HyperlinkRecord;->firstColumn:I

    iget v4, p0, Ljxl/write/biff/HyperlinkRecord;->firstRow:I

    invoke-interface {v2, v3, v4}, Ljxl/write/WritableSheet;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v2

    .line 536
    invoke-interface {v2}, Ljxl/write/WritableCell;->getType()Ljxl/CellType;

    move-result-object v3

    sget-object v4, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v3, v4, :cond_4

    .line 538
    check-cast v2, Ljxl/write/Label;

    .line 539
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    .line 544
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 548
    :goto_1
    invoke-virtual {v2}, Ljxl/write/Label;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljxl/write/Label;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    :cond_3
    sget-object v0, Ljxl/write/biff/HyperlinkRecord;->logger:Lcommon/Logger;

    const-string v1, "equal"

    invoke-virtual {v0, v1}, Lcommon/Logger;->debug(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljxl/write/Label;->setString(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 480
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 484
    :cond_0
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isURL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 488
    :cond_1
    invoke-virtual {p0}, Ljxl/write/biff/HyperlinkRecord;->isUNC()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Ljxl/write/biff/HyperlinkRecord;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method
