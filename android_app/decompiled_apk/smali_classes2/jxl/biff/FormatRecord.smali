.class public Ljxl/biff/FormatRecord;
.super Ljxl/biff/WritableRecordData;
.source "FormatRecord.java"

# interfaces
.implements Ljxl/biff/DisplayFormat;
.implements Ljxl/format/Format;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/FormatRecord$BiffType;
    }
.end annotation


# static fields
.field public static final biff7:Ljxl/biff/FormatRecord$BiffType;

.field public static final biff8:Ljxl/biff/FormatRecord$BiffType;

.field static synthetic class$jxl$biff$FormatRecord:Ljava/lang/Class;

.field private static dateStrings:[Ljava/lang/String;

.field public static logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private date:Z

.field private format:Ljava/text/Format;

.field private formatString:Ljava/lang/String;

.field private indexCode:I

.field private initialized:Z

.field private number:Z

.field private settings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 42
    sget-object v0, Ljxl/biff/FormatRecord;->class$jxl$biff$FormatRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.FormatRecord"

    invoke-static {v0}, Ljxl/biff/FormatRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormatRecord;->class$jxl$biff$FormatRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormatRecord;->logger:Lcommon/Logger;

    const-string v1, "dd"

    const-string v2, "mm"

    const-string v3, "yy"

    const-string v4, "hh"

    const-string v5, "ss"

    const-string v6, "m/"

    const-string v7, "/d"

    .line 87
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljxl/biff/FormatRecord;->dateStrings:[Ljava/lang/String;

    .line 103
    new-instance v0, Ljxl/biff/FormatRecord$BiffType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/biff/FormatRecord$BiffType;-><init>(Ljxl/biff/FormatRecord$1;)V

    sput-object v0, Ljxl/biff/FormatRecord;->biff8:Ljxl/biff/FormatRecord$BiffType;

    .line 104
    new-instance v0, Ljxl/biff/FormatRecord$BiffType;

    invoke-direct {v0, v1}, Ljxl/biff/FormatRecord$BiffType;-><init>(Ljxl/biff/FormatRecord$1;)V

    sput-object v0, Ljxl/biff/FormatRecord;->biff7:Ljxl/biff/FormatRecord$BiffType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 125
    sget-object v0, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 114
    sget-object v0, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 115
    iput-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 116
    iput p2, p0, Ljxl/biff/FormatRecord;->indexCode:I

    const/4 p1, 0x1

    .line 117
    iput-boolean p1, p0, Ljxl/biff/FormatRecord;->initialized:Z

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/FormatRecord;)V
    .locals 1

    .line 136
    sget-object v0, Ljxl/biff/Type;->FORMAT:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    .line 139
    iget-object v0, p1, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 140
    iget-boolean v0, p1, Ljxl/biff/FormatRecord;->date:Z

    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->date:Z

    .line 141
    iget-boolean p1, p1, Ljxl/biff/FormatRecord;->number:Z

    iput-boolean p1, p0, Ljxl/biff/FormatRecord;->number:Z

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/biff/FormatRecord$BiffType;)V
    .locals 5

    .line 155
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 157
    invoke-virtual {p0}, Ljxl/biff/FormatRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 158
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/biff/FormatRecord;->indexCode:I

    .line 159
    iput-boolean v2, p0, Ljxl/biff/FormatRecord;->initialized:Z

    .line 161
    sget-object v1, Ljxl/biff/FormatRecord;->biff8:Ljxl/biff/FormatRecord$BiffType;

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p3, v1, :cond_1

    .line 163
    aget-byte p3, p1, v4

    aget-byte v1, p1, v3

    invoke-static {p3, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p3

    const/4 v1, 0x4

    .line 164
    aget-byte v1, p1, v1

    const/4 v3, 0x5

    if-nez v1, :cond_0

    .line 166
    invoke-static {p1, p3, v3, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p1, p3, v3}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_1
    aget-byte p2, p1, v4

    .line 176
    new-array p2, p2, [B

    .line 177
    array-length p3, p2

    invoke-static {p1, v3, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 181
    :goto_0
    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->date:Z

    .line 182
    iput-boolean v0, p0, Ljxl/biff/FormatRecord;->number:Z

    .line 185
    :goto_1
    sget-object p1, Ljxl/biff/FormatRecord;->dateStrings:[Ljava/lang/String;

    array-length p2, p1

    const/4 p3, -0x1

    if-ge v0, p2, :cond_4

    .line 187
    aget-object p1, p1, v0

    .line 188
    iget-object p2, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, p3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_3
    :goto_2
    iput-boolean v2, p0, Ljxl/biff/FormatRecord;->date:Z

    .line 197
    :cond_4
    iget-boolean p1, p0, Ljxl/biff/FormatRecord;->date:Z

    if-nez p1, :cond_6

    .line 199
    iget-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    const/16 p2, 0x23

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ne p1, p3, :cond_5

    iget-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-eq p1, p3, :cond_6

    .line 202
    :cond_5
    iput-boolean v2, p0, Ljxl/biff/FormatRecord;->number:Z

    :cond_6
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 42
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
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 619
    :cond_0
    instance-of v0, p1, Ljxl/biff/FormatRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 624
    :cond_1
    check-cast p1, Ljxl/biff/FormatRecord;

    .line 627
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Ljxl/biff/FormatRecord;->initialized:Z

    if-eqz v0, :cond_4

    .line 630
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->date:Z

    iget-boolean v2, p1, Ljxl/biff/FormatRecord;->date:Z

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->number:Z

    iget-boolean v2, p1, Ljxl/biff/FormatRecord;->number:Z

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 636
    :cond_2
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    iget-object p1, p1, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1

    .line 640
    :cond_4
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    iget-object p1, p1, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getData()[B
    .locals 4

    .line 214
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/FormatRecord;->data:[B

    .line 216
    iget v0, p0, Ljxl/biff/FormatRecord;->indexCode:I

    iget-object v2, p0, Ljxl/biff/FormatRecord;->data:[B

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 217
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v2, p0, Ljxl/biff/FormatRecord;->data:[B

    invoke-static {v0, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 218
    iget-object v0, p0, Ljxl/biff/FormatRecord;->data:[B

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 219
    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 221
    iget-object v0, p0, Ljxl/biff/FormatRecord;->data:[B

    return-object v0
.end method

.method public final getDateFormat()Ljava/text/DateFormat;
    .locals 10

    .line 355
    iget-object v0, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/text/DateFormat;

    if-eqz v1, :cond_0

    .line 357
    check-cast v0, Ljava/text/DateFormat;

    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    const-string v1, "AM/PM"

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 366
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x61

    .line 367
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x5

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    const-string v1, "ss.0"

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-eq v2, v4, :cond_3

    .line 378
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "ss.SSS"

    .line 379
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x4

    .line 383
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 388
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 395
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 396
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 398
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_4

    .line 400
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 404
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_6

    const/16 v1, 0x5d

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, ";@"

    const-string v2, ""

    .line 418
    invoke-virtual {p0, v0, v1, v2}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 424
    :goto_4
    array-length v1, v0

    if-ge v3, v1, :cond_20

    .line 426
    aget-char v1, v0, v3

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1f

    if-lez v3, :cond_8

    add-int/lit8 v1, v3, -0x1

    .line 430
    aget-char v4, v0, v1

    if-eq v4, v2, :cond_7

    aget-char v2, v0, v1

    const/16 v4, 0x4d

    if-ne v2, v4, :cond_8

    .line 432
    :cond_7
    aget-char v1, v0, v1

    aput-char v1, v0, v3

    goto/16 :goto_17

    :cond_8
    add-int/lit8 v1, v3, -0x1

    move v2, v1

    :goto_5
    const/16 v4, 0x68

    const v5, 0x7fffffff

    if-lez v2, :cond_a

    .line 443
    aget-char v6, v0, v2

    if-ne v6, v4, :cond_9

    sub-int v2, v3, v2

    goto :goto_6

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_a
    const v2, 0x7fffffff

    :goto_6
    add-int/lit8 v6, v3, 0x1

    move v7, v6

    .line 450
    :goto_7
    array-length v8, v0

    if-ge v7, v8, :cond_c

    .line 452
    aget-char v8, v0, v7

    if-ne v8, v4, :cond_b

    sub-int/2addr v7, v3

    .line 454
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_8

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    move v4, v1

    :goto_9
    const/16 v7, 0x48

    if-lez v4, :cond_e

    .line 461
    aget-char v8, v0, v4

    if-ne v8, v7, :cond_d

    sub-int v2, v3, v4

    goto :goto_a

    :cond_d
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    :cond_e
    :goto_a
    move v4, v6

    .line 468
    :goto_b
    array-length v8, v0

    if-ge v4, v8, :cond_10

    .line 470
    aget-char v8, v0, v4

    if-ne v8, v7, :cond_f

    sub-int/2addr v4, v3

    .line 472
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_c

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_10
    :goto_c
    move v4, v1

    :goto_d
    const/16 v7, 0x73

    if-lez v4, :cond_12

    .line 480
    aget-char v8, v0, v4

    if-ne v8, v7, :cond_11

    sub-int v4, v3, v4

    .line 482
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_e

    :cond_11
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    :cond_12
    :goto_e
    move v4, v6

    .line 486
    :goto_f
    array-length v8, v0

    if-ge v4, v8, :cond_14

    .line 488
    aget-char v8, v0, v4

    if-ne v8, v7, :cond_13

    sub-int/2addr v4, v3

    .line 490
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_10

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_14
    :goto_10
    move v4, v1

    :goto_11
    const/16 v7, 0x64

    if-lez v4, :cond_16

    .line 500
    aget-char v8, v0, v4

    if-ne v8, v7, :cond_15

    sub-int v4, v3, v4

    goto :goto_12

    :cond_15
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    :cond_16
    const v4, 0x7fffffff

    :goto_12
    move v8, v6

    .line 507
    :goto_13
    array-length v9, v0

    if-ge v8, v9, :cond_18

    .line 509
    aget-char v9, v0, v8

    if-ne v9, v7, :cond_17

    sub-int/2addr v8, v3

    .line 511
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_14

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_18
    :goto_14
    const/16 v8, 0x79

    if-lez v1, :cond_1a

    .line 518
    aget-char v9, v0, v1

    if-ne v9, v8, :cond_19

    sub-int v1, v3, v1

    .line 520
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_15

    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 524
    :cond_1a
    :goto_15
    array-length v1, v0

    if-ge v6, v1, :cond_1c

    .line 526
    aget-char v1, v0, v6

    if-ne v1, v8, :cond_1b

    sub-int/2addr v6, v3

    .line 528
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_16

    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1c
    :goto_16
    if-ge v4, v2, :cond_1d

    .line 536
    aget-char v1, v0, v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v3

    goto :goto_17

    :cond_1d
    if-ne v4, v2, :cond_1f

    if-eq v4, v5, :cond_1f

    sub-int v1, v3, v4

    .line 543
    aget-char v1, v0, v1

    if-eq v1, v8, :cond_1e

    if-ne v1, v7, :cond_1f

    .line 547
    :cond_1e
    aget-char v1, v0, v3

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v3

    :cond_1f
    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 556
    :cond_20
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_18

    .line 561
    :catch_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MM yyyy hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    .line 563
    :goto_18
    iget-object v0, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method

.method public getFormatIndex()I
    .locals 1

    .line 231
    iget v0, p0, Ljxl/biff/FormatRecord;->indexCode:I

    return v0
.end method

.method public getFormatString()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexCode()I
    .locals 1

    .line 573
    iget v0, p0, Ljxl/biff/FormatRecord;->indexCode:I

    return v0
.end method

.method public final getNumberFormat()Ljava/text/NumberFormat;
    .locals 5

    const-string v0, ""

    .line 319
    iget-object v1, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/text/NumberFormat;

    if-eqz v2, :cond_0

    .line 321
    check-cast v1, Ljava/text/NumberFormat;

    return-object v1

    .line 326
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    .line 327
    sget-object v2, Ljxl/biff/FormatRecord;->logger:Lcommon/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "format string is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcommon/Logger;->debug(Ljava/lang/Object;)V

    const-string v2, "E+"

    const-string v3, "E"

    .line 330
    invoke-virtual {p0, v1, v2, v3}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_)"

    .line 331
    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_"

    .line 332
    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[Red]"

    .line 333
    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\"

    .line 334
    invoke-virtual {p0, v1, v2, v0}, Ljxl/biff/FormatRecord;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    .line 345
    :goto_0
    iget-object v0, p0, Ljxl/biff/FormatRecord;->format:Ljava/text/Format;

    check-cast v0, Ljava/text/NumberFormat;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 602
    iget-object v0, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public initialize(I)V
    .locals 0

    .line 253
    iput p1, p0, Ljxl/biff/FormatRecord;->indexCode:I

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Ljxl/biff/FormatRecord;->initialized:Z

    return-void
.end method

.method public isBuiltIn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isDate()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->date:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->initialized:Z

    return v0
.end method

.method public final isNumber()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Ljxl/biff/FormatRecord;->number:Z

    return v0
.end method

.method protected final replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected final setFormatString(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Ljxl/biff/FormatRecord;->formatString:Ljava/lang/String;

    return-void
.end method
