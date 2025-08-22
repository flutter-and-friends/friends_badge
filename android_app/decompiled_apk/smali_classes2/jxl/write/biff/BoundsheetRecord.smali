.class Ljxl/write/biff/BoundsheetRecord;
.super Ljxl/biff/WritableRecordData;
.source "BoundsheetRecord.java"


# instance fields
.field private chartOnly:Z

.field private data:[B

.field private hidden:Z

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 59
    sget-object v0, Ljxl/biff/Type;->BOUNDSHEET:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 60
    iput-object p1, p0, Ljxl/write/biff/BoundsheetRecord;->name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Ljxl/write/biff/BoundsheetRecord;->hidden:Z

    .line 62
    iput-boolean p1, p0, Ljxl/write/biff/BoundsheetRecord;->chartOnly:Z

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 6

    .line 88
    iget-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/16 v2, 0x8

    add-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->data:[B

    .line 90
    iget-boolean v0, p0, Ljxl/write/biff/BoundsheetRecord;->chartOnly:Z

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->data:[B

    aput-byte v1, v0, v4

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->data:[B

    aput-byte v3, v0, v4

    .line 99
    :goto_0
    iget-boolean v0, p0, Ljxl/write/biff/BoundsheetRecord;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->data:[B

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    .line 102
    aput-byte v3, v0, v4

    .line 105
    :cond_1
    iget-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->data:[B

    const/4 v3, 0x6

    iget-object v4, p0, Ljxl/write/biff/BoundsheetRecord;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 106
    iget-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->data:[B

    const/4 v3, 0x7

    aput-byte v1, v0, v3

    .line 107
    iget-object v1, p0, Ljxl/write/biff/BoundsheetRecord;->name:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 109
    iget-object v0, p0, Ljxl/write/biff/BoundsheetRecord;->data:[B

    return-object v0
.end method

.method setChartOnly()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Ljxl/write/biff/BoundsheetRecord;->chartOnly:Z

    return-void
.end method

.method setHidden()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Ljxl/write/biff/BoundsheetRecord;->hidden:Z

    return-void
.end method
