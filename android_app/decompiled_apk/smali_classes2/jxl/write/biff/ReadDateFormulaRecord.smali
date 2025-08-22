.class Ljxl/write/biff/ReadDateFormulaRecord;
.super Ljxl/write/biff/ReadFormulaRecord;
.source "ReadDateFormulaRecord.java"

# interfaces
.implements Ljxl/DateFormulaCell;


# direct methods
.method public constructor <init>(Ljxl/biff/FormulaData;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Ljxl/write/biff/ReadFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 51
    invoke-virtual {p0}, Ljxl/write/biff/ReadDateFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/DateFormulaCell;

    invoke-interface {v0}, Ljxl/DateFormulaCell;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 74
    invoke-virtual {p0}, Ljxl/write/biff/ReadDateFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/DateFormulaCell;

    invoke-interface {v0}, Ljxl/DateFormulaCell;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public isTime()Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Ljxl/write/biff/ReadDateFormulaRecord;->getReadFormula()Ljxl/biff/FormulaData;

    move-result-object v0

    check-cast v0, Ljxl/DateFormulaCell;

    invoke-interface {v0}, Ljxl/DateFormulaCell;->isTime()Z

    move-result v0

    return v0
.end method
