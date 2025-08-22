.class public abstract Ljxl/read/biff/BaseSharedFormulaRecord;
.super Ljxl/read/biff/CellValue;
.source "BaseSharedFormulaRecord.java"

# interfaces
.implements Ljxl/biff/FormulaData;


# instance fields
.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private filePos:I

.field private formulaString:Ljava/lang/String;

.field private nameTable:Ljxl/biff/WorkbookMethods;

.field private tokens:[B


# direct methods
.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/read/biff/SheetImpl;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p5}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 79
    iput-object p3, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 80
    iput-object p4, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    .line 81
    iput p6, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->filePos:I

    return-void
.end method


# virtual methods
.method protected final getExternalSheet()Ljxl/biff/formula/ExternalSheet;
    .locals 1

    .line 132
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    return-object v0
.end method

.method final getFilePos()I
    .locals 1

    .line 163
    iget v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->filePos:I

    return v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->formulaString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljxl/biff/formula/FormulaParser;

    iget-object v2, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->tokens:[B

    iget-object v4, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v5, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    invoke-virtual {p0}, Ljxl/read/biff/BaseSharedFormulaRecord;->getSheet()Ljxl/read/biff/SheetImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getWorkbook()Ljxl/read/biff/WorkbookParser;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/WorkbookParser;->getSettings()Ljxl/WorkbookSettings;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/FormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    .line 97
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->parse()V

    .line 98
    invoke-virtual {v0}, Ljxl/biff/formula/FormulaParser;->getFormula()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->formulaString:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->formulaString:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNameTable()Ljxl/biff/WorkbookMethods;
    .locals 1

    .line 142
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->nameTable:Ljxl/biff/WorkbookMethods;

    return-object v0
.end method

.method public getRecord()Ljxl/read/biff/Record;
    .locals 1

    .line 153
    invoke-super {p0}, Ljxl/read/biff/CellValue;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    return-object v0
.end method

.method protected final getTokens()[B
    .locals 1

    .line 122
    iget-object v0, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->tokens:[B

    return-object v0
.end method

.method setTokens([B)V
    .locals 0

    .line 112
    iput-object p1, p0, Ljxl/read/biff/BaseSharedFormulaRecord;->tokens:[B

    return-void
.end method
