.class Ljxl/biff/ConditionalFormatRangeRecord$Range;
.super Ljava/lang/Object;
.source "ConditionalFormatRangeRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/ConditionalFormatRangeRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Range"
.end annotation


# instance fields
.field public firstColumn:I

.field public firstRow:I

.field public lastColumn:I

.field public lastRow:I

.field public modified:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    return-void
.end method


# virtual methods
.method public insertColumn(I)V
    .locals 2

    .line 86
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    if-le p1, v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_1

    add-int/2addr v0, v1

    .line 93
    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    .line 94
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    .line 97
    :cond_1
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    if-gt p1, v0, :cond_2

    add-int/2addr v0, v1

    .line 99
    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    .line 100
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    :cond_2
    return-void
.end method

.method public insertRow(I)V
    .locals 2

    .line 164
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    if-le p1, v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_1

    add-int/2addr v0, v1

    .line 171
    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    .line 172
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    .line 175
    :cond_1
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    if-gt p1, v0, :cond_2

    .line 177
    iget p1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    add-int/2addr p1, v1

    iput p1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    .line 178
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    :cond_2
    return-void
.end method

.method public removeColumn(I)V
    .locals 2

    .line 112
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    if-le p1, v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, v1

    .line 119
    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstColumn:I

    .line 120
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    .line 123
    :cond_1
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    if-gt p1, v0, :cond_2

    sub-int/2addr v0, v1

    .line 125
    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastColumn:I

    .line 126
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    :cond_2
    return-void
.end method

.method public removeRow(I)V
    .locals 2

    .line 138
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    if-le p1, v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    sub-int/2addr v0, v1

    .line 145
    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->firstRow:I

    .line 146
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    .line 149
    :cond_1
    iget v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    if-gt p1, v0, :cond_2

    sub-int/2addr v0, v1

    .line 151
    iput v0, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->lastRow:I

    .line 152
    iput-boolean v1, p0, Ljxl/biff/ConditionalFormatRangeRecord$Range;->modified:Z

    :cond_2
    return-void
.end method
