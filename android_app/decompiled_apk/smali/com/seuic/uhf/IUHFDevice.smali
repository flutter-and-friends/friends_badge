.class public interface abstract Lcom/seuic/uhf/IUHFDevice;
.super Ljava/lang/Object;
.source "IUHFDevice.java"


# virtual methods
.method public abstract IOControl(I[BI[BII)Z
.end method

.method public abstract blockEraseTagData([B[BIII)Z
.end method

.method public abstract blockWriteTagData([B[BIII[B)Z
.end method

.method public abstract close()V
.end method

.method public abstract getFirmwareVersion()Ljava/lang/String;
.end method

.method public abstract getPower()I
.end method

.method public abstract getRegion()Ljava/lang/String;
.end method

.method public abstract getTagIDCount()I
.end method

.method public abstract getTagIDs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/seuic/uhf/EPC;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTemperature()Ljava/lang/String;
.end method

.method public abstract inventoryOnce(Lcom/seuic/uhf/EPC;I)Z
.end method

.method public abstract inventorySelectStart([BII)Z
.end method

.method public abstract inventoryStart()Z
.end method

.method public abstract inventoryStop()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isopen()Z
.end method

.method public abstract killTag([B[B)Z
.end method

.method public abstract lockTag([B[BI)Z
.end method

.method public abstract open()Z
.end method

.method public abstract readTagData([B[BIII[B)Z
.end method

.method public abstract readTagLED([B[BI)Z
.end method

.method public abstract readTagTemperature([B[BI)D
.end method

.method public abstract registerReadTags(Lcom/seuic/uhf/IReadTagsListener;)V
.end method

.method public abstract setParamBytes(I[B)Z
.end method

.method public abstract setParameters(II)Z
.end method

.method public abstract setPower(I)Z
.end method

.method public abstract setRegion(Ljava/lang/String;)Z
.end method

.method public abstract unregisterReadTags(Lcom/seuic/uhf/IReadTagsListener;)V
.end method

.method public abstract writeTagData([B[BIII[B)Z
.end method
