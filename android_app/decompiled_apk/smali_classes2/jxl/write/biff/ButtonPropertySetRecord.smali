.class Ljxl/write/biff/ButtonPropertySetRecord;
.super Ljxl/biff/WritableRecordData;
.source "ButtonPropertySetRecord.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/ButtonPropertySetRecord;)V
    .locals 1

    .line 40
    sget-object v0, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 42
    invoke-virtual {p1}, Ljxl/read/biff/ButtonPropertySetRecord;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/ButtonPropertySetRecord;->data:[B

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/ButtonPropertySetRecord;)V
    .locals 1

    .line 50
    sget-object v0, Ljxl/biff/Type;->BUTTONPROPERTYSET:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 52
    invoke-virtual {p1}, Ljxl/write/biff/ButtonPropertySetRecord;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/ButtonPropertySetRecord;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 62
    iget-object v0, p0, Ljxl/write/biff/ButtonPropertySetRecord;->data:[B

    return-object v0
.end method
