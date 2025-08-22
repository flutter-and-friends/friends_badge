.class Ljxl/read/biff/DefaultRowHeightRecord;
.super Ljxl/biff/RecordData;
.source "DefaultRowHeightRecord.java"


# instance fields
.field private height:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 43
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 45
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 47
    aget-byte v0, p1, v1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/DefaultRowHeightRecord;->height:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 58
    iget v0, p0, Ljxl/read/biff/DefaultRowHeightRecord;->height:I

    return v0
.end method
