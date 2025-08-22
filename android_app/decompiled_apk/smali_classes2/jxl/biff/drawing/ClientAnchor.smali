.class Ljxl/biff/drawing/ClientAnchor;
.super Ljxl/biff/drawing/EscherAtom;
.source "ClientAnchor.java"


# static fields
.field static synthetic class$jxl$biff$drawing$ClientAnchor:Ljava/lang/Class;

.field private static final logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private properties:I

.field private x1:D

.field private x2:D

.field private y1:D

.field private y2:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Ljxl/biff/drawing/ClientAnchor;->class$jxl$biff$drawing$ClientAnchor:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.ClientAnchor"

    invoke-static {v0}, Ljxl/biff/drawing/ClientAnchor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ClientAnchor;->class$jxl$biff$drawing$ClientAnchor:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/ClientAnchor;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(DDDDI)V
    .locals 1

    .line 115
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 116
    iput-wide p1, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    .line 117
    iput-wide p3, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    .line 118
    iput-wide p5, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    .line 119
    iput-wide p7, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    .line 120
    iput p9, p0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 8

    .line 73
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 74
    invoke-virtual {p0}, Ljxl/biff/drawing/ClientAnchor;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 77
    aget-byte v0, p1, v0

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    const/4 v0, 0x2

    .line 80
    aget-byte v0, p1, v0

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/4 v1, 0x4

    .line 81
    aget-byte v1, p1, v1

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    .line 83
    iput-wide v2, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    const/4 v0, 0x6

    .line 86
    aget-byte v0, p1, v0

    const/4 v1, 0x7

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/16 v1, 0x8

    .line 87
    aget-byte v1, p1, v1

    const/16 v2, 0x9

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    div-double/2addr v0, v6

    add-double/2addr v2, v0

    .line 89
    iput-wide v2, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    const/16 v0, 0xa

    .line 92
    aget-byte v0, p1, v0

    const/16 v1, 0xb

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/16 v1, 0xc

    .line 93
    aget-byte v1, p1, v1

    const/16 v2, 0xd

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    .line 95
    iput-wide v2, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    const/16 v0, 0xe

    .line 98
    aget-byte v0, p1, v0

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/16 v1, 0x10

    .line 99
    aget-byte v1, p1, v1

    const/16 v2, 0x11

    aget-byte p1, p1, v2

    invoke-static {v1, p1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p1

    int-to-double v0, v0

    int-to-double v2, p1

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    .line 101
    iput-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

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
.method getData()[B
    .locals 8

    const/16 v0, 0x12

    new-array v0, v0, [B

    .line 130
    iput-object v0, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    .line 131
    iget v0, p0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 134
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    double-to-int v0, v0

    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 137
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    double-to-int v2, v0

    int-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 138
    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/4 v4, 0x4

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 141
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    double-to-int v0, v0

    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/4 v4, 0x6

    invoke-static {v0, v1, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 144
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    double-to-int v4, v0

    int-to-double v4, v4

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v4

    double-to-int v0, v0

    .line 145
    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v6, 0x8

    invoke-static {v0, v1, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 148
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    double-to-int v0, v0

    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v6, 0xa

    invoke-static {v0, v1, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 151
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    double-to-int v6, v0

    int-to-double v6, v6

    sub-double/2addr v0, v6

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 152
    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 155
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    double-to-int v0, v0

    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 158
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    double-to-int v2, v0

    int-to-double v2, v2

    sub-double/2addr v0, v2

    mul-double v0, v0, v4

    double-to-int v0, v0

    .line 159
    iget-object v1, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 161
    iget-object v0, p0, Ljxl/biff/drawing/ClientAnchor;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/ClientAnchor;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method getProperties()I
    .locals 1

    .line 209
    iget v0, p0, Ljxl/biff/drawing/ClientAnchor;->properties:I

    return v0
.end method

.method getX1()D
    .locals 2

    .line 171
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x1:D

    return-wide v0
.end method

.method getX2()D
    .locals 2

    .line 191
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->x2:D

    return-wide v0
.end method

.method getY1()D
    .locals 2

    .line 181
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y1:D

    return-wide v0
.end method

.method getY2()D
    .locals 2

    .line 201
    iget-wide v0, p0, Ljxl/biff/drawing/ClientAnchor;->y2:D

    return-wide v0
.end method
