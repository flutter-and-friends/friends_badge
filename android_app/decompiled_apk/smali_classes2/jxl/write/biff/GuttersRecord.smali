.class Ljxl/write/biff/GuttersRecord;
.super Ljxl/biff/WritableRecordData;
.source "GuttersRecord.java"


# instance fields
.field private colGutter:I

.field private data:[B

.field private maxColOutline:I

.field private maxRowOutline:I

.field private rowGutter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    sget-object v0, Ljxl/biff/Type;->GUTS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 68
    iput-object v0, p0, Ljxl/write/biff/GuttersRecord;->data:[B

    .line 69
    iget v0, p0, Ljxl/write/biff/GuttersRecord;->rowGutter:I

    iget-object v1, p0, Ljxl/write/biff/GuttersRecord;->data:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 70
    iget v0, p0, Ljxl/write/biff/GuttersRecord;->colGutter:I

    iget-object v1, p0, Ljxl/write/biff/GuttersRecord;->data:[B

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 71
    iget v0, p0, Ljxl/write/biff/GuttersRecord;->maxRowOutline:I

    iget-object v1, p0, Ljxl/write/biff/GuttersRecord;->data:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 72
    iget v0, p0, Ljxl/write/biff/GuttersRecord;->maxColOutline:I

    iget-object v1, p0, Ljxl/write/biff/GuttersRecord;->data:[B

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 73
    iget-object v0, p0, Ljxl/write/biff/GuttersRecord;->data:[B

    return-object v0
.end method
