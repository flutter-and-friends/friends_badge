.class Ljxl/biff/drawing/Dgg;
.super Ljxl/biff/drawing/EscherAtom;
.source "Dgg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/Dgg$Cluster;
    }
.end annotation


# static fields
.field static synthetic class$jxl$biff$drawing$Dgg:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private clusters:Ljava/util/ArrayList;

.field private data:[B

.field private drawingsSaved:I

.field private maxShapeId:I

.field private numClusters:I

.field private shapesSaved:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget-object v0, Ljxl/biff/drawing/Dgg;->class$jxl$biff$drawing$Dgg:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.Dgg"

    invoke-static {v0}, Ljxl/biff/drawing/Dgg;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Dgg;->class$jxl$biff$drawing$Dgg:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Dgg;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 134
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->DGG:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    .line 135
    iput p1, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    .line 136
    iput p2, p0, Ljxl/biff/drawing/Dgg;->drawingsSaved:I

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/EscherRecordData;)V
    .locals 6

    .line 103
    invoke-direct {p0, p1}, Ljxl/biff/drawing/EscherAtom;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {p0}, Ljxl/biff/drawing/Dgg;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 106
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    invoke-static {v1, v2, v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    iput v1, p0, Ljxl/biff/drawing/Dgg;->maxShapeId:I

    const/4 v1, 0x4

    .line 108
    aget-byte v2, p1, v1

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    invoke-static {v2, v3, v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    iput v2, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    const/16 v2, 0x8

    .line 110
    aget-byte v2, p1, v2

    const/16 v3, 0x9

    aget-byte v3, p1, v3

    const/16 v4, 0xa

    aget-byte v4, p1, v4

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    invoke-static {v2, v3, v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    iput v2, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    const/16 v2, 0xc

    .line 112
    aget-byte v2, p1, v2

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    const/16 v4, 0xe

    aget-byte v4, p1, v4

    const/16 v5, 0xf

    aget-byte v5, p1, v5

    invoke-static {v2, v3, v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v2

    iput v2, p0, Ljxl/biff/drawing/Dgg;->drawingsSaved:I

    const/16 v2, 0x10

    .line 116
    :goto_0
    iget v3, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    if-ge v0, v3, :cond_0

    .line 118
    aget-byte v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    invoke-static {v3, v4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    add-int/lit8 v4, v2, 0x2

    .line 119
    aget-byte v4, p1, v4

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, p1, v5

    invoke-static {v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    .line 120
    new-instance v5, Ljxl/biff/drawing/Dgg$Cluster;

    invoke-direct {v5, v3, v4}, Ljxl/biff/drawing/Dgg$Cluster;-><init>(II)V

    .line 121
    iget-object v3, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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
.method addCluster(II)V
    .locals 1

    .line 148
    new-instance v0, Ljxl/biff/drawing/Dgg$Cluster;

    invoke-direct {v0, p1, p2}, Ljxl/biff/drawing/Dgg$Cluster;-><init>(II)V

    .line 149
    iget-object p1, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getCluster(I)Ljxl/biff/drawing/Dgg$Cluster;
    .locals 1

    .line 215
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/drawing/Dgg$Cluster;

    return-object p1
.end method

.method getData()[B
    .locals 6

    .line 159
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    .line 160
    iget v0, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    const/4 v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    const/16 v2, 0x10

    add-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/Dgg;->data:[B

    .line 163
    iget v0, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    add-int/lit16 v0, v0, 0x400

    iget-object v3, p0, Ljxl/biff/drawing/Dgg;->data:[B

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 166
    iget v0, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    iget-object v3, p0, Ljxl/biff/drawing/Dgg;->data:[B

    invoke-static {v0, v3, v1}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 169
    iget v0, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    iget-object v3, p0, Ljxl/biff/drawing/Dgg;->data:[B

    const/16 v5, 0x8

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 173
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->data:[B

    const/4 v3, 0x1

    const/16 v5, 0xc

    invoke-static {v3, v0, v5}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 176
    :goto_0
    iget v0, p0, Ljxl/biff/drawing/Dgg;->numClusters:I

    if-ge v4, v0, :cond_0

    .line 178
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->clusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/drawing/Dgg$Cluster;

    .line 179
    iget v3, v0, Ljxl/biff/drawing/Dgg$Cluster;->drawingGroupId:I

    iget-object v5, p0, Ljxl/biff/drawing/Dgg;->data:[B

    invoke-static {v3, v5, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 180
    iget v0, v0, Ljxl/biff/drawing/Dgg$Cluster;->shapeIdsUsed:I

    iget-object v3, p0, Ljxl/biff/drawing/Dgg;->data:[B

    add-int/lit8 v5, v2, 0x2

    invoke-static {v0, v3, v5}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    add-int/2addr v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Dgg;->data:[B

    invoke-virtual {p0, v0}, Ljxl/biff/drawing/Dgg;->setHeaderData([B)[B

    move-result-object v0

    return-object v0
.end method

.method getDrawingsSaved()I
    .locals 1

    .line 204
    iget v0, p0, Ljxl/biff/drawing/Dgg;->drawingsSaved:I

    return v0
.end method

.method getShapesSaved()I
    .locals 1

    .line 194
    iget v0, p0, Ljxl/biff/drawing/Dgg;->shapesSaved:I

    return v0
.end method
