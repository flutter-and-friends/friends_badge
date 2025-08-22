.class Ljxl/biff/formula/ColumnRange3d;
.super Ljxl/biff/formula/Area3d;
.source "ColumnRange3d.java"


# static fields
.field static synthetic class$jxl$biff$formula$ColumnRange3d:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private sheet:I

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/formula/ColumnRange3d;->class$jxl$biff$formula$ColumnRange3d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.ColumnRange3d"

    invoke-static {v0}, Ljxl/biff/formula/ColumnRange3d;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ColumnRange3d;->class$jxl$biff$formula$ColumnRange3d:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ColumnRange3d;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p2}, Ljxl/biff/formula/Area3d;-><init>(Ljxl/biff/formula/ExternalSheet;)V

    .line 68
    iput-object p2, p0, Ljxl/biff/formula/ColumnRange3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    const-string v2, ":"

    .line 69
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 70
    :goto_0
    invoke-static {v5}, Lcommon/Assert;->verify(Z)V

    .line 71
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x21

    .line 75
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 76
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v2

    const/4 v7, 0x0

    .line 81
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x5d

    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x27

    if-ne v3, v6, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    invoke-interface {p2, v0}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ljxl/biff/formula/ColumnRange3d;->sheet:I

    .line 93
    iget v1, p0, Ljxl/biff/formula/ColumnRange3d;->sheet:I

    if-ltz v1, :cond_2

    .line 100
    invoke-static {v5}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v3

    const v5, 0xffff

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 108
    iget v1, p0, Ljxl/biff/formula/ColumnRange3d;->sheet:I

    move-object v0, p0

    move v4, v7

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Ljxl/biff/formula/ColumnRange3d;->setRangeData(IIIIIZZZZ)V

    return-void

    .line 95
    :cond_2
    new-instance v1, Ljxl/biff/formula/FormulaException;

    sget-object v2, Ljxl/biff/formula/FormulaException;->SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {v1, v2, v0}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljxl/biff/formula/ExternalSheet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ljxl/biff/formula/Area3d;-><init>(Ljxl/biff/formula/ExternalSheet;)V

    .line 55
    iput-object p1, p0, Ljxl/biff/formula/ColumnRange3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 35
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getString(Ljava/lang/StringBuffer;)V
    .locals 3

    const/16 v0, 0x27

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iget-object v1, p0, Ljxl/biff/formula/ColumnRange3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    iget v2, p0, Ljxl/biff/formula/ColumnRange3d;->sheet:I

    invoke-interface {v1, v2}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x21

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange3d;->getFirstColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    const/16 v0, 0x3a

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange3d;->getLastColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    return-void
.end method
