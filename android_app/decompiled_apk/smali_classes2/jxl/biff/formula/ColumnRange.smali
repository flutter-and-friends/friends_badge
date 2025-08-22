.class Ljxl/biff/formula/ColumnRange;
.super Ljxl/biff/formula/Area;
.source "ColumnRange.java"


# static fields
.field static synthetic class$jxl$biff$formula$ColumnRange:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/biff/formula/ColumnRange;->class$jxl$biff$formula$ColumnRange:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.formula.ColumnRange"

    invoke-static {v0}, Ljxl/biff/formula/ColumnRange;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ColumnRange;->class$jxl$biff$formula$ColumnRange:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/formula/ColumnRange;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljxl/biff/formula/Area;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 12

    .line 51
    invoke-direct {p0}, Ljxl/biff/formula/Area;-><init>()V

    const-string v0, ":"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 53
    :goto_0
    invoke-static {v3}, Lcommon/Assert;->verify(Z)V

    .line 54
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v1

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    .line 59
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->getColumn(Ljava/lang/String;)I

    move-result v5

    const v7, 0xffff

    .line 62
    invoke-static {v2}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v8

    const/4 v10, 0x0

    .line 65
    invoke-static {p1}, Ljxl/biff/CellReferenceHelper;->isColumnRelative(Ljava/lang/String;)Z

    move-result v9

    const/4 v11, 0x0

    move-object v3, p0

    .line 68
    invoke-virtual/range {v3 .. v11}, Ljxl/biff/formula/ColumnRange;->setRangeData(IIIIZZZZ)V

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
    .locals 1

    .line 81
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange;->getFirstColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    const/16 v0, 0x3a

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p0}, Ljxl/biff/formula/ColumnRange;->getLastColumn()I

    move-result v0

    invoke-static {v0, p1}, Ljxl/biff/CellReferenceHelper;->getColumnReference(ILjava/lang/StringBuffer;)V

    return-void
.end method
