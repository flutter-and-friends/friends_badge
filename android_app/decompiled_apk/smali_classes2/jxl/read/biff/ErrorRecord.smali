.class Ljxl/read/biff/ErrorRecord;
.super Ljxl/read/biff/CellValue;
.source "ErrorRecord.java"

# interfaces
.implements Ljxl/ErrorCell;


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 48
    invoke-virtual {p0}, Ljxl/read/biff/ErrorRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p2, 0x6

    .line 50
    aget-byte p1, p1, p2

    iput p1, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 62
    iget v0, p0, Ljxl/read/biff/ErrorRecord;->errorCode:I

    return v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 82
    sget-object v0, Ljxl/CellType;->ERROR:Ljxl/CellType;

    return-object v0
.end method
