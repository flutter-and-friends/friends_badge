.class Ljxl/read/biff/SCLRecord;
.super Ljxl/biff/RecordData;
.source "SCLRecord.java"


# instance fields
.field private denominator:I

.field private numerator:I


# direct methods
.method protected constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 47
    sget-object v0, Ljxl/biff/Type;->SCL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/RecordData;-><init>(Ljxl/biff/Type;)V

    .line 49
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 51
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/SCLRecord;->numerator:I

    const/4 v0, 0x2

    .line 52
    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/SCLRecord;->denominator:I

    return-void
.end method


# virtual methods
.method public getZoomFactor()I
    .locals 2

    .line 62
    iget v0, p0, Ljxl/read/biff/SCLRecord;->numerator:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljxl/read/biff/SCLRecord;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method
