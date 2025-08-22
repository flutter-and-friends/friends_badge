.class Ljxl/biff/formula/CellReference;
.super Ljxl/biff/formula/Operand;
.source "CellReference.java"

# interfaces
.implements Ljxl/biff/formula/ParsedThing;


# static fields
.field static synthetic class$jxl$biff$formula$CellReference:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private column:I

.field private columnRelative:Z

.field private relativeTo:Ljxl/Cell;

.field private row:I

.field private rowRelative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Ljxl/biff/formula/CellReference;->class$jxl$biff$formula$CellReference:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.CellReference"

    invoke-static {v0}, Ljxl/biff/formula/CellReference;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/CellReference;->class$jxl$biff$formula$CellReference:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/CellReference;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 88
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 89
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getRow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    .line 90
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    .line 91
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isRowRelative(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    return-void
.end method

.method public constructor <init>(Ljxl/Cell;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljxl/biff/formula/Operand;-><init>()V

    .line 71
    iput-object p1, p0, Ljxl/biff/formula/CellReference;->relativeTo:Ljxl/Cell;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 36
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

    .line 184
    iget-boolean v0, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    add-int/2addr v0, p1

    iput v0, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 189
    :cond_0
    iget-boolean p1, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    if-eqz p1, :cond_1

    .line 191
    iget p1, p0, Ljxl/biff/formula/CellReference;->row:I

    add-int/2addr p1, p2

    iput p1, p0, Ljxl/biff/formula/CellReference;->row:I

    :cond_1
    return-void
.end method

.method public columnInserted(IIZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 212
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference;->column:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 214
    iput p1, p0, Ljxl/biff/formula/CellReference;->column:I

    :cond_1
    return-void
.end method

.method columnRemoved(IIZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 235
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference;->column:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 237
    iput p1, p0, Ljxl/biff/formula/CellReference;->column:I

    :cond_1
    return-void
.end method

.method getBytes()[B
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 152
    invoke-virtual {p0}, Ljxl/biff/formula/CellReference;->useAlternateCode()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode()B

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljxl/biff/formula/Token;->REF:Ljxl/biff/formula/Token;

    invoke-virtual {v1}, Ljxl/biff/formula/Token;->getCode2()B

    move-result v1

    :goto_0
    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 155
    iget v1, p0, Ljxl/biff/formula/CellReference;->row:I

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 157
    iget v1, p0, Ljxl/biff/formula/CellReference;->column:I

    .line 160
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    if-eqz v2, :cond_1

    const v2, 0x8000

    or-int/2addr v1, v2

    .line 165
    :cond_1
    iget-boolean v2, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    if-eqz v2, :cond_2

    or-int/lit16 v1, v1, 0x4000

    :cond_2
    const/4 v2, 0x3

    .line 170
    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 119
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 129
    iget v0, p0, Ljxl/biff/formula/CellReference;->row:I

    return v0
.end method

.method public getString(Ljava/lang/StringBuffer;)V
    .locals 4

    .line 139
    iget v0, p0, Ljxl/biff/formula/CellReference;->column:I

    iget-boolean v1, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Ljxl/biff/formula/CellReference;->row:I

    iget-boolean v3, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(IZIZLjava/lang/StringBuffer;)V

    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    return-void
.end method

.method public read([BI)I
    .locals 2

    .line 103
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/formula/CellReference;->row:I

    add-int/lit8 v0, p2, 0x2

    .line 104
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    and-int/lit16 p2, p1, 0xff

    .line 105
    iput p2, p0, Ljxl/biff/formula/CellReference;->column:I

    and-int/lit16 p2, p1, 0x4000

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 106
    :goto_0
    iput-boolean p2, p0, Ljxl/biff/formula/CellReference;->columnRelative:Z

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 107
    :cond_1
    iput-boolean v0, p0, Ljxl/biff/formula/CellReference;->rowRelative:Z

    const/4 p1, 0x4

    return p1
.end method

.method rowInserted(IIZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 258
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference;->row:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 260
    iput p1, p0, Ljxl/biff/formula/CellReference;->row:I

    :cond_1
    return-void
.end method

.method rowRemoved(IIZ)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    .line 281
    :cond_0
    iget p1, p0, Ljxl/biff/formula/CellReference;->row:I

    if-lt p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 283
    iput p1, p0, Ljxl/biff/formula/CellReference;->row:I

    :cond_1
    return-void
.end method
