.class Ljxl/biff/drawing/DggContainer;
.super Ljxl/biff/drawing/EscherContainer;
.source "DggContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    sget-object v0, Ljxl/biff/drawing/EscherRecordType;->DGG_CONTAINER:Ljxl/biff/drawing/EscherRecordType;

    invoke-direct {p0, v0}, Ljxl/biff/drawing/EscherContainer;-><init>(Ljxl/biff/drawing/EscherRecordType;)V

    return-void
.end method
