.class public Ljxl/write/biff/MergedCellsRecord;
.super Ljxl/biff/WritableRecordData;
.source "MergedCellsRecord.java"


# instance fields
.field private ranges:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .line 48
    sget-object v0, Ljxl/biff/Type;->MERGEDCELLS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 50
    iput-object p1, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 7

    .line 60
    iget-object v0, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 63
    iget-object v2, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 67
    :goto_0
    iget-object v2, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 69
    iget-object v2, p0, Ljxl/write/biff/MergedCellsRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/Range;

    .line 72
    invoke-interface {v2}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v4

    .line 73
    invoke-interface {v2}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v2

    .line 75
    invoke-interface {v4}, Ljxl/Cell;->getRow()I

    move-result v5

    invoke-static {v5, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 76
    invoke-interface {v2}, Ljxl/Cell;->getRow()I

    move-result v5

    add-int/lit8 v6, v1, 0x2

    invoke-static {v5, v0, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 77
    invoke-interface {v4}, Ljxl/Cell;->getColumn()I

    move-result v4

    add-int/lit8 v5, v1, 0x4

    invoke-static {v4, v0, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 78
    invoke-interface {v2}, Ljxl/Cell;->getColumn()I

    move-result v2

    add-int/lit8 v4, v1, 0x6

    invoke-static {v2, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
