.class Ljxl/write/biff/Window1Record;
.super Ljxl/biff/WritableRecordData;
.source "Window1Record.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Ljxl/biff/Type;->WINDOW1:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/16 v0, 0x12

    new-array v0, v0, [B

    .line 43
    fill-array-data v0, :array_0

    iput-object v0, p0, Ljxl/write/biff/Window1Record;->data:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x68t
        0x1t
        0xet
        0x1t
        0x5ct
        0x3at
        -0x42t
        0x23t
        0x38t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x58t
        0x2t
    .end array-data
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 71
    iget-object v0, p0, Ljxl/write/biff/Window1Record;->data:[B

    return-object v0
.end method
