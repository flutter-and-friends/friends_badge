.class Ljxl/write/biff/DSFRecord;
.super Ljxl/biff/WritableRecordData;
.source "DSFRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    sget-object v0, Ljxl/biff/Type;->DSF:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 45
    fill-array-data v0, :array_0

    iput-object v0, p0, Ljxl/write/biff/DSFRecord;->data:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 55
    iget-object v0, p0, Ljxl/write/biff/DSFRecord;->data:[B

    return-object v0
.end method
