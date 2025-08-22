.class Ljxl/read/biff/BooleanRecord;
.super Ljxl/read/biff/CellValue;
.source "BooleanRecord.java"

# interfaces
.implements Ljxl/BooleanCell;


# instance fields
.field private error:Z

.field private value:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Ljxl/read/biff/BooleanRecord;->error:Z

    .line 55
    iput-boolean p1, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    .line 57
    invoke-virtual {p0}, Ljxl/read/biff/BooleanRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p2

    invoke-virtual {p2}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p2

    const/4 p3, 0x7

    .line 59
    aget-byte p3, p2, p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Ljxl/read/biff/BooleanRecord;->error:Z

    .line 61
    iget-boolean p3, p0, Ljxl/read/biff/BooleanRecord;->error:Z

    if-nez p3, :cond_2

    const/4 p3, 0x6

    .line 63
    aget-byte p2, p2, p3

    if-ne p2, v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 2

    .line 98
    invoke-virtual {p0}, Ljxl/read/biff/BooleanRecord;->isError()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 101
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 122
    invoke-super {p0}, Ljxl/read/biff/CellValue;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 111
    sget-object v0, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Ljxl/read/biff/BooleanRecord;->value:Z

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Ljxl/read/biff/BooleanRecord;->error:Z

    return v0
.end method
