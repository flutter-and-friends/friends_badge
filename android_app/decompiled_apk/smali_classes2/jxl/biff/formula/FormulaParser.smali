.class public Ljxl/biff/formula/FormulaParser;
.super Ljava/lang/Object;
.source "FormulaParser.java"


# static fields
.field static synthetic class$jxl$biff$formula$FormulaParser:Ljava/lang/Class;

.field private static final logger:Lcommon/Logger;


# instance fields
.field private parser:Ljxl/biff/formula/Parser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Ljxl/biff/formula/FormulaParser;->class$jxl$biff$formula$FormulaParser:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.FormulaParser"

    invoke-static {v0}, Ljxl/biff/formula/FormulaParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/FormulaParser;->class$jxl$biff$formula$FormulaParser:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/FormulaParser;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljxl/biff/formula/StringFormulaParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljxl/biff/formula/StringFormulaParser;-><init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    return-void
.end method

.method public constructor <init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-interface {p3}, Ljxl/biff/formula/ExternalSheet;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljxl/biff/formula/ExternalSheet;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff8()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Ljxl/biff/formula/FormulaException;

    sget-object p2, Ljxl/biff/formula/FormulaException;->BIFF8_SUPPORTED:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p1, p2}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 70
    :goto_1
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 71
    new-instance v0, Ljxl/biff/formula/TokenFormulaParser;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Ljxl/biff/formula/TokenFormulaParser;-><init>([BLjxl/Cell;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 38
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
.method public adjustRelativeCellReferences(II)V
    .locals 1

    .line 100
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0, p1, p2}, Ljxl/biff/formula/Parser;->adjustRelativeCellReferences(II)V

    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 1

    .line 147
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0, p1, p2, p3}, Ljxl/biff/formula/Parser;->columnInserted(IIZ)V

    return-void
.end method

.method public columnRemoved(IIZ)V
    .locals 1

    .line 162
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0, p1, p2, p3}, Ljxl/biff/formula/Parser;->columnRemoved(IIZ)V

    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 132
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0}, Ljxl/biff/formula/Parser;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0}, Ljxl/biff/formula/Parser;->getFormula()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleImportedCellReferences()Z
    .locals 1

    .line 203
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0}, Ljxl/biff/formula/Parser;->handleImportedCellReferences()Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0}, Ljxl/biff/formula/Parser;->parse()V

    return-void
.end method

.method public rowInserted(IIZ)V
    .locals 1

    .line 177
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0, p1, p2, p3}, Ljxl/biff/formula/Parser;->rowInserted(IIZ)V

    return-void
.end method

.method public rowRemoved(IIZ)V
    .locals 1

    .line 192
    iget-object v0, p0, Ljxl/biff/formula/FormulaParser;->parser:Ljxl/biff/formula/Parser;

    invoke-interface {v0, p1, p2, p3}, Ljxl/biff/formula/Parser;->rowRemoved(IIZ)V

    return-void
.end method
