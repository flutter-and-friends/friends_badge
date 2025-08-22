.class public Ljxl/biff/drawing/SheetDrawingWriter;
.super Ljava/lang/Object;
.source "SheetDrawingWriter.java"


# static fields
.field static synthetic class$jxl$biff$drawing$SheetDrawingWriter:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private charts:[Ljxl/biff/drawing/Chart;

.field private drawings:Ljava/util/ArrayList;

.field private drawingsModified:Z

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Ljxl/biff/drawing/SheetDrawingWriter;->class$jxl$biff$drawing$SheetDrawingWriter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.SheetDrawingWriter"

    invoke-static {v0}, Ljxl/biff/drawing/SheetDrawingWriter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/SheetDrawingWriter;->class$jxl$biff$drawing$SheetDrawingWriter:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/SheetDrawingWriter;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/WorkbookSettings;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    new-array p1, p1, [Ljxl/biff/drawing/Chart;

    .line 70
    iput-object p1, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 41
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

.method private writeUnmodified(Ljxl/write/biff/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v0, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/drawing/DrawingGroupObject;

    .line 311
    invoke-interface {v1}, Ljxl/biff/drawing/DrawingGroupObject;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 312
    invoke-interface {v1, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/drawing/DrawingGroupObject;

    .line 318
    invoke-interface {v1, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeTailRecords(Ljxl/write/biff/File;)V

    goto :goto_1

    :cond_2
    return-void

    .line 322
    :cond_3
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v0, v0

    if-eqz v0, :cond_7

    .line 326
    :goto_2
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 328
    aget-object v0, v0, v1

    .line 329
    invoke-virtual {v0}, Ljxl/biff/drawing/Chart;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 331
    invoke-virtual {v0}, Ljxl/biff/drawing/Chart;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 334
    :cond_4
    invoke-virtual {v0}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 336
    invoke-virtual {v0}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 339
    :cond_5
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 349
    :cond_7
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 351
    iget-object v2, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v3, v2

    add-int/2addr v3, v0

    new-array v3, v3, [Ljxl/biff/drawing/EscherContainer;

    .line 353
    array-length v2, v2

    add-int/2addr v2, v0

    new-array v2, v2, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x1

    if-ge v4, v0, :cond_a

    .line 357
    iget-object v7, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/biff/drawing/DrawingGroupObject;

    .line 358
    invoke-interface {v7}, Ljxl/biff/drawing/DrawingGroupObject;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v8

    aput-object v8, v3, v4

    if-lez v4, :cond_8

    .line 362
    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljxl/biff/drawing/EscherContainer;->getLength()I

    move-result v8

    add-int/2addr v5, v8

    .line 365
    :cond_8
    invoke-interface {v7}, Ljxl/biff/drawing/DrawingGroupObject;->isFormObject()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 367
    aput-boolean v6, v2, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    .line 371
    :goto_4
    iget-object v7, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v8, v7

    if-ge v4, v8, :cond_b

    add-int v8, v4, v0

    .line 373
    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljxl/biff/drawing/Chart;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v7

    aput-object v7, v3, v8

    .line 374
    aget-object v7, v3, v8

    invoke-virtual {v7}, Ljxl/biff/drawing/EscherContainer;->getLength()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 378
    :cond_b
    new-instance v4, Ljxl/biff/drawing/DgContainer;

    invoke-direct {v4}, Ljxl/biff/drawing/DgContainer;-><init>()V

    .line 379
    new-instance v7, Ljxl/biff/drawing/Dg;

    iget-object v8, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v8, v8

    add-int/2addr v8, v0

    invoke-direct {v7, v8}, Ljxl/biff/drawing/Dg;-><init>(I)V

    .line 380
    invoke-virtual {v4, v7}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 382
    new-instance v7, Ljxl/biff/drawing/SpgrContainer;

    invoke-direct {v7}, Ljxl/biff/drawing/SpgrContainer;-><init>()V

    .line 384
    new-instance v8, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v8}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 385
    new-instance v9, Ljxl/biff/drawing/Spgr;

    invoke-direct {v9}, Ljxl/biff/drawing/Spgr;-><init>()V

    .line 386
    invoke-virtual {v8, v9}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 387
    new-instance v9, Ljxl/biff/drawing/Sp;

    sget-object v10, Ljxl/biff/drawing/ShapeType;->MIN:Ljxl/biff/drawing/ShapeType;

    const/16 v11, 0x400

    const/4 v12, 0x5

    invoke-direct {v9, v10, v11, v12}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 388
    invoke-virtual {v8, v9}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 389
    invoke-virtual {v7, v8}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 391
    aget-object v8, v3, v1

    invoke-virtual {v7, v8}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 393
    invoke-virtual {v4, v7}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 395
    invoke-virtual {v4}, Ljxl/biff/drawing/DgContainer;->getData()[B

    move-result-object v4

    const/4 v7, 0x4

    .line 398
    aget-byte v8, v4, v7

    aget-byte v9, v4, v12

    const/4 v10, 0x6

    aget-byte v10, v4, v10

    const/4 v11, 0x7

    aget-byte v11, v4, v11

    invoke-static {v8, v9, v10, v11}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v8

    add-int/2addr v8, v5

    .line 402
    invoke-static {v8, v4, v7}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    const/16 v7, 0x1c

    .line 405
    aget-byte v8, v4, v7

    const/16 v9, 0x1d

    aget-byte v9, v4, v9

    const/16 v10, 0x1e

    aget-byte v10, v4, v10

    const/16 v11, 0x1f

    aget-byte v11, v4, v11

    invoke-static {v8, v9, v10, v11}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v8

    add-int/2addr v8, v5

    .line 409
    invoke-static {v8, v4, v7}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    .line 415
    aget-boolean v5, v2, v1

    if-ne v5, v6, :cond_c

    .line 417
    array-length v5, v4

    add-int/lit8 v5, v5, -0x8

    new-array v5, v5, [B

    .line 418
    array-length v7, v5

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    .line 423
    :cond_c
    new-instance v5, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v5, v4}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 424
    invoke-virtual {p1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 426
    iget-object v4, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljxl/biff/drawing/DrawingGroupObject;

    .line 427
    invoke-interface {v4, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    const/4 v4, 0x1

    .line 430
    :goto_5
    array-length v5, v3

    if-ge v4, v5, :cond_f

    .line 432
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljxl/biff/drawing/EscherContainer;->getBytes()[B

    move-result-object v5

    .line 433
    aget-object v7, v3, v4

    invoke-virtual {v7, v5}, Ljxl/biff/drawing/EscherContainer;->setHeaderData([B)[B

    move-result-object v5

    .line 437
    aget-boolean v7, v2, v4

    if-ne v7, v6, :cond_d

    .line 439
    array-length v7, v5

    add-int/lit8 v7, v7, -0x8

    new-array v7, v7, [B

    .line 440
    array-length v8, v7

    invoke-static {v5, v1, v7, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v7

    .line 444
    :cond_d
    new-instance v7, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v7, v5}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 445
    invoke-virtual {p1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    if-ge v4, v0, :cond_e

    .line 449
    iget-object v5, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/drawing/DrawingGroupObject;

    .line 450
    invoke-interface {v5, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    goto :goto_6

    .line 454
    :cond_e
    iget-object v5, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    sub-int v7, v4, v0

    aget-object v5, v5, v7

    .line 455
    invoke-virtual {v5}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v7

    .line 456
    invoke-virtual {p1, v7}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 457
    invoke-virtual {p1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 462
    :cond_f
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/drawing/DrawingGroupObject;

    .line 465
    invoke-interface {v1, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeTailRecords(Ljxl/write/biff/File;)V

    goto :goto_7

    :cond_10
    return-void
.end method


# virtual methods
.method public getCharts()[Ljxl/biff/drawing/Chart;
    .locals 1

    .line 486
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    return-object v0
.end method

.method public setCharts([Ljxl/biff/drawing/Chart;)V
    .locals 0

    .line 476
    iput-object p1, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    return-void
.end method

.method public setDrawings(Ljava/util/ArrayList;Z)V
    .locals 0

    .line 81
    iput-object p1, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    .line 82
    iput-boolean p2, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawingsModified:Z

    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v0, v0

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    iget-boolean v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawingsModified:Z

    .line 102
    iget-object v1, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 104
    iget-object v2, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/DrawingGroupObject;

    .line 107
    invoke-interface {v3}, Ljxl/biff/drawing/DrawingGroupObject;->getOrigin()Ljxl/biff/drawing/Origin;

    move-result-object v3

    sget-object v5, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v3, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    if-lez v1, :cond_3

    if-nez v0, :cond_3

    .line 117
    iget-object v3, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/DrawingGroupObject;

    .line 118
    invoke-interface {v3}, Ljxl/biff/drawing/DrawingGroupObject;->isFirst()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v1, :cond_4

    .line 126
    iget-object v3, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v5, v3

    if-ne v5, v4, :cond_4

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljxl/biff/drawing/Chart;->getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_5

    .line 137
    invoke-direct {p0, p1}, Ljxl/biff/drawing/SheetDrawingWriter;->writeUnmodified(Ljxl/write/biff/File;)V

    return-void

    .line 141
    :cond_5
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v0, v0

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    .line 149
    iget-object v7, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljxl/biff/drawing/DrawingGroupObject;

    .line 151
    invoke-interface {v7}, Ljxl/biff/drawing/DrawingGroupObject;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 155
    invoke-virtual {v7}, Ljxl/biff/drawing/EscherContainer;->getData()[B

    move-result-object v8

    .line 156
    aput-object v8, v0, v3

    if-nez v3, :cond_6

    move-object v6, v7

    goto :goto_2

    .line 164
    :cond_6
    array-length v7, v8

    add-int/2addr v5, v7

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    const/4 v3, 0x0

    .line 170
    :goto_3
    iget-object v7, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v8, v7

    if-ge v3, v8, :cond_a

    .line 172
    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljxl/biff/drawing/Chart;->getSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v7

    .line 173
    invoke-virtual {v7}, Ljxl/biff/drawing/EscherContainer;->getBytes()[B

    move-result-object v8

    .line 174
    invoke-virtual {v7, v8}, Ljxl/biff/drawing/EscherContainer;->setHeaderData([B)[B

    move-result-object v8

    add-int v9, v3, v1

    .line 175
    aput-object v8, v0, v9

    if-nez v3, :cond_9

    if-nez v1, :cond_9

    move-object v6, v7

    goto :goto_4

    .line 183
    :cond_9
    array-length v7, v8

    add-int/2addr v5, v7

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 188
    :cond_a
    new-instance v3, Ljxl/biff/drawing/DgContainer;

    invoke-direct {v3}, Ljxl/biff/drawing/DgContainer;-><init>()V

    .line 189
    new-instance v7, Ljxl/biff/drawing/Dg;

    iget-object v8, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    array-length v8, v8

    add-int/2addr v8, v1

    invoke-direct {v7, v8}, Ljxl/biff/drawing/Dg;-><init>(I)V

    .line 190
    invoke-virtual {v3, v7}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 192
    new-instance v7, Ljxl/biff/drawing/SpgrContainer;

    invoke-direct {v7}, Ljxl/biff/drawing/SpgrContainer;-><init>()V

    .line 194
    new-instance v8, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v8}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 195
    new-instance v9, Ljxl/biff/drawing/Spgr;

    invoke-direct {v9}, Ljxl/biff/drawing/Spgr;-><init>()V

    .line 196
    invoke-virtual {v8, v9}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 197
    new-instance v9, Ljxl/biff/drawing/Sp;

    sget-object v10, Ljxl/biff/drawing/ShapeType;->MIN:Ljxl/biff/drawing/ShapeType;

    const/16 v11, 0x400

    const/4 v12, 0x5

    invoke-direct {v9, v10, v11, v12}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 198
    invoke-virtual {v8, v9}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 199
    invoke-virtual {v7, v8}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 201
    invoke-virtual {v7, v6}, Ljxl/biff/drawing/SpgrContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 203
    invoke-virtual {v3, v7}, Ljxl/biff/drawing/DgContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 205
    invoke-virtual {v3}, Ljxl/biff/drawing/DgContainer;->getData()[B

    move-result-object v3

    const/4 v6, 0x4

    .line 208
    aget-byte v7, v3, v6

    aget-byte v8, v3, v12

    const/4 v9, 0x6

    aget-byte v9, v3, v9

    const/4 v10, 0x7

    aget-byte v10, v3, v10

    invoke-static {v7, v8, v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v7

    add-int/2addr v7, v5

    .line 212
    invoke-static {v7, v3, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    const/16 v6, 0x1c

    .line 215
    aget-byte v7, v3, v6

    const/16 v8, 0x1d

    aget-byte v8, v3, v8

    const/16 v9, 0x1e

    aget-byte v9, v3, v9

    const/16 v10, 0x1f

    aget-byte v10, v3, v10

    invoke-static {v7, v8, v9, v10}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v7

    add-int/2addr v7, v5

    .line 219
    invoke-static {v7, v3, v6}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    if-lez v1, :cond_b

    .line 226
    iget-object v5, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/drawing/DrawingGroupObject;

    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->isFormObject()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 229
    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    new-array v5, v5, [B

    .line 230
    array-length v6, v5

    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    .line 234
    :cond_b
    new-instance v5, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 235
    invoke-virtual {p1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    if-lez v1, :cond_c

    .line 239
    iget-object v3, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/DrawingGroupObject;

    .line 240
    invoke-interface {v3, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    goto :goto_5

    .line 245
    :cond_c
    iget-object v3, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    aget-object v3, v3, v2

    .line 246
    invoke-virtual {v3}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v5

    .line 247
    invoke-virtual {p1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 248
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 252
    :goto_5
    array-length v3, v0

    if-ge v4, v3, :cond_f

    .line 254
    aget-object v3, v0, v4

    check-cast v3, [B

    if-ge v4, v1, :cond_d

    .line 258
    iget-object v5, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/drawing/DrawingGroupObject;

    invoke-interface {v5}, Ljxl/biff/drawing/DrawingGroupObject;->isFormObject()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 261
    array-length v5, v3

    add-int/lit8 v5, v5, -0x8

    new-array v5, v5, [B

    .line 262
    array-length v6, v5

    invoke-static {v3, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v5

    .line 266
    :cond_d
    new-instance v5, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-direct {v5, v3}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 267
    invoke-virtual {p1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    if-ge v4, v1, :cond_e

    .line 272
    iget-object v3, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxl/biff/drawing/DrawingGroupObject;

    .line 273
    invoke-interface {v3, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeAdditionalRecords(Ljxl/write/biff/File;)V

    goto :goto_6

    .line 277
    :cond_e
    iget-object v3, p0, Ljxl/biff/drawing/SheetDrawingWriter;->charts:[Ljxl/biff/drawing/Chart;

    sub-int v5, v4, v1

    aget-object v3, v3, v5

    .line 278
    invoke-virtual {v3}, Ljxl/biff/drawing/Chart;->getObjRecord()Ljxl/biff/drawing/ObjRecord;

    move-result-object v5

    .line 279
    invoke-virtual {p1, v5}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 280
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 285
    :cond_f
    iget-object v0, p0, Ljxl/biff/drawing/SheetDrawingWriter;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/drawing/DrawingGroupObject;

    .line 288
    invoke-interface {v1, p1}, Ljxl/biff/drawing/DrawingGroupObject;->writeTailRecords(Ljxl/write/biff/File;)V

    goto :goto_7

    :cond_10
    return-void
.end method
