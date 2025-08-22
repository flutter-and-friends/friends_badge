.class public Ljxl/write/biff/RowsExceededException;
.super Ljxl/write/biff/JxlWriteException;
.source "RowsExceededException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    sget-object v0, Ljxl/write/biff/RowsExceededException;->maxRowsExceeded:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p0, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    return-void
.end method
