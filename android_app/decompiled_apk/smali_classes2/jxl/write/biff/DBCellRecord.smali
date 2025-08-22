.class Ljxl/write/biff/DBCellRecord;
.super Ljxl/biff/WritableRecordData;
.source "DBCellRecord.java"


# instance fields
.field private cellOffset:I

.field private cellRowPositions:Ljava/util/ArrayList;

.field private position:I

.field private rowPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 63
    sget-object v0, Ljxl/biff/Type;->DBCELL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 64
    iput p1, p0, Ljxl/write/biff/DBCellRecord;->rowPos:I

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addCellRowPosition(I)V
    .locals 2

    .line 85
    iget-object v0, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getData()[B
    .locals 5

    .line 105
    iget-object v0, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 108
    iget v2, p0, Ljxl/write/biff/DBCellRecord;->position:I

    iget v3, p0, Ljxl/write/biff/DBCellRecord;->rowPos:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 112
    iget v2, p0, Ljxl/write/biff/DBCellRecord;->cellOffset:I

    .line 113
    iget-object v3, p0, Ljxl/write/biff/DBCellRecord;->cellRowPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 114
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v2, v4, v2

    .line 117
    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v1, v1, 0x2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method setCellOffset(I)V
    .locals 0

    .line 75
    iput p1, p0, Ljxl/write/biff/DBCellRecord;->cellOffset:I

    return-void
.end method

.method setPosition(I)V
    .locals 0

    .line 95
    iput p1, p0, Ljxl/write/biff/DBCellRecord;->position:I

    return-void
.end method
