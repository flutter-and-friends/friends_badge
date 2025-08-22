.class Ljxl/write/biff/ExtendedSSTRecord;
.super Ljxl/biff/WritableRecordData;
.source "ExtendedSSTRecord.java"


# static fields
.field private static final infoRecordSize:I = 0x8


# instance fields
.field private absoluteStreamPositions:[I

.field private currentStringIndex:I

.field private numberOfStrings:I

.field private relativeStreamPositions:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 50
    sget-object v0, Ljxl/biff/Type;->EXTSST:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    .line 51
    iput p1, p0, Ljxl/write/biff/ExtendedSSTRecord;->numberOfStrings:I

    .line 52
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfBuckets()I

    move-result p1

    .line 53
    new-array v1, p1, [I

    iput-object v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->absoluteStreamPositions:[I

    .line 54
    new-array p1, p1, [I

    iput-object p1, p0, Ljxl/write/biff/ExtendedSSTRecord;->relativeStreamPositions:[I

    .line 55
    iput v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    return-void
.end method


# virtual methods
.method public addString(II)V
    .locals 2

    .line 80
    iget-object v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->absoluteStreamPositions:[I

    iget v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    add-int/2addr p1, p2

    aput p1, v0, v1

    .line 82
    iget-object p1, p0, Ljxl/write/biff/ExtendedSSTRecord;->relativeStreamPositions:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 83
    iput v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->currentStringIndex:I

    return-void
.end method

.method public getData()[B
    .locals 6

    .line 93
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfBuckets()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x2

    .line 94
    new-array v1, v1, [B

    .line 96
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfStringsPerBucket()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    :goto_0
    if-ge v3, v0, :cond_0

    .line 101
    iget-object v2, p0, Ljxl/write/biff/ExtendedSSTRecord;->absoluteStreamPositions:[I

    aget v2, v2, v3

    mul-int/lit8 v4, v3, 0x8

    add-int/lit8 v5, v4, 0x2

    invoke-static {v2, v1, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 105
    iget-object v2, p0, Ljxl/write/biff/ExtendedSSTRecord;->relativeStreamPositions:[I

    aget v2, v2, v3

    add-int/lit8 v4, v4, 0x6

    invoke-static {v2, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getNumberOfBuckets()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Ljxl/write/biff/ExtendedSSTRecord;->getNumberOfStringsPerBucket()I

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget v1, p0, Ljxl/write/biff/ExtendedSSTRecord;->numberOfStrings:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNumberOfStringsPerBucket()I
    .locals 1

    .line 74
    iget v0, p0, Ljxl/write/biff/ExtendedSSTRecord;->numberOfStrings:I

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x80

    return v0
.end method
