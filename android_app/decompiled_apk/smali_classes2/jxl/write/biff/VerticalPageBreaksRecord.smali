.class Ljxl/write/biff/VerticalPageBreaksRecord;
.super Ljxl/biff/WritableRecordData;
.source "VerticalPageBreaksRecord.java"


# instance fields
.field private columnBreaks:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 43
    sget-object v0, Ljxl/biff/Type;->VERTICALPAGEBREAKS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 45
    iput-object p1, p0, Ljxl/write/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .line 55
    iget-object v0, p0, Ljxl/write/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x6

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 58
    array-length v0, v0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 61
    :goto_0
    iget-object v0, p0, Ljxl/write/biff/VerticalPageBreaksRecord;->columnBreaks:[I

    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 63
    aget v0, v0, v3

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v0, 0xff

    add-int/lit8 v4, v2, 0x4

    .line 64
    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
