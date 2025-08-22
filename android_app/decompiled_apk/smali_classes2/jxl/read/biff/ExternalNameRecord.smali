.class public Ljxl/read/biff/ExternalNameRecord;
.super Ljxl/biff/RecordData;
.source "ExternalNameRecord.java"


# static fields
.field static synthetic class$jxl$read$biff$ExternalNameRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private addInFunction:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Ljxl/read/biff/ExternalNameRecord;->class$jxl$read$biff$ExternalNameRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.ExternalNameRecord"

    invoke-static {v0}, Ljxl/read/biff/ExternalNameRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/ExternalNameRecord;->class$jxl$read$biff$ExternalNameRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/ExternalNameRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 4

    .line 58
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 60
    invoke-virtual {p0}, Ljxl/read/biff/ExternalNameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 61
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iput-boolean v2, p0, Ljxl/read/biff/ExternalNameRecord;->addInFunction:Z

    .line 68
    :cond_0
    iget-boolean v1, p0, Ljxl/read/biff/ExternalNameRecord;->addInFunction:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x6

    .line 73
    aget-byte v1, p1, v1

    const/4 v3, 0x7

    .line 75
    aget-byte v3, p1, v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 79
    invoke-static {p1, v1, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/ExternalNameRecord;->name:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {p1, v1, v2, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/ExternalNameRecord;->name:Ljava/lang/String;

    :goto_0
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
.method public getName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Ljxl/read/biff/ExternalNameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isAddInFunction()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Ljxl/read/biff/ExternalNameRecord;->addInFunction:Z

    return v0
.end method
