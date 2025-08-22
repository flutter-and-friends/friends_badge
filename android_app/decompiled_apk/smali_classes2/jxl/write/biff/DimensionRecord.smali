.class Ljxl/write/biff/DimensionRecord;
.super Ljxl/biff/WritableRecordData;
.source "DimensionRecord.java"


# instance fields
.field private data:[B

.field private numCols:I

.field private numRows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 53
    sget-object v0, Ljxl/biff/Type;->DIMENSION:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 54
    iput p1, p0, Ljxl/write/biff/DimensionRecord;->numRows:I

    .line 55
    iput p2, p0, Ljxl/write/biff/DimensionRecord;->numCols:I

    const/16 p1, 0xe

    new-array p1, p1, [B

    .line 57
    iput-object p1, p0, Ljxl/write/biff/DimensionRecord;->data:[B

    .line 59
    iget p1, p0, Ljxl/write/biff/DimensionRecord;->numRows:I

    iget-object p2, p0, Ljxl/write/biff/DimensionRecord;->data:[B

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 60
    iget p1, p0, Ljxl/write/biff/DimensionRecord;->numCols:I

    iget-object p2, p0, Ljxl/write/biff/DimensionRecord;->data:[B

    const/16 v0, 0xa

    invoke-static {p1, p2, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-void
.end method


# virtual methods
.method protected getData()[B
    .locals 1

    .line 70
    iget-object v0, p0, Ljxl/write/biff/DimensionRecord;->data:[B

    return-object v0
.end method
