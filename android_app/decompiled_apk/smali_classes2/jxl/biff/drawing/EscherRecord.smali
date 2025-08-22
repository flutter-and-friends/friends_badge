.class abstract Ljxl/biff/drawing/EscherRecord;
.super Ljava/lang/Object;
.source "EscherRecord.java"


# static fields
.field protected static final HEADER_LENGTH:I = 0x8

.field static synthetic class$jxl$biff$drawing$EscherRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:Ljxl/biff/drawing/EscherRecordData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Ljxl/biff/drawing/EscherRecord;->class$jxl$biff$drawing$EscherRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.EscherRecord"

    invoke-static {v0}, Ljxl/biff/drawing/EscherRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/EscherRecord;->class$jxl$biff$drawing$EscherRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/EscherRecord;->logger:Lcommon/Logger;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/EscherRecordType;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    invoke-direct {v0, p1}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    iput-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 34
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
.method getBytes()[B
    .locals 1

    .line 174
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method abstract getData()[B
.end method

.method protected getEscherData()Ljxl/biff/drawing/EscherRecordData;
    .locals 1

    .line 194
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    return-object v0
.end method

.method protected final getEscherStream()Ljxl/biff/drawing/EscherStream;
    .locals 1

    .line 94
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->getEscherStream()Ljxl/biff/drawing/EscherStream;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstance()I
    .locals 1

    .line 114
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->getInstance()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 84
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected final getPos()I
    .locals 1

    .line 104
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->getPos()I

    move-result v0

    return v0
.end method

.method protected getStreamLength()I
    .locals 1

    .line 184
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->getStreamLength()I

    move-result v0

    return v0
.end method

.method public getType()Ljxl/biff/drawing/EscherRecordType;
    .locals 1

    .line 144
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v0

    return-object v0
.end method

.method protected setContainer(Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/EscherRecordData;->setContainer(Z)V

    return-void
.end method

.method final setHeaderData([B)[B
    .locals 1

    .line 164
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/EscherRecordData;->setHeaderData([B)[B

    move-result-object p1

    return-object p1
.end method

.method protected final setInstance(I)V
    .locals 1

    .line 124
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/EscherRecordData;->setInstance(I)V

    return-void
.end method

.method protected final setVersion(I)V
    .locals 1

    .line 134
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecord;->data:Ljxl/biff/drawing/EscherRecordData;

    invoke-virtual {v0, p1}, Ljxl/biff/drawing/EscherRecordData;->setVersion(I)V

    return-void
.end method
