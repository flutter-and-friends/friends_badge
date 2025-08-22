.class final Ljxl/biff/drawing/EscherRecordData;
.super Ljava/lang/Object;
.source "EscherRecordData.java"


# static fields
.field static synthetic class$jxl$biff$drawing$EscherRecordData:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private container:Z

.field private escherStream:Ljxl/biff/drawing/EscherStream;

.field private instance:I

.field private length:I

.field private pos:I

.field private recordId:I

.field private streamLength:I

.field private type:Ljxl/biff/drawing/EscherRecordType;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Ljxl/biff/drawing/EscherRecordData;->class$jxl$biff$drawing$EscherRecordData:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.EscherRecordData"

    invoke-static {v0}, Ljxl/biff/drawing/EscherRecordData;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/EscherRecordData;->class$jxl$biff$drawing$EscherRecordData:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/EscherRecordData;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordType;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    .line 132
    iget-object p1, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    invoke-virtual {p1}, Ljxl/biff/drawing/EscherRecordType;->getValue()I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherStream;I)V
    .locals 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    .line 93
    iput p2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    .line 94
    iget-object p1, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    invoke-interface {p1}, Ljxl/biff/drawing/EscherStream;->getData()[B

    move-result-object p1

    .line 96
    array-length p2, p1

    iput p2, p0, Ljxl/biff/drawing/EscherRecordData;->streamLength:I

    .line 99
    iget p2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    aget-byte v0, p1, p2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    aget-byte p2, p1, p2

    invoke-static {v0, p2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p2

    const v0, 0xfff0

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x4

    .line 102
    iput v0, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    const/16 v0, 0xf

    and-int/2addr p2, v0

    .line 105
    iput p2, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    .line 108
    iget p2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    aget-byte p2, p1, p2

    invoke-static {v2, p2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p2

    iput p2, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    .line 111
    iget p2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x6

    aget-byte v4, p1, v4

    add-int/lit8 p2, p2, 0x7

    aget-byte p1, p1, p2

    invoke-static {v2, v3, v4, p1}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    .line 114
    iget p1, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    if-ne p1, v0, :cond_0

    .line 116
    iput-boolean v1, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    :goto_0
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
.method getBytes()[B
    .locals 5

    .line 299
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    new-array v0, v0, [B

    .line 300
    iget-object v1, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    invoke-interface {v1}, Ljxl/biff/drawing/EscherStream;->getData()[B

    move-result-object v1

    iget v2, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method getDrawingGroup()Ljxl/biff/drawing/EscherStream;
    .locals 1

    .line 172
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    return-object v0
.end method

.method getEscherStream()Ljxl/biff/drawing/EscherStream;
    .locals 1

    .line 289
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->escherStream:Ljxl/biff/drawing/EscherStream;

    return-object v0
.end method

.method getInstance()I
    .locals 1

    .line 207
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 152
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    return v0
.end method

.method getPos()I
    .locals 1

    .line 182
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->pos:I

    return v0
.end method

.method public getRecordId()I
    .locals 1

    .line 162
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    return v0
.end method

.method getStreamLength()I
    .locals 1

    .line 311
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->streamLength:I

    return v0
.end method

.method getType()Ljxl/biff/drawing/EscherRecordType;
    .locals 1

    .line 192
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    if-nez v0, :cond_0

    .line 194
    iget v0, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    invoke-static {v0}, Ljxl/biff/drawing/EscherRecordType;->getType(I)Ljxl/biff/drawing/EscherRecordType;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    .line 197
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/EscherRecordData;->type:Ljxl/biff/drawing/EscherRecordType;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    return v0
.end method

.method setContainer(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    return-void
.end method

.method setHeaderData([B)[B
    .locals 5

    .line 260
    array-length v0, p1

    const/16 v1, 0x8

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 261
    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget-boolean v1, p0, Ljxl/biff/drawing/EscherRecordData;->container:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    .line 265
    iput v1, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    .line 269
    :cond_0
    iget v1, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    const/4 v2, 0x4

    shl-int/2addr v1, v2

    .line 270
    iget v4, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    or-int/2addr v1, v4

    .line 271
    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 274
    iget v1, p0, Ljxl/biff/drawing/EscherRecordData;->recordId:I

    const/4 v3, 0x2

    invoke-static {v1, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 277
    array-length p1, p1

    invoke-static {p1, v0, v2}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-object v0
.end method

.method setInstance(I)V
    .locals 0

    .line 228
    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->instance:I

    return-void
.end method

.method setLength(I)V
    .locals 0

    .line 238
    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->length:I

    return-void
.end method

.method setVersion(I)V
    .locals 0

    .line 248
    iput p1, p0, Ljxl/biff/drawing/EscherRecordData;->version:I

    return-void
.end method
