.class Ljxl/write/biff/MMSRecord;
.super Ljxl/biff/WritableRecordData;
.source "MMSRecord.java"


# instance fields
.field private data:[B

.field private numMenuItemsAdded:B

.field private numMenuItemsDeleted:B


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 51
    sget-object v0, Ljxl/biff/Type;->MMS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    int-to-byte p1, p1

    .line 53
    iput-byte p1, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsAdded:B

    int-to-byte p1, p2

    .line 54
    iput-byte p1, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsDeleted:B

    const/4 p1, 0x2

    new-array p1, p1, [B

    .line 56
    iput-object p1, p0, Ljxl/write/biff/MMSRecord;->data:[B

    .line 58
    iget-object p1, p0, Ljxl/write/biff/MMSRecord;->data:[B

    iget-byte p2, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsAdded:B

    const/4 v0, 0x0

    aput-byte p2, p1, v0

    .line 59
    iget-byte p2, p0, Ljxl/write/biff/MMSRecord;->numMenuItemsDeleted:B

    const/4 v0, 0x1

    aput-byte p2, p1, v0

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 69
    iget-object v0, p0, Ljxl/write/biff/MMSRecord;->data:[B

    return-object v0
.end method
