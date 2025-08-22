.class public Ljxl/biff/drawing/Button;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Ljxl/biff/drawing/DrawingGroupObject;


# static fields
.field static synthetic class$jxl$biff$drawing$Button:Ljava/lang/Class;

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
    sget-object v0, Ljxl/biff/drawing/Button;->class$jxl$biff$drawing$Button:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.biff.drawing.Button"

    invoke-static {v0}, Ljxl/biff/drawing/Button;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Button;->class$jxl$biff$drawing$Button:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/drawing/Button;->logger:Lcommon/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 3

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    .line 211
    check-cast p1, Ljxl/biff/drawing/Button;

    .line 212
    iget-object v1, p1, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcommon/Assert;->verify(Z)V

    .line 213
    iget-object v1, p1, Ljxl/biff/drawing/Button;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Button;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 214
    iget-object v1, p1, Ljxl/biff/drawing/Button;->objRecord:Ljxl/biff/drawing/ObjRecord;

    iput-object v1, p0, Ljxl/biff/drawing/Button;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 215
    iput-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    .line 216
    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    .line 217
    iget-object v0, p1, Ljxl/biff/drawing/Button;->drawingData:Ljxl/biff/drawing/DrawingData;

    iput-object v0, p0, Ljxl/biff/drawing/Button;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 218
    iput-object p2, p0, Ljxl/biff/drawing/Button;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 219
    iget p2, p1, Ljxl/biff/drawing/Button;->drawingNumber:I

    iput p2, p0, Ljxl/biff/drawing/Button;->drawingNumber:I

    .line 220
    iget-object p2, p0, Ljxl/biff/drawing/Button;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p2, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 221
    iget-object p2, p1, Ljxl/biff/drawing/Button;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Button;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 222
    iget-object p2, p1, Ljxl/biff/drawing/Button;->txo:Ljxl/biff/drawing/TextObjectRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Button;->txo:Ljxl/biff/drawing/TextObjectRecord;

    .line 223
    iget-object p2, p1, Ljxl/biff/drawing/Button;->text:Ljxl/biff/ContinueRecord;

    iput-object p2, p0, Ljxl/biff/drawing/Button;->text:Ljxl/biff/ContinueRecord;

    .line 224
    iget-object p1, p1, Ljxl/biff/drawing/Button;->formatting:Ljxl/biff/ContinueRecord;

    iput-object p1, p0, Ljxl/biff/drawing/Button;->formatting:Ljxl/biff/ContinueRecord;

    .line 225
    iput-object p3, p0, Ljxl/biff/drawing/Button;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/MsoDrawingRecord;Ljxl/biff/drawing/ObjRecord;Ljxl/biff/drawing/DrawingData;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    .line 184
    iput-object p4, p0, Ljxl/biff/drawing/Button;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    .line 185
    iput-object p1, p0, Ljxl/biff/drawing/Button;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 186
    iput-object p3, p0, Ljxl/biff/drawing/Button;->drawingData:Ljxl/biff/drawing/DrawingData;

    .line 187
    iput-object p2, p0, Ljxl/biff/drawing/Button;->objRecord:Ljxl/biff/drawing/ObjRecord;

    .line 188
    iput-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    .line 189
    iput-object p5, p0, Ljxl/biff/drawing/Button;->workbookSettings:Ljxl/WorkbookSettings;

    .line 190
    sget-object p1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    .line 191
    iget-object p1, p0, Ljxl/biff/drawing/Button;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object p2, p0, Ljxl/biff/drawing/Button;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {p2}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljxl/biff/drawing/DrawingData;->addData([B)V

    .line 192
    iget-object p1, p0, Ljxl/biff/drawing/Button;->drawingData:Ljxl/biff/drawing/DrawingData;

    invoke-virtual {p1}, Ljxl/biff/drawing/DrawingData;->getNumDrawings()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Ljxl/biff/drawing/Button;->drawingNumber:I

    .line 193
    iget-object p1, p0, Ljxl/biff/drawing/Button;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    invoke-virtual {p1, p0}, Ljxl/biff/drawing/DrawingGroup;->addDrawing(Ljxl/biff/drawing/DrawingGroupObject;)V

    .line 195
    iget-object p1, p0, Ljxl/biff/drawing/Button;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljxl/biff/drawing/Button;->objRecord:Ljxl/biff/drawing/ObjRecord;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcommon/Assert;->verify(Z)V

    .line 197
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

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

    .line 591
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 596
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Button;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .line 233
    iget-object v0, p0, Ljxl/biff/drawing/Button;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget v1, p0, Ljxl/biff/drawing/Button;->drawingNumber:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingData;->getSpContainer(I)Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Button;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    .line 234
    iget-object v0, p0, Ljxl/biff/drawing/Button;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 236
    iget-object v0, p0, Ljxl/biff/drawing/Button;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v0}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v0

    .line 238
    iget-object v3, p0, Ljxl/biff/drawing/Button;->readSpContainer:Ljxl/biff/drawing/EscherContainer;

    invoke-virtual {v3}, Ljxl/biff/drawing/EscherContainer;->getChildren()[Ljxl/biff/drawing/EscherRecord;

    move-result-object v3

    aget-object v3, v3, v1

    check-cast v3, Ljxl/biff/drawing/Sp;

    .line 239
    iget-object v4, p0, Ljxl/biff/drawing/Button;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {v4}, Ljxl/biff/drawing/ObjRecord;->getObjectId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Button;->objectId:I

    .line 240
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeId()I

    move-result v4

    iput v4, p0, Ljxl/biff/drawing/Button;->shapeId:I

    .line 241
    invoke-virtual {v3}, Ljxl/biff/drawing/Sp;->getShapeType()I

    move-result v3

    invoke-static {v3}, Ljxl/biff/drawing/ShapeType;->getType(I)Ljxl/biff/drawing/ShapeType;

    move-result-object v3

    iput-object v3, p0, Ljxl/biff/drawing/Button;->type:Ljxl/biff/drawing/ShapeType;

    .line 243
    iget-object v3, p0, Ljxl/biff/drawing/Button;->type:Ljxl/biff/drawing/ShapeType;

    sget-object v4, Ljxl/biff/drawing/ShapeType;->UNKNOWN:Ljxl/biff/drawing/ShapeType;

    if-ne v3, v4, :cond_1

    .line 245
    sget-object v3, Ljxl/biff/drawing/Button;->logger:Lcommon/Logger;

    const-string v4, "Unknown shape type"

    invoke-virtual {v3, v4}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_1
    const/4 v3, 0x0

    .line 249
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    if-nez v3, :cond_3

    .line 251
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljxl/biff/drawing/EscherRecord;->getType()Ljxl/biff/drawing/EscherRecordType;

    move-result-object v4

    sget-object v5, Ljxl/biff/drawing/EscherRecordType;->CLIENT_ANCHOR:Ljxl/biff/drawing/EscherRecordType;

    if-ne v4, v5, :cond_2

    .line 253
    aget-object v3, v0, v1

    check-cast v3, Ljxl/biff/drawing/ClientAnchor;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    .line 259
    sget-object v0, Ljxl/biff/drawing/Button;->logger:Lcommon/Logger;

    const-string v1, "Client anchor not found"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_2

    .line 263
    :cond_4
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getX1()D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/Button;->column:I

    .line 264
    invoke-virtual {v3}, Ljxl/biff/drawing/ClientAnchor;->getY1()D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Ljxl/biff/drawing/Button;->row:I

    .line 267
    :goto_2
    iput-boolean v2, p0, Ljxl/biff/drawing/Button;->initialized:Z

    return-void
.end method


# virtual methods
.method public addMso(Ljxl/biff/drawing/MsoDrawingRecord;)V
    .locals 1

    .line 687
    iput-object p1, p0, Ljxl/biff/drawing/Button;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    .line 688
    iget-object p1, p0, Ljxl/biff/drawing/Button;->drawingData:Ljxl/biff/drawing/DrawingData;

    iget-object v0, p0, Ljxl/biff/drawing/Button;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/biff/drawing/DrawingData;->addRawData([B)V

    return-void
.end method

.method public final getBlipId()I
    .locals 1

    .line 328
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 330
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 333
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Button;->blipId:I

    return v0
.end method

.method public getColumn()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
    .locals 1

    .line 413
    iget-object v0, p0, Ljxl/biff/drawing/Button;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-object v0
.end method

.method public getHeight()D
    .locals 2

    .line 556
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 561
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Button;->height:D

    return-wide v0
.end method

.method public getImageBytes()[B
    .locals 1

    const/4 v0, 0x0

    .line 663
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageData()[B
    .locals 2

    .line 606
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

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

    .line 608
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_2

    .line 610
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 613
    :cond_2
    iget-object v0, p0, Ljxl/biff/drawing/Button;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    iget v1, p0, Ljxl/biff/drawing/Button;->blipId:I

    invoke-virtual {v0, v1}, Ljxl/biff/drawing/DrawingGroup;->getImageData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 676
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
    .locals 1

    .line 343
    iget-object v0, p0, Ljxl/biff/drawing/Button;->msoDrawingRecord:Ljxl/biff/drawing/MsoDrawingRecord;

    return-object v0
.end method

.method public final getObjectId()I
    .locals 1

    .line 298
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 303
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Button;->objectId:I

    return v0
.end method

.method public getOrigin()Ljxl/biff/drawing/Origin;
    .locals 1

    .line 423
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    return-object v0
.end method

.method public getReferenceCount()I
    .locals 1

    .line 433
    iget v0, p0, Ljxl/biff/drawing/Button;->referenceCount:I

    return v0
.end method

.method public getRow()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getShapeId()I
    .locals 1

    .line 313
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 315
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 318
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Button;->shapeId:I

    return v0
.end method

.method public getSpContainer()Ljxl/biff/drawing/EscherContainer;
    .locals 2

    .line 353
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 358
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 360
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->getReadSpContainer()Ljxl/biff/drawing/EscherContainer;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 363
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 392
    iget-object v0, p0, Ljxl/biff/drawing/Button;->spContainer:Ljxl/biff/drawing/EscherContainer;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 796
    iget-object v0, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 798
    iget-object v0, p0, Ljxl/biff/drawing/Button;->text:Ljxl/biff/ContinueRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 800
    iget-object v0, p0, Ljxl/biff/drawing/Button;->text:Ljxl/biff/ContinueRecord;

    invoke-virtual {v0}, Ljxl/biff/ContinueRecord;->getData()[B

    move-result-object v0

    .line 801
    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    .line 803
    array-length v1, v0

    sub-int/2addr v1, v2

    iget-object v3, p0, Ljxl/biff/drawing/Button;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    goto :goto_1

    .line 808
    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    .line 813
    :cond_2
    :goto_1
    iget-object v0, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/biff/drawing/ShapeType;
    .locals 1

    .line 623
    iget-object v0, p0, Ljxl/biff/drawing/Button;->type:Ljxl/biff/drawing/ShapeType;

    return-object v0
.end method

.method public getWidth()D
    .locals 2

    .line 522
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 524
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 527
    :cond_0
    iget-wide v0, p0, Ljxl/biff/drawing/Button;->width:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .line 453
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 455
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 457
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Button;->column:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 487
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 489
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 492
    :cond_0
    iget v0, p0, Ljxl/biff/drawing/Button;->row:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 823
    iget-object v0, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .line 850
    iget-object v0, p0, Ljxl/biff/drawing/Button;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v0}, Ljxl/biff/drawing/MsoDrawingRecord;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isFormObject()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 1

    .line 833
    iput-object p1, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    .line 835
    iget-object p1, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v0, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, v0, :cond_0

    .line 837
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    :cond_0
    return-void
.end method

.method public setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0

    .line 403
    iput-object p1, p0, Ljxl/biff/drawing/Button;->drawingGroup:Ljxl/biff/drawing/DrawingGroup;

    return-void
.end method

.method public setFormatting(Ljxl/biff/ContinueRecord;)V
    .locals 0

    .line 653
    iput-object p1, p0, Ljxl/biff/drawing/Button;->formatting:Ljxl/biff/ContinueRecord;

    return-void
.end method

.method public setHeight(D)V
    .locals 2

    .line 571
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 573
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 575
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 577
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    .line 580
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Button;->height:D

    return-void
.end method

.method public final setObjectId(III)V
    .locals 0

    .line 281
    iput p1, p0, Ljxl/biff/drawing/Button;->objectId:I

    .line 282
    iput p2, p0, Ljxl/biff/drawing/Button;->blipId:I

    .line 283
    iput p3, p0, Ljxl/biff/drawing/Button;->shapeId:I

    .line 285
    iget-object p1, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object p2, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne p1, p2, :cond_0

    .line 287
    sget-object p1, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object p1, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    :cond_0
    return-void
.end method

.method public setReferenceCount(I)V
    .locals 0

    .line 443
    iput p1, p0, Ljxl/biff/drawing/Button;->referenceCount:I

    return-void
.end method

.method public setText(Ljxl/biff/ContinueRecord;)V
    .locals 0

    .line 643
    iput-object p1, p0, Ljxl/biff/drawing/Button;->text:Ljxl/biff/ContinueRecord;

    return-void
.end method

.method public setTextObject(Ljxl/biff/drawing/TextObjectRecord;)V
    .locals 0

    .line 633
    iput-object p1, p0, Ljxl/biff/drawing/Button;->txo:Ljxl/biff/drawing/TextObjectRecord;

    return-void
.end method

.method public setWidth(D)V
    .locals 2

    .line 537
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 539
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 541
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 543
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    .line 546
    :cond_1
    iput-wide p1, p0, Ljxl/biff/drawing/Button;->width:D

    return-void
.end method

.method public setX(D)V
    .locals 2

    .line 468
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 470
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 472
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 474
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    :cond_1
    double-to-int p1, p1

    .line 477
    iput p1, p0, Ljxl/biff/drawing/Button;->column:I

    return-void
.end method

.method public setY(D)V
    .locals 2

    .line 502
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_1

    .line 504
    iget-boolean v0, p0, Ljxl/biff/drawing/Button;->initialized:Z

    if-nez v0, :cond_0

    .line 506
    invoke-direct {p0}, Ljxl/biff/drawing/Button;->initialize()V

    .line 508
    :cond_0
    sget-object v0, Ljxl/biff/drawing/Origin;->READ_WRITE:Ljxl/biff/drawing/Origin;

    iput-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    :cond_1
    double-to-int p1, p1

    .line 511
    iput p1, p0, Ljxl/biff/drawing/Button;->row:I

    return-void
.end method

.method public writeAdditionalRecords(Ljxl/write/biff/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Ljxl/biff/drawing/Button;->origin:Ljxl/biff/drawing/Origin;

    sget-object v1, Ljxl/biff/drawing/Origin;->READ:Ljxl/biff/drawing/Origin;

    if-ne v0, v1, :cond_2

    .line 701
    iget-object v0, p0, Ljxl/biff/drawing/Button;->objRecord:Ljxl/biff/drawing/ObjRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 703
    iget-object v0, p0, Ljxl/biff/drawing/Button;->mso:Ljxl/biff/drawing/MsoDrawingRecord;

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 707
    :cond_0
    iget-object v0, p0, Ljxl/biff/drawing/Button;->txo:Ljxl/biff/drawing/TextObjectRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 708
    iget-object v0, p0, Ljxl/biff/drawing/Button;->text:Ljxl/biff/ContinueRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 709
    iget-object v0, p0, Ljxl/biff/drawing/Button;->formatting:Ljxl/biff/ContinueRecord;

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 716
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 719
    new-instance v1, Ljxl/biff/drawing/ObjRecord;

    iget v2, p0, Ljxl/biff/drawing/Button;->objectId:I

    sget-object v3, Ljxl/biff/drawing/ObjRecord;->EXCELNOTE:Ljxl/biff/drawing/ObjRecord$ObjType;

    invoke-direct {v1, v2, v3}, Ljxl/biff/drawing/ObjRecord;-><init>(ILjxl/biff/drawing/ObjRecord$ObjType;)V

    .line 722
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 726
    new-instance v1, Ljxl/biff/drawing/ClientTextBox;

    invoke-direct {v1}, Ljxl/biff/drawing/ClientTextBox;-><init>()V

    .line 727
    new-instance v2, Ljxl/biff/drawing/MsoDrawingRecord;

    invoke-virtual {v1}, Ljxl/biff/drawing/ClientTextBox;->getData()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljxl/biff/drawing/MsoDrawingRecord;-><init>([B)V

    .line 728
    invoke-virtual {p1, v2}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 730
    new-instance v1, Ljxl/biff/drawing/TextObjectRecord;

    invoke-virtual {p0}, Ljxl/biff/drawing/Button;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljxl/biff/drawing/TextObjectRecord;-><init>(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 734
    iget-object v1, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 735
    aput-byte v3, v1, v0

    .line 736
    iget-object v4, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    invoke-static {v4, v1, v3}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 738
    new-instance v3, Ljxl/biff/ContinueRecord;

    invoke-direct {v3, v1}, Ljxl/biff/ContinueRecord;-><init>([B)V

    .line 739
    invoke-virtual {p1, v3}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 746
    invoke-static {v0, v1, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 747
    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 749
    iget-object v2, p0, Ljxl/biff/drawing/Button;->commentText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v1, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v2, 0xa

    .line 750
    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 752
    new-instance v0, Ljxl/biff/ContinueRecord;

    invoke-direct {v0, v1}, Ljxl/biff/ContinueRecord;-><init>([B)V

    .line 753
    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    return-void
.end method

.method public writeTailRecords(Ljxl/write/biff/File;)V
    .locals 0

    return-void
.end method
