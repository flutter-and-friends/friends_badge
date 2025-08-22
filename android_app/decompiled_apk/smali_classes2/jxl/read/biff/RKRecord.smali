.class Ljxl/read/biff/RKRecord;
.super Ljxl/read/biff/CellValue;
.source "RKRecord.java"

# interfaces
.implements Ljxl/NumberCell;


# static fields
.field static synthetic class$jxl$read$biff$RKRecord:Ljava/lang/Class;

.field private static defaultFormat:Ljava/text/DecimalFormat;

.field private static logger:Lcommon/Logger;


# instance fields
.field private format:Ljava/text/NumberFormat;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget-object v0, Ljxl/read/biff/RKRecord;->class$jxl$read$biff$RKRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.RKRecord"

    invoke-static {v0}, Ljxl/read/biff/RKRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/RKRecord;->class$jxl$read$biff$RKRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/RKRecord;->logger:Lcommon/Logger;

    .line 55
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/RKRecord;->defaultFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 3

    .line 66
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 67
    invoke-virtual {p0}, Ljxl/read/biff/RKRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p3, 0x6

    .line 68
    aget-byte p3, p1, p3

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    const/16 v2, 0x9

    aget-byte p1, p1, v2

    invoke-static {p3, v0, v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    .line 69
    invoke-static {p1}, Ljxl/read/biff/RKHelper;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/read/biff/RKRecord;->value:D

    .line 72
    invoke-virtual {p0}, Ljxl/read/biff/RKRecord;->getXFIndex()I

    move-result p1

    invoke-virtual {p2, p1}, Ljxl/biff/FormattingRecords;->getNumberFormat(I)Ljava/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    .line 73
    iget-object p1, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    if-nez p1, :cond_0

    .line 75
    sget-object p1, Ljxl/read/biff/RKRecord;->defaultFormat:Ljava/text/DecimalFormat;

    iput-object p1, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    :cond_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 40
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
    .locals 3

    .line 96
    iget-object v0, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    iget-wide v1, p0, Ljxl/read/biff/RKRecord;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 117
    iget-object v0, p0, Ljxl/read/biff/RKRecord;->format:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 106
    sget-object v0, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 86
    iget-wide v0, p0, Ljxl/read/biff/RKRecord;->value:D

    return-wide v0
.end method
