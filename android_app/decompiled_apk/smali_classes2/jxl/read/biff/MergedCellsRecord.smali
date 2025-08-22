.class public Ljxl/read/biff/MergedCellsRecord;
.super Ljxl/biff/RecordData;
.source "MergedCellsRecord.java"


# instance fields
.field private ranges:[Ljxl/Range;


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;Ljxl/Sheet;)V
    .locals 11

    .line 46
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 48
    invoke-virtual {p0}, Ljxl/read/biff/MergedCellsRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    .line 52
    new-array v2, v1, [Ljxl/Range;

    iput-object v2, p0, Ljxl/read/biff/MergedCellsRecord;->ranges:[Ljxl/Range;

    const/4 v2, 0x2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 62
    aget-byte v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v8

    add-int/lit8 v3, v2, 0x2

    .line 63
    aget-byte v3, p1, v3

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v10

    add-int/lit8 v3, v2, 0x4

    .line 64
    aget-byte v3, p1, v3

    add-int/lit8 v4, v2, 0x5

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v7

    add-int/lit8 v3, v2, 0x6

    .line 65
    aget-byte v3, p1, v3

    add-int/lit8 v4, v2, 0x7

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v9

    .line 67
    iget-object v3, p0, Ljxl/read/biff/MergedCellsRecord;->ranges:[Ljxl/Range;

    new-instance v4, Ljxl/biff/SheetRangeImpl;

    move-object v5, v4

    move-object v6, p2

    invoke-direct/range {v5 .. v10}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    aput-object v4, v3, v0

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getRanges()[Ljxl/Range;
    .locals 1

    .line 81
    iget-object v0, p0, Ljxl/read/biff/MergedCellsRecord;->ranges:[Ljxl/Range;

    return-object v0
.end method
