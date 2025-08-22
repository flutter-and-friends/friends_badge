.class Ljxl/write/biff/ColumnInfoRecord;
.super Ljxl/biff/WritableRecordData;
.source "ColumnInfoRecord.java"


# instance fields
.field private column:I

.field private data:[B

.field private hidden:Z

.field private style:Ljxl/biff/XFRecord;

.field private width:I

.field private xfIndex:I


# direct methods
.method public constructor <init>(IILjxl/biff/XFRecord;)V
    .locals 1

    .line 72
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 74
    iput p1, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    .line 75
    iput p2, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    .line 76
    iput-object p3, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    .line 77
    iget-object p1, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    invoke-virtual {p1}, Ljxl/biff/XFRecord;->getXFIndex()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/ColumnInfoRecord;I)V
    .locals 1

    .line 128
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 130
    iput p2, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    .line 131
    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result p2

    iput p2, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    .line 132
    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getXFIndex()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/ColumnInfoRecord;ILjxl/biff/FormattingRecords;)V
    .locals 1

    .line 110
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 112
    iput p2, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    .line 113
    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getWidth()I

    move-result p2

    iput p2, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    .line 114
    invoke-virtual {p1}, Ljxl/read/biff/ColumnInfoRecord;->getXFIndex()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    .line 115
    iget p1, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    invoke-virtual {p3, p1}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/ColumnInfoRecord;)V
    .locals 1

    .line 89
    sget-object v0, Ljxl/biff/Type;->COLINFO:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 91
    iget v0, p1, Ljxl/write/biff/ColumnInfoRecord;->column:I

    iput v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    .line 92
    iget v0, p1, Ljxl/write/biff/ColumnInfoRecord;->width:I

    iput v0, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    .line 93
    iget-object v0, p1, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    iput-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    .line 94
    iget v0, p1, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    iput v0, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    .line 95
    iget-boolean p1, p1, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    iput-boolean p1, p0, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    return-void
.end method


# virtual methods
.method public decrementColumn()V
    .locals 1

    .line 160
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 280
    :cond_0
    instance-of v0, p1, Ljxl/write/biff/ColumnInfoRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 285
    :cond_1
    check-cast p1, Ljxl/write/biff/ColumnInfoRecord;

    .line 287
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    iget v2, p1, Ljxl/write/biff/ColumnInfoRecord;->column:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    iget v2, p1, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    if-ne v0, v2, :cond_6

    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    iget v2, p1, Ljxl/write/biff/ColumnInfoRecord;->width:I

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    iget-boolean v2, p1, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    if-nez v0, :cond_3

    iget-object v0, p1, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    if-eqz v0, :cond_5

    iget-object v0, p1, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    if-nez v0, :cond_5

    :cond_4
    return v1

    .line 301
    :cond_5
    iget-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    iget-object p1, p1, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    invoke-virtual {v0, p1}, Ljxl/biff/XFRecord;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    return v1
.end method

.method public getCellFormat()Ljxl/biff/XFRecord;
    .locals 1

    .line 216
    iget-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 142
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    return v0
.end method

.method public getData()[B
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 190
    iput-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->data:[B

    .line 192
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    iget-object v1, p0, Ljxl/write/biff/ColumnInfoRecord;->data:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 193
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    iget-object v1, p0, Ljxl/write/biff/ColumnInfoRecord;->data:[B

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 194
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    iget-object v1, p0, Ljxl/write/biff/ColumnInfoRecord;->data:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 195
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    iget-object v1, p0, Ljxl/write/biff/ColumnInfoRecord;->data:[B

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 199
    iget-boolean v0, p0, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    .line 203
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->data:[B

    const/16 v1, 0x8

    invoke-static {v2, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 206
    iget-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->data:[B

    return-object v0
.end method

.method getHidden()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 170
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    return v0
.end method

.method public getXfIndex()I
    .locals 1

    .line 236
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 314
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    const/16 v1, 0x2a47

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    .line 315
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    .line 316
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4f

    .line 317
    iget-boolean v0, p0, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    add-int/2addr v1, v0

    .line 319
    iget-object v0, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Ljxl/biff/XFRecord;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public incrementColumn()V
    .locals 1

    .line 151
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljxl/write/biff/ColumnInfoRecord;->column:I

    return-void
.end method

.method rationalize(Ljxl/biff/IndexMapping;)V
    .locals 1

    .line 245
    iget v0, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    invoke-virtual {p1, v0}, Ljxl/biff/IndexMapping;->getNewIndex(I)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/ColumnInfoRecord;->xfIndex:I

    return-void
.end method

.method public setCellFormat(Ljxl/biff/XFRecord;)V
    .locals 0

    .line 226
    iput-object p1, p0, Ljxl/write/biff/ColumnInfoRecord;->style:Ljxl/biff/XFRecord;

    return-void
.end method

.method setHidden(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Ljxl/write/biff/ColumnInfoRecord;->hidden:Z

    return-void
.end method

.method setWidth(I)V
    .locals 0

    .line 180
    iput p1, p0, Ljxl/write/biff/ColumnInfoRecord;->width:I

    return-void
.end method
