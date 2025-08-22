.class public abstract Ljxl/write/biff/DateRecord;
.super Ljxl/write/biff/CellValue;
.source "DateRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/DateRecord$GMTDate;
    }
.end annotation


# static fields
.field static synthetic class$jxl$write$biff$DateRecord:Ljava/lang/Class; = null

.field static final defaultDateFormat:Ljxl/write/WritableCellFormat;

.field private static logger:Lcommon/Logger; = null

.field private static final msInADay:J = 0x5265c00L

.field private static final nonLeapDay:I = 0x3d

.field private static final utcOffsetDays:I = 0x63e1


# instance fields
.field private date:Ljava/util/Date;

.field private time:Z

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Ljxl/write/biff/DateRecord;->class$jxl$write$biff$DateRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.DateRecord"

    invoke-static {v0}, Ljxl/write/biff/DateRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/DateRecord;->class$jxl$write$biff$DateRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/DateRecord;->logger:Lcommon/Logger;

    .line 75
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Ljxl/write/DateFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/biff/DisplayFormat;)V

    sput-object v0, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;)V
    .locals 6

    .line 103
    sget-object v4, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V

    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;)V
    .locals 1

    .line 129
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 130
    iput-object p3, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    const/4 p1, 0x1

    .line 131
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0

    .line 145
    sget-object p5, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, p5, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 146
    iput-object p3, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V
    .locals 1

    .line 161
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 162
    iput-object p3, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 163
    iput-boolean p5, p0, Ljxl/write/biff/DateRecord;->time:Z

    const/4 p1, 0x0

    .line 164
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    return-void
.end method

.method protected constructor <init>(IILjava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 6

    .line 116
    sget-object v4, Ljxl/write/biff/DateRecord;->defaultDateFormat:Ljxl/write/WritableCellFormat;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Ljxl/write/biff/DateRecord;-><init>(IILjava/util/Date;Ljxl/format/CellFormat;Z)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/DateRecord;)V
    .locals 1

    .line 189
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    .line 190
    iget-wide p1, p3, Ljxl/write/biff/DateRecord;->value:D

    iput-wide p1, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 191
    iget-boolean p1, p3, Ljxl/write/biff/DateRecord;->time:Z

    iput-boolean p1, p0, Ljxl/write/biff/DateRecord;->time:Z

    .line 192
    iget-object p1, p3, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    iput-object p1, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    return-void
.end method

.method protected constructor <init>(Ljxl/DateCell;)V
    .locals 1

    .line 174
    sget-object v0, Ljxl/biff/Type;->NUMBER:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 175
    invoke-interface {p1}, Ljxl/DateCell;->getDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    .line 176
    invoke-interface {p1}, Ljxl/DateCell;->isTime()Z

    move-result p1

    iput-boolean p1, p0, Ljxl/write/biff/DateRecord;->time:Z

    const/4 p1, 0x0

    .line 177
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    return-void
.end method

.method private calculateValue(Z)V
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 213
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 214
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v0, 0xf

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x10

    .line 217
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v2, p1

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 220
    :goto_0
    iget-object p1, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    long-to-double v0, v4

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    const-wide v2, 0x40d8f84000000000L    # 25569.0

    add-double/2addr v0, v2

    .line 227
    iput-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 233
    iget-boolean p1, p0, Ljxl/write/biff/DateRecord;->time:Z

    if-nez p1, :cond_1

    iget-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    const-wide v2, 0x404e800000000000L    # 61.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    .line 235
    iput-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    .line 239
    :cond_1
    iget-boolean p1, p0, Ljxl/write/biff/DateRecord;->time:Z

    if-eqz p1, :cond_2

    .line 241
    iget-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    double-to-int p1, v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    iput-wide v0, p0, Ljxl/write/biff/DateRecord;->value:D

    :cond_2
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
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()[B
    .locals 4

    .line 262
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 263
    array-length v1, v0

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    .line 264
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    iget-wide v2, p0, Ljxl/write/biff/DateRecord;->value:D

    array-length v0, v0

    invoke-static {v2, v3, v1, v0}, Ljxl/biff/DoubleHelper;->getIEEEBytes(D[BI)V

    return-object v1
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 313
    iget-object v0, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 252
    sget-object v0, Ljxl/CellType;->DATE:Ljxl/CellType;

    return-object v0
.end method

.method public isTime()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Ljxl/write/biff/DateRecord;->time:Z

    return v0
.end method

.method protected setDate(Ljava/util/Date;)V
    .locals 0

    .line 289
    iput-object p1, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    const/4 p1, 0x1

    .line 290
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    return-void
.end method

.method protected setDate(Ljava/util/Date;Ljxl/write/biff/DateRecord$GMTDate;)V
    .locals 0

    .line 301
    iput-object p1, p0, Ljxl/write/biff/DateRecord;->date:Ljava/util/Date;

    const/4 p1, 0x0

    .line 302
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;->calculateValue(Z)V

    return-void
.end method
