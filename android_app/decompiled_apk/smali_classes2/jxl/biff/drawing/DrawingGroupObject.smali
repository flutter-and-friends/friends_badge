.class public interface abstract Ljxl/biff/drawing/DrawingGroupObject;
.super Ljava/lang/Object;
.source "DrawingGroupObject.java"


# virtual methods
.method public abstract getBlipId()I
.end method

.method public abstract getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;
.end method

.method public abstract getHeight()D
.end method

.method public abstract getImageBytes()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImageData()[B
.end method

.method public abstract getImageFilePath()Ljava/lang/String;
.end method

.method public abstract getMsoDrawingRecord()Ljxl/biff/drawing/MsoDrawingRecord;
.end method

.method public abstract getObjectId()I
.end method

.method public abstract getOrigin()Ljxl/biff/drawing/Origin;
.end method

.method public abstract getReferenceCount()I
.end method

.method public abstract getShapeId()I
.end method

.method public abstract getSpContainer()Ljxl/biff/drawing/EscherContainer;
.end method

.method public abstract getType()Ljxl/biff/drawing/ShapeType;
.end method

.method public abstract getWidth()D
.end method

.method public abstract getX()D
.end method

.method public abstract getY()D
.end method

.method public abstract isFirst()Z
.end method

.method public abstract isFormObject()Z
.end method

.method public abstract setDrawingGroup(Ljxl/biff/drawing/DrawingGroup;)V
.end method

.method public abstract setHeight(D)V
.end method

.method public abstract setObjectId(III)V
.end method

.method public abstract setReferenceCount(I)V
.end method

.method public abstract setWidth(D)V
.end method

.method public abstract setX(D)V
.end method

.method public abstract setY(D)V
.end method

.method public abstract writeAdditionalRecords(Ljxl/write/biff/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTailRecords(Ljxl/write/biff/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
