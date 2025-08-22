.class public Ljxl/biff/drawing/DrawingGroup;
.super Ljava/lang/Object;
.source "DrawingGroup.java"

# interfaces
.implements Ljxl/biff/drawing/EscherStream;


# static fields
.field static synthetic class$jxl$biff$drawing$DrawingGroup:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

.field private drawingData:[B

.field private drawingGroupId:I

.field private drawings:Ljava/util/ArrayList;

.field private drawingsOmitted:Z

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private imageFiles:Ljava/util/HashMap;

.field private initialized:Z

.field private maxObjectId:I

.field private maxShapeId:I

.field private numBlips:I

.field private numCharts:I

.field private origin:Ljxl/biff/drawing/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Ljxl/biff/drawing/DrawingGroup;->class$jxl$biff$drawing$DrawingGroup:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.DrawingGroup"

    invoke-static {v0}, Ljxl/biff/drawing/DrawingGroup;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/DrawingGroup;->class$jxl$biff$drawing$DrawingGroup:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/DrawingGroup;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 138
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    .line 139
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    .line 140
    iget-boolean v0, p1, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    .line 141
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 142
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    .line 143
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    .line 144
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 145
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    .line 146
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    .line 147
    iget-boolean v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    .line 148
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 149
    iget-object v0, p1, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    .line 150
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 151
    iget p1, p1, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/Origin;)V
    .locals 3

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 119
    sget-object v0, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    .line 121
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    .line 122
    iput-boolean v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    .line 123
    iput v1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    const/16 p1, 0x400

    .line 124
    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    return-void
.end method

.method private addData([B)V
    .locals 4

    .line 190
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 193
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 198
    :cond_0
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 199
    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    array-length v0, v0

    array-length v3, p1

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iput-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 42
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

.method private getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;
    .locals 4

    .line 370
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    if-nez v0, :cond_1

    .line 372
    iget-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->initialize()V

    .line 377
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 378
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v1

    sget-object v3, Ljxl/biff/drawing/EscherRecordType;->BSTORE_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v1, v3, :cond_1

    .line 381
    aget-object v0, v0, v2

    check-cast v0, Ljxl/biff/drawing/BStoreContainer;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    .line 385
    :cond_1
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->bstoreContainer:Ljxl/biff/drawing/BStoreContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 4

    .line 351
    new-instance v0, Ljxl/biff/drawing/EscherRecordData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljxl/biff/drawing/EscherRecordData;-><init>(Ljxl/biff/drawing/EscherStream;I)V

    .line 353
    invoke-virtual {v0}, Ljxl/biff/drawing/EscherRecordData;->isContainer()Z

    move-result v2

    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 355
    new-instance v2, Ljxl/biff/drawing/EscherContainer;

    invoke-direct {v2, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordData;)V

    iput-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    .line 357
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getLength()I

    move-result v0

    iget-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 358
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v0

    sget-object v2, Ljxl/biff/drawing/EscherRecordType;->DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 360
    iput-boolean v3, p0, Ljxl/biff/drawing/DrawingGroup;->initialized:Z

    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/drawing/Chart;)V
    .locals 0

    .line 223
    iget p1, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    return-void
.end method

.method public add(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 5

    .line 233
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 235
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 236
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    .line 237
    iget-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v1}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Ljxl/biff/drawing/Dgg;

    .line 238
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/Dgg;->getCluster(I)Ljxl/biff/drawing/Dgg$Cluster;

    move-result-object v1

    iget v1, v1, Ljxl/biff/drawing/Dgg$Cluster;->drawingGroupId:I

    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v2

    iput v1, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    if-eqz v0, :cond_2

    .line 243
    iget v1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v0

    if-ne v1, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v3}, Lcommon/Assert;->verify(Z)V

    .line 247
    :cond_2
    instance-of v0, p1, Ljxl/biff/drawing/Drawing;

    if-nez v0, :cond_4

    .line 251
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 252
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 253
    invoke-interface {p1, p0}, Ljxl/biff/drawing/DrawingGroupObject;->setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V

    .line 254
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iget v1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v1, v2

    iget v2, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    invoke-interface {p1, v0, v1, v2}, Ljxl/biff/drawing/DrawingGroupObject;->setObjectId(III)V

    .line 255
    iget-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    if-le p1, v0, :cond_3

    .line 257
    sget-object p1, Ljxl/biff/drawing/DrawingGroup;->logger:Lcommon/Logger;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "drawings length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " exceeds the max object id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 264
    :cond_4
    move-object v0, p1

    check-cast v0, Ljxl/biff/drawing/Drawing;

    .line 267
    iget-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getImageFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/drawing/Drawing;

    if-nez p1, :cond_5

    .line 274
    iget p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    add-int/2addr p1, v2

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 275
    iget p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    add-int/2addr p1, v2

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    .line 276
    iget-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v0, p0}, Ljxl/biff/drawing/Drawing;->setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V

    .line 278
    iget p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iget v1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v1, v2

    iget v3, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    invoke-virtual {v0, p1, v1, v3}, Ljxl/biff/drawing/Drawing;->setObjectId(III)V

    .line 279
    iget p1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr p1, v2

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 280
    iget-object p1, p0, Ljxl/biff/drawing/DrawingGroup;->imageFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljxl/biff/drawing/Drawing;->getImageFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 287
    :cond_5
    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getReferenceCount()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljxl/biff/drawing/Drawing;->setReferenceCount(I)V

    .line 288
    invoke-virtual {v0, p0}, Ljxl/biff/drawing/Drawing;->setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V

    .line 289
    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getObjectId()I

    move-result v1

    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getBlipId()I

    move-result v2

    invoke-virtual {p1}, Ljxl/biff/drawing/Drawing;->getShapeId()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Ljxl/biff/drawing/Drawing;->setObjectId(III)V

    :goto_1
    return-void
.end method

.method public add(Ljxl/biff/drawing/MsoDrawingGroupRecord;)V
    .locals 0

    .line 169
    invoke-virtual {p1}, Ljxl/biff/drawing/MsoDrawingGroupRecord;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljxl/biff/drawing/DrawingGroup;->addData([B)V

    return-void
.end method

.method public add(Ljxl/read/biff/Record;)V
    .locals 0

    .line 180
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljxl/biff/drawing/DrawingGroup;->addData([B)V

    return-void
.end method

.method final addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 2

    .line 211
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getObjectId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 213
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getShapeId()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    return-void
.end method

.method public getData()[B
    .locals 1

    .line 395
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    return-object v0
.end method

.method getImageData(I)[B
    .locals 4

    .line 529
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 531
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 532
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v3, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 535
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    sub-int/2addr p1, v2

    .line 536
    aget-object p1, v0, p1

    check-cast p1, Ljxl/biff/drawing/BlipStoreEntry;

    .line 538
    invoke-virtual {p1}, Ljxl/biff/drawing/BlipStoreEntry;->getImageData()[B

    move-result-object p1

    return-object p1
.end method

.method final getNumberOfBlips()I
    .locals 1

    .line 517
    iget v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    return v0
.end method

.method public hasDrawingsOmitted()Z
    .locals 1

    .line 565
    iget-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    return v0
.end method

.method public remove(Ljxl/biff/drawing/DrawingGroupObject;)V
    .locals 6

    .line 304
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 311
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    .line 312
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getNumBlips()I

    move-result v0

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    .line 313
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->escherData:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljxl/biff/drawing/Dgg;

    .line 314
    invoke-virtual {v0, v2}, Ljxl/biff/drawing/Dgg;->getCluster(I)Ljxl/biff/drawing/Dgg$Cluster;

    move-result-object v0

    iget v0, v0, Ljxl/biff/drawing/Dgg$Cluster;->drawingGroupId:I

    iget v1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    .line 318
    :cond_1
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 319
    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    check-cast v0, Ljxl/biff/drawing/BlipStoreEntry;

    .line 321
    invoke-virtual {v0}, Ljxl/biff/drawing/BlipStoreEntry;->dereference()V

    .line 323
    invoke-virtual {v0}, Ljxl/biff/drawing/BlipStoreEntry;->getReferenceCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 326
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/BStoreContainer;->remove(Ljxl/biff/drawing/EscherRecord;)V

    .line 329
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/drawing/DrawingGroupObject;

    .line 333
    invoke-interface {v1}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v3

    invoke-interface {p1}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 335
    invoke-interface {v1}, Ljxl/biff/drawing/DrawingGroupObject;->getObjectId()I

    move-result v3

    invoke-interface {v1}, Ljxl/biff/drawing/DrawingGroupObject;->getBlipId()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v1}, Ljxl/biff/drawing/DrawingGroupObject;->getShapeId()I

    move-result v5

    invoke-interface {v1, v3, v4, v5}, Ljxl/biff/drawing/DrawingGroupObject;->setObjectId(III)V

    goto :goto_0

    .line 341
    :cond_3
    iget p1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    sub-int/2addr p1, v2

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    :cond_4
    return-void
.end method

.method public setDrawingsOmitted(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;)V
    .locals 0

    const/4 p1, 0x1

    .line 550
    iput-boolean p1, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    if-eqz p2, :cond_0

    .line 554
    iget p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    invoke-virtual {p2}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    :cond_0
    return-void
.end method

.method public updateData(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 1

    .line 580
    iget-boolean v0, p1, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    iput-boolean v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingsOmitted:Z

    .line 581
    iget v0, p1, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    iput v0, p0, Ljxl/biff/drawing/DrawingGroup;->maxObjectId:I

    .line 582
    iget p1, p1, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    iput p1, p0, Ljxl/biff/drawing/DrawingGroup;->maxShapeId:I

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    .line 408
    new-instance v0, Ljxl/biff/drawing/DggContainer;

    invoke-direct {v0}, Ljxl/biff/drawing/DggContainer;-><init>()V

    .line 410
    new-instance v1, Ljxl/biff/drawing/Dgg;

    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    invoke-direct {v1, v5, v4}, Ljxl/biff/drawing/Dgg;-><init>(II)V

    .line 412
    invoke-virtual {v1, v2, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 413
    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v4, v2

    invoke-virtual {v1, v4, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 415
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 418
    new-instance v1, Ljxl/biff/drawing/BStoreContainer;

    invoke-direct {v1}, Ljxl/biff/drawing/BStoreContainer;-><init>()V

    .line 421
    iget-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 424
    instance-of v5, v4, Ljxl/biff/drawing/Drawing;

    if-eqz v5, :cond_0

    .line 426
    check-cast v4, Ljxl/biff/drawing/Drawing;

    .line 427
    new-instance v5, Ljxl/biff/drawing/BlipStoreEntry;

    invoke-direct {v5, v4}, Ljxl/biff/drawing/BlipStoreEntry;-><init>(Ljxl/biff/drawing/Drawing;)V

    .line 429
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/BStoreContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    .line 435
    invoke-virtual {v1, v3}, Ljxl/biff/drawing/BStoreContainer;->setNumBlips(I)V

    .line 436
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 439
    :cond_2
    new-instance v1, Ljxl/biff/drawing/Opt;

    invoke-direct {v1}, Ljxl/biff/drawing/Opt;-><init>()V

    .line 441
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 443
    new-instance v1, Ljxl/biff/drawing/SplitMenuColors;

    invoke-direct {v1}, Ljxl/biff/drawing/SplitMenuColors;-><init>()V

    .line 444
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 446
    invoke-virtual {v0}, Ljxl/biff/drawing/DggContainer;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    goto/16 :goto_3

    .line 448
    :cond_3
    iget-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_7

    .line 450
    new-instance v0, Ljxl/biff/drawing/DggContainer;

    invoke-direct {v0}, Ljxl/biff/drawing/DggContainer;-><init>()V

    .line 452
    new-instance v1, Ljxl/biff/drawing/Dgg;

    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->numCharts:I

    add-int/2addr v5, v4

    add-int/2addr v5, v2

    invoke-direct {v1, v5, v4}, Ljxl/biff/drawing/Dgg;-><init>(II)V

    .line 454
    invoke-virtual {v1, v2, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 455
    iget v4, p0, Ljxl/biff/drawing/DrawingGroup;->drawingGroupId:I

    iget v5, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-virtual {v1, v4, v3}, Ljxl/biff/drawing/Dgg;->addCluster(II)V

    .line 457
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 459
    new-instance v1, Ljxl/biff/drawing/BStoreContainer;

    invoke-direct {v1}, Ljxl/biff/drawing/BStoreContainer;-><init>()V

    .line 460
    iget v2, p0, Ljxl/biff/drawing/DrawingGroup;->numBlips:I

    invoke-virtual {v1, v2}, Ljxl/biff/drawing/BStoreContainer;->setNumBlips(I)V

    .line 463
    invoke-direct {p0}, Ljxl/biff/drawing/DrawingGroup;->getBStoreContainer()Ljxl/biff/drawing/BStoreContainer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 467
    invoke-virtual {v2}, Ljxl/biff/drawing/BStoreContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v2

    const/4 v4, 0x0

    .line 468
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 470
    aget-object v5, v2, v4

    check-cast v5, Ljxl/biff/drawing/BlipStoreEntry;

    .line 471
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/BStoreContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 476
    :cond_4
    iget-object v2, p0, Ljxl/biff/drawing/DrawingGroup;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 478
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/drawing/DrawingGroupObject;

    .line 479
    instance-of v5, v4, Ljxl/biff/drawing/Drawing;

    if-eqz v5, :cond_5

    .line 481
    check-cast v4, Ljxl/biff/drawing/Drawing;

    .line 482
    invoke-virtual {v4}, Ljxl/biff/drawing/Drawing;->getOrigin()Ljxl/biff/drawing/Origin;

    move-result-object v5

    sget-object v6, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    if-ne v5, v6, :cond_5

    .line 484
    new-instance v5, Ljxl/biff/drawing/BlipStoreEntry;

    invoke-direct {v5, v4}, Ljxl/biff/drawing/BlipStoreEntry;-><init>(Ljxl/biff/drawing/Drawing;)V

    .line 485
    invoke-virtual {v1, v5}, Ljxl/biff/drawing/BStoreContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    goto :goto_2

    .line 490
    :cond_6
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 492
    new-instance v1, Ljxl/biff/drawing/Opt;

    invoke-direct {v1}, Ljxl/biff/drawing/Opt;-><init>()V

    const/16 v2, 0xbf

    const v4, 0x80008

    .line 494
    invoke-virtual {v1, v2, v3, v3, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v2, 0x181

    const v4, 0x8000009

    .line 495
    invoke-virtual {v1, v2, v3, v3, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v2, 0x1c0

    const v4, 0x8000040

    .line 496
    invoke-virtual {v1, v2, v3, v3, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 498
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 500
    new-instance v1, Ljxl/biff/drawing/SplitMenuColors;

    invoke-direct {v1}, Ljxl/biff/drawing/SplitMenuColors;-><init>()V

    .line 501
    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DggContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 503
    invoke-virtual {v0}, Ljxl/biff/drawing/DggContainer;->getData()[B

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    .line 506
    :cond_7
    :goto_3
    new-instance v0, Ljxl/biff/drawing/MsoDrawingGroupRecord;

    iget-object v1, p0, Ljxl/biff/drawing/DrawingGroup;->drawingData:[B

    invoke-direct {v0, v1}, Ljxl/biff/drawing/MsoDrawingGroupRecord;-><init>([B)V

    .line 507
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method
