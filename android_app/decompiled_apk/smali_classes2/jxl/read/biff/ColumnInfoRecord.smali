.class public Ljxl/read/biff/ColumnInfoRecord;
.super Ljxl/biff/RecordData;
.source "ColumnInfoRecord.java"


# instance fields
.field private data:[B

.field private endColumn:I

.field private hidden:Z

.field private startColumn:I

.field private width:I

.field private xfIndex:I


# direct methods
.method constructor <init>(Ljxl/read/biff/Record;)V
    .locals 4

    .line 68
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 70
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    .line 72
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->startColumn:I

    .line 73
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v3, 0x3

    aget-byte p1, p1, v3

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->endColumn:I

    .line 74
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v1, 0x4

    aget-byte v1, p1, v1

    const/4 v3, 0x5

    aget-byte p1, p1, v3

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->width:I

    .line 75
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    const/4 v3, 0x7

    aget-byte p1, p1, v3

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/ColumnInfoRecord;->xfIndex:I

    .line 77
    iget-object p1, p0, Ljxl/read/biff/ColumnInfoRecord;->data:[B

    const/16 v1, 0x8

    aget-byte v1, p1, v1

    const/16 v3, 0x9

    aget-byte p1, p1, v3

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 78
    :cond_0
    iput-boolean v0, p0, Ljxl/read/biff/ColumnInfoRecord;->hidden:Z

    return-void
.end method


# virtual methods
.method public getEndColumn()I
    .locals 1

    .line 98
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->endColumn:I

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Ljxl/read/biff/ColumnInfoRecord;->hidden:Z

    return v0
.end method

.method public getStartColumn()I
    .locals 1

    .line 88
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->startColumn:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 118
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->width:I

    return v0
.end method

.method public getXFIndex()I
    .locals 1

    .line 108
    iget v0, p0, Ljxl/read/biff/ColumnInfoRecord;->xfIndex:I

    return v0
.end method
