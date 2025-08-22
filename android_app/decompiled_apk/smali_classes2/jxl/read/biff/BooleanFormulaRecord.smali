.class Ljxl/read/biff/BooleanFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "BooleanFormulaRecord.java"

# interfaces
.implements Ljxl/BooleanCell;
.implements Ljxl/biff/FormulaData;
.implements Ljxl/BooleanFormulaCell;


# instance fields
.field private data:[B

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private value:Z


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 80
    iput-object p3, p0, Ljxl/read/biff/BooleanFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 81
    iput-object p4, p0, Ljxl/read/biff/BooleanFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Ljxl/read/biff/BooleanFormulaRecord;->value:Z

    .line 84
    invoke-virtual {p0}, Ljxl/read/biff/BooleanFormulaRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p2

    invoke-virtual {p2}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p2

    iput-object p2, p0, Ljxl/read/biff/BooleanFormulaRecord;->data:[B

    .line 86
    iget-object p2, p0, Ljxl/read/biff/BooleanFormulaRecord;->data:[B

    const/4 p3, 0x6

    aget-byte p2, p2, p3

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-eq p2, p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcommon/Assert;->verify(Z)V

    .line 88
    iget-object p2, p0, Ljxl/read/biff/BooleanFormulaRecord;->data:[B

    const/16 p4, 0x8

    aget-byte p2, p2, p4

    if-ne p2, p3, :cond_1

    const/4 p1, 0x1

    :cond_1
    iput-boolean p1, p0, Ljxl/read/biff/BooleanFormulaRecord;->value:Z

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/Boolean;

    iget-boolean v1, p0, Ljxl/read/biff/BooleanFormulaRecord;->value:Z

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Ljxl/read/biff/BooleanFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Ljxl/read/biff/BooleanFormulaRecord;->data:[B

    array-length v1, v0

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    new-array v4, v1, [B

    const/4 v1, 0x0

    .line 156
    array-length v3, v4

    invoke-static {v0, v2, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v6, p0, Ljxl/read/biff/BooleanFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v7, p0, Ljxl/read/biff/BooleanFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/BooleanFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v8

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 160
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 161
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/BooleanFormulaRecord;->formulaString:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/BooleanFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getFormulaData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Ljxl/read/biff/BooleanFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Ljxl/read/biff/BooleanFormulaRecord;->data:[B

    array-length v1, v0

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 140
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 135
    :cond_0
    new-instance v0, Ljxl/biff/formula/FormulaException;

    sget-object v1, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 122
    sget-object v0, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Ljxl/read/biff/BooleanFormulaRecord;->value:Z

    return v0
.end method
