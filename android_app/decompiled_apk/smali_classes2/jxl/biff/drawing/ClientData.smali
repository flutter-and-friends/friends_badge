.class Ljxl/biff/drawing/ClientData;
.super Ljxl/biff/drawing/EscherAtom;
.source "ClientData.java"


# static fields
.field static synthetic class$jxl$biff$drawing$ClientData:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Ljxl/biff/drawing/ClientData;->class$jxl$biff$drawing$ClientData:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.ClientData"

    invoke-static {v0}, Ljxl/biff/drawing/ClientData;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ClientData;->class$jxl$biff$drawing$ClientData:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ClientData;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->CLIENT_DATA:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 32
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
.method getData()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 64
    iput-object v0, p0, Ljxl/biff/drawing/ClientData;->data:[B

    .line 65
    iget-object v0, p0, Ljxl/biff/drawing/ClientData;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/ClientData;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method
