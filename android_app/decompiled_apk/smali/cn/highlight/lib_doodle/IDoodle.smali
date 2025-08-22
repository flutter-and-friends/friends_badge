.class public interface abstract Lcn/highlight/lib_doodle/IDoodle;
.super Ljava/lang/Object;
.source "IDoodle.java"


# virtual methods
.method public abstract addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
.end method

.method public abstract addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V
.end method

.method public abstract bottomItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
.end method

.method public abstract clear()V
.end method

.method public abstract clearRedoRecord()V
.end method

.method public abstract downItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
.end method

.method public abstract getAllItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllItem(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllRedoItem()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllRedoItem(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getColor()Lcn/highlight/lib_doodle/IDoodleColor;
.end method

.method public abstract getDoodleBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getDoodleMaxScale()F
.end method

.method public abstract getDoodleMinScale()F
.end method

.method public abstract getDoodleRotation()I
.end method

.method public abstract getDoodleScale()F
.end method

.method public abstract getDoodleTranslationX()F
.end method

.method public abstract getDoodleTranslationY()F
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getItemRecord()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/DoodleRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemRedoRecord()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/DoodleRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPen()Lcn/highlight/lib_doodle/IDoodlePen;
.end method

.method public abstract getRedoItemCount()I
.end method

.method public abstract getShape()Lcn/highlight/lib_doodle/IDoodleShape;
.end method

.method public abstract getSize()F
.end method

.method public abstract getUnitSize()F
.end method

.method public abstract getZoomerScale()F
.end method

.method public abstract isDown(Lcn/highlight/lib_doodle/IDoodleItem;)Z
.end method

.method public abstract isDrawableOutside()Z
.end method

.method public abstract isShowOriginal()Z
.end method

.method public abstract isUp(Lcn/highlight/lib_doodle/IDoodleItem;)Z
.end method

.method public abstract redo(I)Z
.end method

.method public abstract redoRecord()V
.end method

.method public abstract refresh()V
.end method

.method public abstract removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
.end method

.method public abstract save()V
.end method

.method public abstract setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V
.end method

.method public abstract setDoodleMaxScale(F)V
.end method

.method public abstract setDoodleMinScale(F)V
.end method

.method public abstract setDoodleRotation(I)V
.end method

.method public abstract setDoodleScale(FFF)V
.end method

.method public abstract setDoodleTranslation(FF)V
.end method

.method public abstract setDoodleTranslationX(F)V
.end method

.method public abstract setDoodleTranslationY(F)V
.end method

.method public abstract setIsDrawableOutside(Z)V
.end method

.method public abstract setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V
.end method

.method public abstract setShape(Lcn/highlight/lib_doodle/IDoodleShape;)V
.end method

.method public abstract setShowOriginal(Z)V
.end method

.method public abstract setSize(F)V
.end method

.method public abstract setZoomerScale(F)V
.end method

.method public abstract topItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
.end method

.method public abstract undo()Z
.end method

.method public abstract undo(I)Z
.end method

.method public abstract undoRecord(I)V
.end method

.method public abstract upItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
.end method
