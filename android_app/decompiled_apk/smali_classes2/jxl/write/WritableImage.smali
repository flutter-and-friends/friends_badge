.class public Ljxl/write/WritableImage;
.super Ljxl/biff/drawing/Drawing;
.source "WritableImage.java"


# static fields
.field public static MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

.field public static NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Ljxl/biff/drawing/Drawing;->MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    sput-object v0, Ljxl/write/WritableImage;->MOVE_AND_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 50
    sget-object v0, Ljxl/biff/drawing/Drawing;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    sput-object v0, Ljxl/write/WritableImage;->MOVE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    .line 57
    sget-object v0, Ljxl/biff/drawing/Drawing;->NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    sput-object v0, Ljxl/write/WritableImage;->NO_MOVE_OR_SIZE_WITH_CELLS:Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    return-void
.end method

.method public constructor <init>(DDDDLjava/io/File;)V
    .locals 0

    .line 73
    invoke-direct/range {p0 .. p9}, Ljxl/biff/drawing/Drawing;-><init>(DDDDLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(DDDD[B)V
    .locals 0

    .line 91
    invoke-direct/range {p0 .. p9}, Ljxl/biff/drawing/Drawing;-><init>(DDDD[B)V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Ljxl/biff/drawing/Drawing;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V

    return-void
.end method


# virtual methods
.method public getColumn()D
    .locals 2

    .line 112
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getX()D

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()D
    .locals 2

    .line 174
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getHeight()D

    move-result-wide v0

    return-wide v0
.end method

.method public getImageAnchor()Ljxl/biff/drawing/Drawing$ImageAnchorProperties;
    .locals 1

    .line 222
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getImageAnchor()Ljxl/biff/drawing/Drawing$ImageAnchorProperties;

    move-result-object v0

    return-object v0
.end method

.method public getImageData()[B
    .locals 1

    .line 206
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getImageData()[B

    move-result-object v0

    return-object v0
.end method

.method public getImageFile()Ljava/io/File;
    .locals 1

    .line 196
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getImageFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getRow()D
    .locals 2

    .line 132
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getY()D

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()D
    .locals 2

    .line 152
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getWidth()D

    move-result-wide v0

    return-wide v0
.end method

.method public setColumn(D)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Ljxl/biff/drawing/Drawing;->setX(D)V

    return-void
.end method

.method public setHeight(D)V
    .locals 0

    .line 186
    invoke-super {p0, p1, p2}, Ljxl/biff/drawing/Drawing;->setHeight(D)V

    return-void
.end method

.method public setImageAnchor(Ljxl/biff/drawing/Drawing$ImageAnchorProperties;)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Ljxl/biff/drawing/Drawing;->setImageAnchor(Ljxl/biff/drawing/Drawing$ImageAnchorProperties;)V

    return-void
.end method

.method public setRow(D)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2}, Ljxl/biff/drawing/Drawing;->setY(D)V

    return-void
.end method

.method public setWidth(D)V
    .locals 0

    .line 164
    invoke-super {p0, p1, p2}, Ljxl/biff/drawing/Drawing;->setWidth(D)V

    return-void
.end method
