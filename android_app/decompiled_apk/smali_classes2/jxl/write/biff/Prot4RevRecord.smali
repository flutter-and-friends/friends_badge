.class Ljxl/write/biff/Prot4RevRecord;
.super Ljxl/biff/WritableRecordData;
.source "Prot4RevRecord.java"


# instance fields
.field private data:[B

.field private protection:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 47
    sget-object v0, Ljxl/biff/Type;->PROT4REV:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    iput-boolean p1, p0, Ljxl/write/biff/Prot4RevRecord;->protection:Z

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 52
    iput-object p1, p0, Ljxl/write/biff/Prot4RevRecord;->data:[B

    .line 54
    iget-boolean p1, p0, Ljxl/write/biff/Prot4RevRecord;->protection:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 56
    iget-object v0, p0, Ljxl/write/biff/Prot4RevRecord;->data:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 67
    iget-object v0, p0, Ljxl/write/biff/Prot4RevRecord;->data:[B

    return-object v0
.end method
