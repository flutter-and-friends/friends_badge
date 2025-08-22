.class public Ljxl/biff/DataValidityListRecord;
.super Ljxl/biff/WritableRecordData;
.source "DataValidityListRecord.java"


# instance fields
.field private data:[B

.field private dvalParser:Ljxl/biff/DValParser;

.field private numSettings:I

.field private objectId:I


# direct methods
.method public constructor <init>(Ljxl/biff/DValParser;)V
    .locals 1

    .line 67
    sget-object v0, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 69
    iput-object p1, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    return-void
.end method

.method constructor <init>(Ljxl/biff/DataValidityListRecord;)V
    .locals 1

    .line 79
    sget-object v0, Ljxl/biff/Type;->DVAL:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 81
    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 4

    .line 55
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 57
    invoke-virtual {p0}, Ljxl/biff/DataValidityListRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    .line 58
    iget-object p1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    const/16 v0, 0xa

    aget-byte v0, p1, v0

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    const/16 v2, 0xc

    aget-byte v2, p1, v2

    const/16 v3, 0xd

    aget-byte p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/DataValidityListRecord;->objectId:I

    .line 59
    iget-object p1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    const/16 v0, 0xe

    aget-byte v0, p1, v0

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    const/16 v2, 0x10

    aget-byte v2, p1, v2

    const/16 v3, 0x11

    aget-byte p1, p1, v3

    invoke-static {v0, v1, v2, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/DataValidityListRecord;->numSettings:I

    return-void
.end method


# virtual methods
.method dvAdded()V
    .locals 2

    .line 126
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljxl/biff/DValParser;

    iget-object v1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    invoke-direct {v0, v1}, Ljxl/biff/DValParser;-><init>([B)V

    iput-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    .line 131
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    invoke-virtual {v0}, Ljxl/biff/DValParser;->dvAdded()V

    return-void
.end method

.method dvRemoved()V
    .locals 2

    .line 113
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljxl/biff/DValParser;

    iget-object v1, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    invoke-direct {v0, v1}, Ljxl/biff/DValParser;-><init>([B)V

    iput-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    .line 118
    :cond_0
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    invoke-virtual {v0}, Ljxl/biff/DValParser;->dvRemoved()V

    return-void
.end method

.method public getData()[B
    .locals 1

    .line 99
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->data:[B

    return-object v0

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DValParser;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method getNumberOfSettings()I
    .locals 1

    .line 89
    iget v0, p0, Ljxl/biff/DataValidityListRecord;->numSettings:I

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .line 156
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    if-nez v0, :cond_0

    .line 158
    iget v0, p0, Ljxl/biff/DataValidityListRecord;->objectId:I

    return v0

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DValParser;->getObjectId()I

    move-result v0

    return v0
.end method

.method public hasDVRecords()Z
    .locals 2

    .line 141
    iget-object v0, p0, Ljxl/biff/DataValidityListRecord;->dvalParser:Ljxl/biff/DValParser;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljxl/biff/DValParser;->getNumberOfDVRecords()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
