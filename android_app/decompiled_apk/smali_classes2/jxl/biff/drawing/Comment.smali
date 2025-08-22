.class public Ljxl/biff/drawing/Comment;
.super Ljava/lang/Object;
.source "Comment.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# static fields
.field static synthetic class$jxl$biff$drawing$Comment:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private blipId:I

.field private column:I

.field private commentText:Ljava/lang/String;

.field private drawingData:Ljxl/biff/drawing/DrawingData;

.field private drawingGroup:Ljxl/biff/drawing/DrawingGroup;

.field private drawingNumber:I

.field private escherData:Ljxl/biff/drawing/EscherContainer;

.field private formatting:Ljxl/biff/ContinueRecord;

.field private height:D

.field private initialized:Z

.field private mso:Ljxl/biff/drawing/MsoDrawingRecord;

.field private msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

.field private note:Ljxl/biff/drawing/NoteRecord;

.field private objRecord:Ljxl/biff/drawing/ObjRecord;

.field private objectId:I

.field private origin:Ljxl/biff/drawing/Origin;

.field private readSpContainer:Ljxl/biff/drawing/EscherContainer;

.field private referenceCount:I

.field private row:I

.field private shapeId:I

.field private spContainer:Ljxl/biff/drawing/EscherContainer;

.field private text:Ljxl/biff/ContinueRecord;

.field private txo:Ljxl/biff/drawing/TextObjectRecord;

.field private type:Ljxl/biff/drawing/ShapeType;

.field private width:D

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Ljxl/biff/drawing/Comment;->class$jxl$biff$drawing$Comment:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.Comment"

    invoke-static {v0}, Ljxl/biff/drawing/Comment;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Comment;->class$jxl$biff$drawing$Comment:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Comment;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 246
    sget-object v1, Ljxl/biff/drawing/Origin;->WRITE:Ljxl/biff/drawing/Origin;

    iput-object v1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 247
    iput p2, p0, Ljxl/biff/drawing/Comment;->column:I

    .line 248
    iput p3, p0, Ljxl/biff/drawing/Comment;->row:I

    .line 249
    iput v0, p0, Ljxl/biff/drawing/Comment;->referenceCount:I

    .line 250
    sget-object p2, Ljxl/biff/drawing/ShapeType;->TEXT_BOX:Ljxl/biff/drawing/ShapeType;

    iput-object p2, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    .line 251
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    .line 252
    iput-wide p1, p0, Ljxl/biff/drawing/Comment;->width:D

    const-wide/high16 p1, 0x4010000000000000L    # 4.0

    .line 253
    iput-wide p1, p0, Ljxl/biff/drawing/Comment;->height:D

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 3

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 216
    check-cast p1, Ljxl/biff/drawing/Comment;

    .line 217
    iget-object v1, p1, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 218
    iget-object v1, p1, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 219
    iget-object v1, p1, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 220
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 221
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 222
    iget-object v0, p1, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 223
    iput-object p2, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 224
    iget p2, p1, Ljxl/biff/drawing/Comment;->drawingNumber:I

    iput p2, p0, Ljxl/biff/drawing/Comment;->drawingNumber:I

    .line 225
    iget-object p2, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 226
    iget-object p2, p1, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 227
    iget-object p2, p1, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    .line 228
    iget-object p2, p1, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    .line 229
    iget-object p2, p1, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    .line 230
    iget-object p2, p1, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    .line 231
    iget-wide v0, p1, Ljxl/biff/drawing/Comment;->width:D

    iput-wide v0, p0, Ljxl/biff/drawing/Comment;->width:D

    .line 232
    iget-wide p1, p1, Ljxl/biff/drawing/Comment;->height:D

    iput-wide p1, p0, Ljxl/biff/drawing/Comment;->height:D

    .line 233
    iput-object p3, p0, Ljxl/biff/drawing/Comment;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 186
    iput-object p4, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 187
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 188
    iput-object p3, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 189
    iput-object p2, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 190
    iput-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    .line 191
    iput-object p5, p0, Ljxl/biff/drawing/Comment;->workbookSettings:Ljxl/WorkbookSettings;

    .line 192
    sget-object p1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 193
    iget-object p1, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object p2, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 194
    iget-object p1, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p1}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Ljxl/biff/drawing/Comment;->drawingNumber:I

    .line 195
    iget-object p1, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p1, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 197
    iget-object p1, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcommon/Assert;->verify(Z)V

    .line 199
    iget-boolean p1, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez p1, :cond_1

    .line 201
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    :cond_1
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

.method private getReadSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 1

    .line 619
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 624
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .line 261
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/Comment;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    .line 262
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 264
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 266
    iget-object v3, p0, Ljxl/biff/drawing/Comment;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v1

    check-cast v3, Ljxl/biff/drawing/Sp;

    .line 267
    iget-object v4, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v4}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Comment;->objectId:I

    .line 268
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Comment;->shapeId:I

    .line 269
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    .line 271
    iget-object v3, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_1

    .line 273
    sget-object v3, Ljxl/biff/drawing/Comment;->logger:Lcommon/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_1
    const/4 v3, 0x0

    .line 277
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    if-nez v3, :cond_3

    .line 279
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v4

    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_2

    .line 281
    aget-object v3, v0, v1

    check-cast v3, Ljxl/biff/drawing/ClientAnchor;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 287
    sget-object v0, Ljxl/biff/drawing/Comment;->logger:Lcommon/Logger;

    const-string v1, "client anchor not found"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 291
    :cond_4
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/Comment;->column:I

    .line 292
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/Comment;->row:I

    .line 293
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX2()D

    move-result-wide v0

    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v4

    sub-double/2addr v0, v4

    iput-wide v0, p0, Ljxl/biff/drawing/Comment;->width:D

    .line 294
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY2()D

    move-result-wide v0

    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v3

    sub-double/2addr v0, v3

    iput-wide v0, p0, Ljxl/biff/drawing/Comment;->height:D

    .line 297
    :goto_2
    iput-boolean v2, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    return-void
.end method


# virtual methods
.method public addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V
    .locals 1

    .line 725
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 726
    iget-object p1, p0, Ljxl/biff/drawing/Comment;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v0, p0, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    return-void
.end method

.method public final getBlipId()I
    .locals 1

    .line 358
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 360
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 363
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->blipId:I

    return v0
.end method

.method public getColumn()I
    .locals 1

    .line 830
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/NoteRecord;->getColumn()I

    move-result v0

    return v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 441
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 584
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 586
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 589
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Comment;->height:D

    return-wide v0
.end method

.method public getImageBytes()[B
    .locals 1

    const/4 v0, 0x0

    .line 701
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageData()[B
    .locals 2

    .line 634
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

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

    .line 636
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_2

    .line 638
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 641
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Comment;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 714
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 373
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 328
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 330
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 333
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 451
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 461
    iget v0, p0, Ljxl/biff/drawing/Comment;->referenceCount:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .line 820
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/NoteRecord;->getRow()I

    move-result v0

    return v0
.end method

.method public final getShapeId()I
    .locals 1

    .line 343
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 348
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 13

    .line 383
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 388
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 390
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    return-object v0

    .line 393
    :cond_1
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    if-nez v0, :cond_2

    .line 395
    new-instance v0, Ljxl/biff/drawing/SpContainer;

    invoke-direct {v0}, Ljxl/biff/drawing/SpContainer;-><init>()V

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    .line 396
    new-instance v0, Ljxl/biff/drawing/Sp;

    iget-object v1, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    iget v2, p0, Ljxl/biff/drawing/Comment;->shapeId:I

    const/16 v3, 0xa00

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/drawing/Sp;-><init>(Ljxl/biff/drawing/ShapeType;II)V

    .line 397
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 398
    new-instance v0, Ljxl/biff/drawing/Opt;

    invoke-direct {v0}, Ljxl/biff/drawing/Opt;-><init>()V

    const/16 v1, 0x158

    const/4 v2, 0x0

    .line 399
    invoke-virtual {v0, v1, v2, v2, v2}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v1, 0x181

    const v3, 0x8000050

    .line 400
    invoke-virtual {v0, v1, v2, v2, v3}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v1, 0x183

    .line 401
    invoke-virtual {v0, v1, v2, v2, v3}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    const/16 v1, 0x3bf

    const v3, 0x20002

    .line 402
    invoke-virtual {v0, v1, v2, v2, v3}, Ljxl/biff/drawing/Opt;->addProperty(IZZI)V

    .line 403
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 405
    new-instance v0, Ljxl/biff/drawing/ClientAnchor;

    iget v1, p0, Ljxl/biff/drawing/Comment;->column:I

    int-to-double v1, v1

    const-wide v3, 0x3ff4cccccccccccdL    # 1.3

    add-double v5, v1, v3

    const-wide/16 v1, 0x0

    iget v7, p0, Ljxl/biff/drawing/Comment;->row:I

    int-to-double v7, v7

    const-wide v9, 0x3fe3333333333333L    # 0.6

    sub-double/2addr v7, v9

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    iget v1, p0, Ljxl/biff/drawing/Comment;->column:I

    int-to-double v1, v1

    add-double/2addr v1, v3

    iget-wide v3, p0, Ljxl/biff/drawing/Comment;->width:D

    add-double v9, v1, v3

    iget v1, p0, Ljxl/biff/drawing/Comment;->row:I

    int-to-double v1, v1

    iget-wide v3, p0, Ljxl/biff/drawing/Comment;->height:D

    add-double v11, v1, v3

    const/4 v1, 0x1

    move-object v2, v0

    move-wide v3, v5

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move v11, v1

    invoke-direct/range {v2 .. v11}, Ljxl/biff/drawing/ClientAnchor;-><init>(DDDDI)V

    .line 411
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 413
    new-instance v0, Ljxl/biff/drawing/ClientData;

    invoke-direct {v0}, Ljxl/biff/drawing/ClientData;-><init>()V

    .line 414
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 416
    new-instance v0, Ljxl/biff/drawing/ClientTextBox;

    invoke-direct {v0}, Ljxl/biff/drawing/ClientTextBox;-><init>()V

    .line 417
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v1, v0}, Ljxl/biff/drawing/EscherContainer;->add(Ljxl/biff/drawing/EscherRecord;)V

    .line 420
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->spContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 840
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 844
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    invoke-virtual {v0}, Ljxl/biff/ContinueRecord;->getData()[B

    move-result-object v0

    .line 845
    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    .line 847
    array-length v1, v0

    sub-int/2addr v1, v2

    iget-object v3, p0, Ljxl/biff/drawing/Comment;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    goto :goto_1

    .line 852
    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    .line 857
    :cond_2
    :goto_1
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 651
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 550
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 552
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 555
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Comment;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 481
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 483
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 485
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->column:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 515
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 517
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 520
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Comment;->row:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 867
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 894
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCommentText(Ljava/lang/String;)V
    .locals 1

    .line 877
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    .line 879
    iget-object p1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, v0, :cond_0

    .line 881
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    :cond_0
    return-void
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0

    .line 431
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-void
.end method

.method public setFormatting(Ljxl/biff/ContinueRecord;)V
    .locals 0

    .line 691
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    return-void
.end method

.method public setHeight(D)V
    .locals 2

    .line 599
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 601
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 603
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 605
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 608
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Comment;->height:D

    return-void
.end method

.method public setNote(Ljxl/biff/drawing/NoteRecord;)V
    .locals 0

    .line 671
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    return-void
.end method

.method public final setObjectId(III)V
    .locals 0

    .line 311
    iput p1, p0, Ljxl/biff/drawing/Comment;->objectId:I

    .line 312
    iput p2, p0, Ljxl/biff/drawing/Comment;->blipId:I

    .line 313
    iput p3, p0, Ljxl/biff/drawing/Comment;->shapeId:I

    .line 315
    iget-object p1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, p2, :cond_0

    .line 317
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0

    .line 471
    iput p1, p0, Ljxl/biff/drawing/Comment;->referenceCount:I

    return-void
.end method

.method public setText(Ljxl/biff/ContinueRecord;)V
    .locals 0

    .line 681
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    return-void
.end method

.method public setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V
    .locals 0

    .line 661
    iput-object p1, p0, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    return-void
.end method

.method public setWidth(D)V
    .locals 2

    .line 565
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 567
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 569
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 571
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    .line 574
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Comment;->width:D

    return-void
.end method

.method public setX(D)V
    .locals 2

    .line 496
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 498
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 500
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 502
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    :cond_1
    double-to-int p1, p1

    .line 505
    iput p1, p0, Ljxl/biff/drawing/Comment;->column:I

    return-void
.end method

.method public setY(D)V
    .locals 2

    .line 530
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 532
    iget-boolean v0, p0, Ljxl/biff/drawing/Comment;->initialized:Z

    if-nez v0, :cond_0

    .line 534
    invoke-direct {p0}, Ljxl/biff/drawing/Comment;->initialize()V

    .line 536
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    :cond_1
    double-to-int p1, p1

    .line 539
    iput p1, p0, Ljxl/biff/drawing/Comment;->row:I

    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_2

    .line 739
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 741
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 745
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->txo:Ljxl/biff/drawing/TextObjectRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 746
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->text:Ljxl/biff/ContinueRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 747
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->formatting:Ljxl/biff/ContinueRecord;

    if-eqz v0, :cond_1

    .line 749
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    :cond_1
    return-void

    .line 755
    :cond_2
    new-instance v0, Ljxl/biff/drawing/ObjRecord;

    iget v1, p0, Ljxl/biff/drawing/Comment;->objectId:I

    sget-object v2, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v0, v1, v2}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 758
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 762
    new-instance v0, Ljxl/biff/drawing/ClientTextBox;

    invoke-direct {v0}, Ljxl/biff/drawing/ClientTextBox;-><init>()V

    .line 763
    new-instance v1, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/ClientTextBox;->getData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 764
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 766
    new-instance v0, Ljxl/biff/drawing/TextObjectRecord;

    invoke-virtual {p0}, Ljxl/biff/drawing/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 770
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v3, 0x0

    .line 771
    aput-byte v2, v0, v3

    .line 772
    iget-object v4, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-static {v4, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 774
    new-instance v2, Ljxl/biff/ContinueRecord;

    invoke-direct {v2, v0}, Ljxl/biff/ContinueRecord;-><init>([B)V

    .line 775
    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 782
    invoke-static {v3, v0, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 783
    invoke-static {v3, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 785
    iget-object v1, p0, Ljxl/biff/drawing/Comment;->commentText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v1, 0xa

    .line 786
    invoke-static {v3, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 788
    new-instance v1, Ljxl/biff/ContinueRecord;

    invoke-direct {v1, v0}, Ljxl/biff/ContinueRecord;-><init>([B)V

    .line 789
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 802
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Ljxl/biff/drawing/Comment;->note:Ljxl/biff/drawing/NoteRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void

    .line 809
    :cond_0
    new-instance v0, Ljxl/biff/drawing/NoteRecord;

    iget v1, p0, Ljxl/biff/drawing/Comment;->column:I

    iget v2, p0, Ljxl/biff/drawing/Comment;->row:I

    iget v3, p0, Ljxl/biff/drawing/Comment;->objectId:I

    invoke-direct {v0, v1, v2, v3}, Ljxl/biff/drawing/NoteRecord;-><init>(III)V

    .line 810
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method
