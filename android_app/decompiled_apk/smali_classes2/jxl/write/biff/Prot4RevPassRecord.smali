.class Ljxl/write/biff/Prot4RevPassRecord;
.super Ljxl/biff/WritableRecordData;
.source "Prot4RevPassRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    sget-object v0, Ljxl/biff/Type;->PROT4REVPASS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 43
    iput-object v0, p0, Ljxl/write/biff/Prot4RevPassRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 53
    iget-object v0, p0, Ljxl/write/biff/Prot4RevPassRecord;->data:[B

    return-object v0
.end method
