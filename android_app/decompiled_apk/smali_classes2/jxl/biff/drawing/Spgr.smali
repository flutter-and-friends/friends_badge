.class Ljxl/biff/drawing/Spgr;
.super Ljxl/biff/drawing/EscherAtom;
.source "Spgr.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->SPGR:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Spgr;->setVersion(I)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 49
    iput-object v0, p0, Ljxl/biff/drawing/Spgr;->data:[B

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    return-void
.end method


# virtual methods
.method getData()[B
    .locals 1

    .line 59
    iget-object v0, p0, Ljxl/biff/drawing/Spgr;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Spgr;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method
