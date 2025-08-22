.class Ljxl/read/biff/PaneRecord;
.super Ljxl/biff/RecordData;
.source "PaneRecord.java"


# static fields
.field static synthetic class$jxl$read$biff$PaneRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private columnsVisible:I

.field private rowsVisible:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Ljxl/read/biff/PaneRecord;->class$jxl$read$biff$PaneRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.PaneRecord"

    invoke-static {v0}, Ljxl/read/biff/PaneRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/PaneRecord;->class$jxl$read$biff$PaneRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/PaneRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 54
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/PaneRecord;->columnsVisible:I

    const/4 v0, 0x2

    .line 57
    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    invoke-static {v0, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    iput p1, p0, Ljxl/read/biff/PaneRecord;->rowsVisible:I

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
.method public final getColumnsVisible()I
    .locals 1

    .line 77
    iget v0, p0, Ljxl/read/biff/PaneRecord;->columnsVisible:I

    return v0
.end method

.method public final getRowsVisible()I
    .locals 1

    .line 67
    iget v0, p0, Ljxl/read/biff/PaneRecord;->rowsVisible:I

    return v0
.end method
