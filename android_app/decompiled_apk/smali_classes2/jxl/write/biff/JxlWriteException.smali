.class public Ljxl/write/biff/JxlWriteException;
.super Ljxl/write/WriteException;
.source "JxlWriteException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/JxlWriteException$WriteMessage;
    }
.end annotation


# static fields
.field static cellReferenced:Ljxl/write/biff/JxlWriteException$WriteMessage;

.field static copyPropertySets:Ljxl/write/biff/JxlWriteException$WriteMessage;

.field static formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

.field static maxColumnsExceeded:Ljxl/write/biff/JxlWriteException$WriteMessage;

.field static maxRowsExceeded:Ljxl/write/biff/JxlWriteException$WriteMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljxl/write/biff/JxlWriteException$WriteMessage;

    const-string v1, "Attempt to modify a referenced format"

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException$WriteMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    .line 48
    new-instance v0, Ljxl/write/biff/JxlWriteException$WriteMessage;

    const-string v1, "Cell has already been added to a worksheet"

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException$WriteMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/biff/JxlWriteException;->cellReferenced:Ljxl/write/biff/JxlWriteException$WriteMessage;

    .line 51
    new-instance v0, Ljxl/write/biff/JxlWriteException$WriteMessage;

    const-string v1, "The maximum number of rows permitted on a worksheet been exceeded"

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException$WriteMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/biff/JxlWriteException;->maxRowsExceeded:Ljxl/write/biff/JxlWriteException$WriteMessage;

    .line 55
    new-instance v0, Ljxl/write/biff/JxlWriteException$WriteMessage;

    const-string v1, "The maximum number of columns permitted on a worksheet has been exceeded"

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException$WriteMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/biff/JxlWriteException;->maxColumnsExceeded:Ljxl/write/biff/JxlWriteException$WriteMessage;

    .line 59
    new-instance v0, Ljxl/write/biff/JxlWriteException$WriteMessage;

    const-string v1, "Error encounted when copying additional property sets"

    invoke-direct {v0, v1}, Ljxl/write/biff/JxlWriteException$WriteMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/write/biff/JxlWriteException;->copyPropertySets:Ljxl/write/biff/JxlWriteException$WriteMessage;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V
    .locals 0

    .line 69
    iget-object p1, p1, Ljxl/write/biff/JxlWriteException$WriteMessage;->message:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljxl/write/WriteException;-><init>(Ljava/lang/String;)V

    return-void
.end method
