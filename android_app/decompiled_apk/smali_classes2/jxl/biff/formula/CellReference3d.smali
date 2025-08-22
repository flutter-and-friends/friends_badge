.class Ljxl/biff/formula/CellReference3d;
.super Ljxl/biff/formula/Operand;
.source "CellReference3d.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field static synthetic class$jxl$biff$formula$CellReference3d:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private column:I

.field private columnRelative:Z

.field private relativeTo:Ljxl/Cell;

.field private row:I

.field private rowRelative:Z

.field private sheet:I

.field private workbook:Ljxl/biff/formula/ExternalSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Ljxl/biff/formula/CellReference3d;->class$jxl$biff$formula$CellReference3d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.CellReference3d"

    invoke-static {v0}, Ljxl/biff/formula/CellReference3d;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/CellReference3d;->class$jxl$biff$formula$CellReference3d:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/CellReference3d;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/biff/formula/ExternalSheet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/biff/formula/FormulaException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 96
    iput-object p2, p0, Ljxl/biff/formula/CellReference3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    .line 98
    iput-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    const/16 v1, 0x21

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 102
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 104
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Ljxl/biff/formula/CellReference3d;->row:I

    const/4 v2, 0x0

    .line 107
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_0
    invoke-interface {p2, p1}, Ljxl/biff/formula/ExternalSheet;->getExternalSheetIndex(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    .line 117
    iget p2, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-ltz p2, :cond_1

    return-void

    .line 119
    :cond_1
    new-instance p2, Ljxl/biff/formula/FormulaException;

    sget-object v0, Ljxl/biff/formula/FormulaException;->SHEET_REF_NOT_FOUND:Ljxl/biff/formula/FormulaException$FormulaMessage;

    invoke-direct {p2, v0, p1}, Ljxl/biff/formula/FormulaException;-><init>(Ljxl/biff/formula/FormulaException$FormulaMessage;Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljxl/Cell;Ljxl/biff/formula/ExternalSheet;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 83
    iput-object p1, p0, Ljxl/biff/formula/CellReference3d;->relativeTo:Ljxl/Cell;

    .line 84
    iput-object p2, p0, Ljxl/biff/formula/CellReference3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 37
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

    .line 215
    iget-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 220
    :cond_0
    iget-boolean p1, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    if-eqz p1, :cond_1

    .line 222
    iget p1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    add-int/2addr p1, p2

    iput p1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    :cond_1
    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 0

    .line 238
    iget p3, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, p3, :cond_0

    return-void

    .line 243
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 245
    iput p1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    :cond_1
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 0

    .line 262
    iget p3, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, p3, :cond_0

    return-void

    .line 267
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 269
    iput p1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    :cond_1
    return-void
.end method

.method getBytes()[B
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 183
    sget-object v1, Ljxl/biff/formula/Token;->REF3D:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 185
    iget v1, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 186
    iget v1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 188
    iget v1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    .line 191
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 196
    :cond_0
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    if-eqz v2, :cond_1

    or-int/lit16 v1, v1, 0x4000

    :cond_1
    const/4 v2, 0x5

    .line 201
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 150
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 160
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 7

    .line 170
    iget v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    iget v1, p0, Ljxl/biff/formula/CellReference3d;->column:I

    iget-boolean v2, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    xor-int/lit8 v2, v2, 0x1

    iget v3, p0, Ljxl/biff/formula/CellReference3d;->row:I

    iget-boolean v4, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    xor-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljxl/biff/formula/CellReference3d;->workbook:Ljxl/biff/formula/ExternalSheet;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Ljxl/biff/CellReferenceHelper;->getCellReference(IIZIZLjxl/biff/formula/ExternalSheet;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    .line 326
    invoke-virtual {p0}, Ljxl/biff/formula/CellReference3d;->setInvalid()V

    return-void
.end method

.method public read([BI)I
    .locals 2

    .line 133
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    add-int/lit8 v0, p2, 0x2

    .line 134
    aget-byte v0, p1, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference3d;->row:I

    add-int/lit8 v0, p2, 0x4

    .line 135
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x5

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit16 p2, p1, 0xff

    .line 136
    iput p2, p0, Ljxl/biff/formula/CellReference3d;->column:I

    and-int/lit16 p2, p1, 0x4000

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 137
    :goto_0
    iput-boolean p2, p0, Ljxl/biff/formula/CellReference3d;->columnRelative:Z

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 138
    :cond_1
    iput-boolean v0, p0, Ljxl/biff/formula/CellReference3d;->rowRelative:Z

    const/4 p1, 0x6

    return p1
.end method

.method rowInserted(IIZ)V
    .locals 0

    .line 285
    iget p3, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, p3, :cond_0

    return-void

    .line 290
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 292
    iput p1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    :cond_1
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 0

    .line 308
    iget p3, p0, Ljxl/biff/formula/CellReference3d;->sheet:I

    if-eq p1, p3, :cond_0

    return-void

    .line 313
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 315
    iput p1, p0, Ljxl/biff/formula/CellReference3d;->row:I

    :cond_1
    return-void
.end method
