.class Ljxl/read/biff/DefaultColumnWidthRecord;
.super Ljxl/biff/RecordData;
.source "DefaultColumnWidthRecord.java"


# instance fields
.field private width:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 45
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/DefaultColumnWidthRecord;->width:I

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    .line 56
    iget v0, p0, Ljxl/read/biff/DefaultColumnWidthRecord;->width:I

    return v0
.end method
