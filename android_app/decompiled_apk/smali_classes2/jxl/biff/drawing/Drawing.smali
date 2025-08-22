.class public Ljxl/biff/drawing/Drawing;
.super Ljava/lang/Object;
.source "Drawing.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;
.implements Ljxl/Image;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/drawing/Drawing$ImageAnchorProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT_SIZE:D = 10.0

.field public static MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field static synthetic class$jxl$biff$drawing$Drawing:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private blipId:I

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private height:D

.field private imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field private imageData:[B

.field private imageFile:Ljava/io/File;

.field private initialized:Z

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private pngReader:Ljxl/biff/drawing/PNGReader;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private shapeId:I

.field private sheet:Ljxl/Sheet;

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private x:D

.field private y:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget-object v0, Ljxl/biff/drawing/Drawing;->class$jxl$biff$drawing$Drawing:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.Drawing"

    invoke-static {v0}, Ljxl/biff/drawing/Drawing;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Drawing;->class$jxl$biff$drawing$Drawing:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    .line 205
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 207
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 209
    new-instance v0, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;-><init>(I)V

    sput-object v0, Ljxl/biff/drawing/Drawing;->NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    return-void
.end method

.method public constructor <init>(DDDDLjava/io/File;)V
    .locals 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 282
    iput-object p9, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    const/4 p9, 0x1

    .line 283
    iput-boolean p9, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 284
    sget-object v0, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 285
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 286
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 287
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 288
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 289
    iput p9, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    .line 290
    sget-object p1, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 291
    sget-object p1, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    return-void
.end method

.method public constructor <init>(DDDD[B)V
    .locals 1

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 309
    iput-object p9, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    const/4 p9, 0x1

    .line 310
    iput-boolean p9, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 311
    sget-object v0, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 312
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 313
    iput-wide p3, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 314
    iput-wide p5, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 315
    iput-wide p7, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 316
    iput p9, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    .line 317
    sget-object p1, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 318
    sget-object p1, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V
    .locals 3

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 255
    check-cast p1, Ljxl/biff/drawing/Drawing;

    .line 256
    iget-object v1, p1, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 257
    iget-object v1, p1, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 258
    iget-object v1, p1, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 259
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 260
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 261
    iget-object v0, p1, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 262
    iput-object p2, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 263
    iget p1, p1, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    iput p1, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    .line 264
    iget-object p1, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p1, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/Sheet;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 231
    iput-object p4, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 232
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 233
    iput-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 234
    iput-object p2, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 235
    iput-object p5, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    .line 236
    iput-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    .line 237
    sget-object p3, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object p3, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 238
    iget-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object p4, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {p4}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p4

    invoke-virtual {p3, p4}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 239
    iget-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p3}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    iput p3, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    .line 240
    iget-object p3, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p3, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 242
    :goto_0
    invoke-static {p4}, Lcommon/Assert;->verify(Z)V

    .line 244
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 45
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

.method private getHeightInPoints()D
    .locals 10

    .line 955
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 957
    sget-object v0, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    const-string v3, "calculating image height:  sheet is null"

    invoke-virtual {v0, v3}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    return-wide v1

    .line 962
    :cond_0
    iget-wide v3, p0, Ljxl/biff/drawing/Drawing;->y:D

    double-to-int v0, v3

    .line 963
    iget-wide v5, p0, Ljxl/biff/drawing/Drawing;->height:D

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 967
    iget-object v4, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v4, v0}, Ljxl/Sheet;->getRowView(I)Ljxl/CellView;

    move-result-object v4

    invoke-virtual {v4}, Ljxl/CellView;->getSize()I

    move-result v4

    .line 968
    iget-wide v5, p0, Ljxl/biff/drawing/Drawing;->y:D

    int-to-double v4, v4

    const/4 v6, 0x0

    if-eq v3, v0, :cond_1

    .line 976
    iget-object v7, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v7, v3}, Ljxl/Sheet;->getRowView(I)Ljxl/CellView;

    move-result-object v7

    invoke-virtual {v7}, Ljxl/CellView;->getSize()I

    move-result v7

    .line 977
    iget-wide v8, p0, Ljxl/biff/drawing/Drawing;->y:D

    iget-wide v8, p0, Ljxl/biff/drawing/Drawing;->height:D

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    sub-int v8, v3, v0

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_2

    .line 984
    iget-object v8, p0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    add-int/lit8 v9, v0, 0x1

    add-int/2addr v9, v6

    invoke-interface {v8, v9}, Ljxl/Sheet;->getRowView(I)Ljxl/CellView;

    move-result-object v8

    invoke-virtual {v8}, Ljxl/CellView;->getSize()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-double/2addr v1, v4

    int-to-double v3, v7

    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method private getPngReader()Ljxl/biff/drawing/PNGReader;
    .locals 2

    .line 1074
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->pngReader:Ljxl/biff/drawing/PNGReader;

    if-eqz v0, :cond_0

    return-object v0

    .line 1080
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1088
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getImageBytes()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1092
    :catch_0
    sget-object v0, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    const-string v1, "Could not read image file"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_1

    .line 1082
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getImageData()[B

    move-result-object v0

    .line 1097
    :goto_1
    new-instance v1, Ljxl/biff/drawing/PNGReader;

    invoke-direct {v1, v0}, Ljxl/biff/drawing/PNGReader;-><init>([B)V

    iput-object v1, p0, Ljxl/biff/drawing/Drawing;->pngReader:Ljxl/biff/drawing/PNGReader;

    .line 1098
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->pngReader:Ljxl/biff/drawing/PNGReader;

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->read()V

    .line 1099
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->pngReader:Ljxl/biff/drawing/PNGReader;

    return-object v0
.end method

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 1

    .line 732
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 734
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 737
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private getWidthInPoints()D
    .locals 17

    move-object/from16 v0, p0

    .line 891
    iget-object v1, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 893
    sget-object v1, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    const-string v4, "calculating image width:  sheet is null"

    invoke-virtual {v1, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    return-wide v2

    .line 898
    :cond_0
    iget-wide v4, v0, Ljxl/biff/drawing/Drawing;->x:D

    double-to-int v1, v4

    .line 899
    iget-wide v6, v0, Ljxl/biff/drawing/Drawing;->width:D

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    .line 908
    iget-object v5, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v5, v1}, Ljxl/Sheet;->getColumnView(I)Ljxl/CellView;

    move-result-object v5

    .line 909
    invoke-virtual {v5}, Ljxl/CellView;->getSize()I

    move-result v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 910
    iget-wide v9, v0, Ljxl/biff/drawing/Drawing;->x:D

    int-to-double v11, v1

    sub-double/2addr v9, v11

    sub-double/2addr v7, v9

    int-to-double v9, v6

    mul-double v7, v7, v9

    .line 911
    invoke-virtual {v5}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v5

    invoke-interface {v5}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v5

    invoke-interface {v5}, Ljxl/format/Font;->getPointSize()I

    move-result v5

    int-to-double v5, v5

    goto :goto_0

    :cond_1
    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    :goto_0
    const-wide v11, 0x3fe2e147ae147ae1L    # 0.59

    mul-double v7, v7, v11

    mul-double v7, v7, v5

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    div-double/2addr v7, v5

    if-eq v4, v1, :cond_3

    .line 922
    iget-object v13, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    invoke-interface {v13, v4}, Ljxl/Sheet;->getColumnView(I)Ljxl/CellView;

    move-result-object v13

    .line 923
    invoke-virtual {v13}, Ljxl/CellView;->getSize()I

    move-result v14

    .line 924
    iget-wide v2, v0, Ljxl/biff/drawing/Drawing;->x:D

    iget-wide v9, v0, Ljxl/biff/drawing/Drawing;->width:D

    add-double/2addr v2, v9

    int-to-double v9, v4

    sub-double/2addr v2, v9

    int-to-double v9, v14

    mul-double v2, v2, v9

    .line 925
    invoke-virtual {v13}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v13}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v9

    invoke-interface {v9}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v9

    invoke-interface {v9}, Ljxl/format/Font;->getPointSize()I

    move-result v9

    int-to-double v9, v9

    goto :goto_1

    :cond_2
    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    :goto_1
    mul-double v2, v2, v11

    mul-double v2, v2, v9

    div-double/2addr v2, v5

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x0

    :goto_2
    const/4 v9, 0x0

    const-wide/16 v15, 0x0

    :goto_3
    sub-int v10, v4, v1

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_5

    .line 934
    iget-object v10, v0, Ljxl/biff/drawing/Drawing;->sheet:Ljxl/Sheet;

    add-int/lit8 v13, v1, 0x1

    add-int/2addr v13, v9

    invoke-interface {v10, v13}, Ljxl/Sheet;->getColumnView(I)Ljxl/CellView;

    move-result-object v10

    .line 935
    invoke-virtual {v10}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v10}, Ljxl/CellView;->getFormat()Ljxl/format/CellFormat;

    move-result-object v13

    invoke-interface {v13}, Ljxl/format/CellFormat;->getFont()Ljxl/format/Font;

    move-result-object v13

    invoke-interface {v13}, Ljxl/format/Font;->getPointSize()I

    move-result v13

    int-to-double v13, v13

    goto :goto_4

    :cond_4
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    .line 937
    :goto_4
    invoke-virtual {v10}, Ljxl/CellView;->getSize()I

    move-result v10

    int-to-double v5, v10

    mul-double v5, v5, v11

    mul-double v5, v5, v13

    const-wide/high16 v13, 0x4070000000000000L    # 256.0

    div-double/2addr v5, v13

    add-double/2addr v15, v5

    add-int/lit8 v9, v9, 0x1

    move-wide v5, v13

    goto :goto_3

    :cond_5
    add-double/2addr v15, v7

    add-double/2addr v15, v2

    return-wide v15
.end method

.method private initialize()V
    .locals 6

    .line 326
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    .line 327
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 329
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 331
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v1

    check-cast v3, Ljxl/biff/drawing/Sp;

    .line 332
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    .line 333
    iget-object v4, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v4}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    .line 334
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    .line 336
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_1

    .line 338
    sget-object v3, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 341
    :cond_1
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v2

    check-cast v3, Ljxl/biff/drawing/Opt;

    const/16 v4, 0x104

    .line 343
    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 345
    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v4

    iget v4, v4, Ljxl/biff/drawing/Opt$Property;->value:I

    iput v4, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    :cond_2
    const/16 v4, 0x105

    .line 348
    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 350
    new-instance v5, Ljava/io/File;

    invoke-virtual {v3, v4}, Ljxl/biff/drawing/Opt;->getProperty(I)Ljxl/biff/drawing/Opt$Property;

    move-result-object v3

    iget-object v3, v3, Ljxl/biff/drawing/Opt$Property;->stringValue:Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    goto :goto_1

    .line 354
    :cond_3
    iget-object v3, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v4, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_4

    .line 356
    sget-object v3, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    const-string v4, "no filename property for drawing"

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 357
    new-instance v3, Ljava/io/File;

    iget v4, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 362
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_6

    if-nez v3, :cond_6

    .line 364
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v4

    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_5

    .line 366
    aget-object v3, v0, v1

    check-cast v3, Ljxl/biff/drawing/ClientAnchor;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    .line 372
    sget-object v0, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    const-string v1, "client anchor not found"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_3

    .line 376
    :cond_7
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->x:D

    .line 377
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v0

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->y:D

    .line 378
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX2()D

    move-result-wide v0

    iget-wide v4, p0, Ljxl/biff/drawing/Drawing;->x:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->width:D

    .line 379
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY2()D

    move-result-wide v0

    iget-wide v4, p0, Ljxl/biff/drawing/Drawing;->y:D

    sub-double/2addr v0, v4

    iput-wide v0, p0, Ljxl/biff/drawing/Drawing;->height:D

    .line 380
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getProperties()I

    move-result v0

    invoke-static {v0}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;->getImageAnchorProperties(I)Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 384
    :goto_3
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    if-nez v0, :cond_8

    .line 386
    sget-object v0, Ljxl/biff/drawing/Drawing;->logger:Lcommon/Logger;

    const-string v1, "linked drawings are not supported"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 389
    :cond_8
    iput-boolean v2, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    return-void
.end method


# virtual methods
.method public final getBlipId()I
    .locals 1

    .line 477
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 479
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 482
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    return v0
.end method

.method public getColumn()D
    .locals 2

    .line 833
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 555
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 697
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 702
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->height:D

    return-wide v0
.end method

.method public getHeight(Lcommon/LengthUnit;)D
    .locals 4

    .line 1018
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getHeightInPoints()D

    move-result-wide v0

    .line 1019
    sget-object v2, Lcommon/LengthUnit;->POINTS:Lcommon/LengthUnit;

    invoke-static {v2, p1}, Lcommon/LengthConverter;->getConversionFactor(Lcommon/LengthUnit;Lcommon/LengthUnit;)D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getHorizontalResolution(Lcommon/LengthUnit;)D
    .locals 4

    .line 1056
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getHorizontalResolution()I

    move-result v0

    int-to-double v0, v0

    .line 1057
    sget-object v2, Lcommon/LengthUnit;->METRES:Lcommon/LengthUnit;

    invoke-static {v2, p1}, Lcommon/LengthConverter;->getConversionFactor(Lcommon/LengthUnit;Lcommon/LengthUnit;)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected getImageAnchor()Ljxl/biff/drawing/Drawing$ImageAnchorProperties;
    .locals 1

    .line 1120
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 1122
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 1125
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    return-object v0
.end method

.method public getImageBytes()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 764
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 769
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 771
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-nez v0, :cond_3

    .line 773
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcommon/Assert;->verify(Z)V

    .line 774
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageData:[B

    return-object v0

    .line 777
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 778
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 779
    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 780
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v0

    .line 766
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getImageData()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageData()[B
    .locals 2

    .line 747
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 749
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_2

    .line 751
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 754
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFile()Ljava/io/File;
    .locals 1

    .line 399
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 414
    iget v0, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "__new__image__"

    :goto_0
    return-object v0

    .line 417
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 1044
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 1032
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getWidth()I

    move-result v0

    return v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 492
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 447
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 452
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 565
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 575
    iget v0, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    return v0
.end method

.method public getRow()D
    .locals 2

    .line 843
    invoke-virtual {p0}, Ljxl/biff/drawing/Drawing;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getShapeId()I
    .locals 1

    .line 462
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 464
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 467
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 23

    move-object/from16 v0, p0

    .line 502
    iget-boolean v1, v0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v1, :cond_0

    .line 504
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 507
    :cond_0
    iget-object v1, v0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_1

    .line 509
    invoke-direct/range {p0 .. p0}, Ljxl/biff/drawing/Drawing;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v1

    return-object v1

    .line 512
    :cond_1
    new-instance v1, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v1}, Ljxl/biff/drawing/SpContainer;-><init>()V

    .line 513
    new-instance v2, Ljxl/biff/drawing/Sp;

    iget-object v3, v0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    iget v4, v0, Ljxl/biff/drawing/Drawing;->shapeId:I

    const/16 v5, 0xa00

    invoke-direct {v2, v3, v4, v5}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 514
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 515
    new-instance v2, Ljxl/biff/drawing/Opt;

    invoke-direct {v2}, Ljxl/biff/drawing/Opt;-><init>()V

    const/16 v3, 0x104

    const/4 v4, 0x1

    .line 516
    iget v5, v0, Ljxl/biff/drawing/Drawing;->blipId:I

    const/4 v12, 0x0

    invoke-virtual {v2, v3, v4, v12, v5}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 518
    iget-object v3, v0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v4, Ljxl/biff/drawing/ShapeType;->PICTURE_FRAME:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_3

    .line 520
    iget-object v3, v0, Ljxl/biff/drawing/Drawing;->imageFile:Ljava/io/File;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    move-object v11, v3

    const/16 v7, 0x105

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 521
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v10, v3, 0x2

    move-object v6, v2

    invoke-virtual/range {v6 .. v11}, Ljxl/biff/drawing/Opt;->addProperty(IZZILjava/lang/String;)V

    const/16 v3, 0x1bf

    const/high16 v4, 0x10000

    .line 522
    invoke-virtual {v2, v3, v12, v12, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v3, 0x3bf

    const/high16 v4, 0x80000

    .line 523
    invoke-virtual {v2, v3, v12, v12, v4}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 524
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 527
    :cond_3
    new-instance v2, Ljxl/biff/drawing/ClientAnchor;

    iget-wide v14, v0, Ljxl/biff/drawing/Drawing;->x:D

    iget-wide v3, v0, Ljxl/biff/drawing/Drawing;->y:D

    iget-wide v5, v0, Ljxl/biff/drawing/Drawing;->width:D

    add-double v18, v14, v5

    iget-wide v5, v0, Ljxl/biff/drawing/Drawing;->height:D

    add-double v20, v3, v5

    iget-object v5, v0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    invoke-virtual {v5}, Ljxl/biff/drawing/Drawing$ImageAnchorProperties;->getValue()I

    move-result v22

    move-object v13, v2

    move-wide/from16 v16, v3

    invoke-direct/range {v13 .. v22}, Ljxl/biff/drawing/ClientAnchor;-><init>(DDDDI)V

    .line 530
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 531
    new-instance v2, Ljxl/biff/drawing/ClientData;

    invoke-direct {v2}, Ljxl/biff/drawing/ClientData;-><init>()V

    .line 532
    invoke-virtual {v1, v2}, Ljxl/biff/drawing/SpContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    return-object v1
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 791
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getVerticalResolution(Lcommon/LengthUnit;)D
    .locals 4

    .line 1068
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getPngReader()Ljxl/biff/drawing/PNGReader;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/biff/drawing/PNGReader;->getVerticalResolution()I

    move-result v0

    int-to-double v0, v0

    .line 1069
    sget-object v2, Lcommon/LengthUnit;->METRES:Lcommon/LengthUnit;

    invoke-static {v2, p1}, Lcommon/LengthConverter;->getConversionFactor(Lcommon/LengthUnit;Lcommon/LengthUnit;)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .line 663
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 665
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 668
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->width:D

    return-wide v0
.end method

.method public getWidth(Lcommon/LengthUnit;)D
    .locals 4

    .line 1005
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->getWidthInPoints()D

    move-result-wide v0

    .line 1006
    sget-object v2, Lcommon/LengthUnit;->POINTS:Lcommon/LengthUnit;

    invoke-static {v2, p1}, Lcommon/LengthConverter;->getConversionFactor(Lcommon/LengthUnit;Lcommon/LengthUnit;)D

    move-result-wide v2

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 595
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 597
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 599
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 628
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 633
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->y:D

    return-wide v0
.end method

.method public isFirst()Z
    .locals 1

    .line 855
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeRow(I)V
    .locals 4

    .line 877
    iget-wide v0, p0, Ljxl/biff/drawing/Drawing;->y:D

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    .line 879
    invoke-virtual {p0, v2, v3}, Ljxl/biff/drawing/Drawing;->setY(D)V

    :cond_0
    return-void
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0

    .line 545
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-void
.end method

.method public setHeight(D)V
    .locals 2

    .line 712
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 714
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 716
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 718
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 721
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->height:D

    return-void
.end method

.method protected setImageAnchor(Ljxl/biff/drawing/Drawing$ImageAnchorProperties;)V
    .locals 1

    .line 1107
    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->imageAnchorProperties:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 1109
    iget-object p1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, v0, :cond_0

    .line 1111
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    :cond_0
    return-void
.end method

.method public final setObjectId(III)V
    .locals 0

    .line 430
    iput p1, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    .line 431
    iput p2, p0, Ljxl/biff/drawing/Drawing;->blipId:I

    .line 432
    iput p3, p0, Ljxl/biff/drawing/Drawing;->shapeId:I

    .line 434
    iget-object p1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, p2, :cond_0

    .line 436
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0

    .line 585
    iput p1, p0, Ljxl/biff/drawing/Drawing;->referenceCount:I

    return-void
.end method

.method public setWidth(D)V
    .locals 2

    .line 678
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 680
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 682
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 684
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 687
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->width:D

    return-void
.end method

.method public setX(D)V
    .locals 2

    .line 609
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 611
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 613
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 615
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 618
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->x:D

    return-void
.end method

.method public setY(D)V
    .locals 2

    .line 643
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 645
    iget-boolean v0, p0, Ljxl/biff/drawing/Drawing;->initialized:Z

    if-nez v0, :cond_0

    .line 647
    invoke-direct {p0}, Ljxl/biff/drawing/Drawing;->initialize()V

    .line 649
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    .line 652
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Drawing;->y:D

    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Ljxl/biff/drawing/Drawing;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void

    .line 809
    :cond_0
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    iget v1, p0, Ljxl/biff/drawing/Drawing;->objectId:I

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->PICTURE:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 811
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
