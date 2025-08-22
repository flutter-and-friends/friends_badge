.class Ljxl/biff/formula/MemArea;
.super Ljxl/biff/formula/SubExpression;
.source "MemArea.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljxl/biff/formula/SubExpression;-><init>()V

    return-void
.end method


# virtual methods
.method public getString(Ljava/lang/StringBuffer;)V
    .locals 5

    .line 38
    invoke-virtual {p0}, Ljxl/biff/formula/MemArea;->getSubExpression()[Ljxl/biff/formula/ParseItem;

    move-result-object v0

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 42
    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 44
    :cond_0
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 46
    aget-object v1, v0, v3

    invoke-virtual {v1, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    const/16 v1, 0x3a

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljxl/biff/formula/ParseItem;->getString(Ljava/lang/StringBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method handleImportedCellReferences()V
    .locals 0

    return-void
.end method

.method public read([BI)I
    .locals 1

    add-int/lit8 v0, p2, 0x4

    .line 62
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x5

    aget-byte p1, p1, p2

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    invoke-virtual {p0, p1}, Ljxl/biff/formula/MemArea;->setLength(I)V

    const/4 p1, 0x6

    return p1
.end method
