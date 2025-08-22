.class Ljxl/biff/drawing/Dg;
.super Ljxl/biff/drawing/EscherAtom;
.source "Dg.java"


# instance fields
.field private data:[B

.field private drawingId:I

.field private seed:I

.field private shapeCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 71
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->DG:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Ljxl/biff/drawing/Dg;->drawingId:I

    add-int/2addr p1, v0

    .line 73
    iput p1, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    .line 74
    iget p1, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    add-int/lit16 p1, p1, 0x400

    add-int/2addr p1, v0

    iput p1, p0, Ljxl/biff/drawing/Dg;->seed:I

    .line 75
    iget p1, p0, Ljxl/biff/drawing/Dg;->drawingId:I

    invoke-virtual {p0, p1}, Ljxl/biff/drawing/Dg;->setInstance(I)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 4

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 57
    invoke-virtual {p0}, Ljxl/biff/drawing/Dg;->getInstance()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/Dg;->drawingId:I

    .line 59
    invoke-virtual {p0}, Ljxl/biff/drawing/Dg;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    const/4 v0, 0x4

    .line 61
    aget-byte v0, p1, v0

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    const/4 v3, 0x7

    aget-byte p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/Dg;->seed:I

    return-void
.end method


# virtual methods
.method getData()[B
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 95
    iput-object v0, p0, Ljxl/biff/drawing/Dg;->data:[B

    .line 96
    iget v0, p0, Ljxl/biff/drawing/Dg;->shapeCount:I

    iget-object v1, p0, Ljxl/biff/drawing/Dg;->data:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 97
    iget v0, p0, Ljxl/biff/drawing/Dg;->seed:I

    iget-object v1, p0, Ljxl/biff/drawing/Dg;->data:[B

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 99
    iget-object v0, p0, Ljxl/biff/drawing/Dg;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Dg;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDrawingId()I
    .locals 1

    .line 85
    iget v0, p0, Ljxl/biff/drawing/Dg;->drawingId:I

    return v0
.end method
