.class public abstract Ljxl/write/biff/BlankRecord;
.super Ljxl/write/biff/CellValue;
.source "BlankRecord.java"


# static fields
.field static synthetic class$jxl$write$biff$BlankRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Ljxl/write/biff/BlankRecord;->class$jxl$write$biff$BlankRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.BlankRecord"

    invoke-static {v0}, Ljxl/write/biff/BlankRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/BlankRecord;->class$jxl$write$biff$BlankRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/BlankRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1

    .line 48
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;II)V

    return-void
.end method

.method protected constructor <init>(IILjxl/format/CellFormat;)V
    .locals 1

    .line 61
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    return-void
.end method

.method protected constructor <init>(IILjxl/write/biff/BlankRecord;)V
    .locals 1

    .line 84
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p3}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/write/biff/CellValue;)V

    return-void
.end method

.method protected constructor <init>(Ljxl/Cell;)V
    .locals 1

    .line 72
    sget-object v0, Ljxl/biff/Type;->BLANK:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

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
.method public getContents()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 94
    sget-object v0, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    return-object v0
.end method
