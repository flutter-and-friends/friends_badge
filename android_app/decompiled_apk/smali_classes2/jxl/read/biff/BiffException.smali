.class public Ljxl/read/biff/BiffException;
.super Ljxl/JXLException;
.source "BiffException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/BiffException$BiffMessage;
    }
.end annotation


# static fields
.field static final corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

.field static final excelFileNotFound:Ljxl/read/biff/BiffException$BiffMessage;

.field static final excelFileTooBig:Ljxl/read/biff/BiffException$BiffMessage;

.field static final expectedGlobals:Ljxl/read/biff/BiffException$BiffMessage;

.field static final passwordProtected:Ljxl/read/biff/BiffException$BiffMessage;

.field static final streamNotFound:Ljxl/read/biff/BiffException$BiffMessage;

.field static final unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

.field static final unrecognizedOLEFile:Ljxl/read/biff/BiffException$BiffMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "Unrecognized biff version"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->unrecognizedBiffVersion:Ljxl/read/biff/BiffException$BiffMessage;

    .line 56
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "Expected globals"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->expectedGlobals:Ljxl/read/biff/BiffException$BiffMessage;

    .line 61
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "Warning:  not all of the excel file could be read"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->excelFileTooBig:Ljxl/read/biff/BiffException$BiffMessage;

    .line 66
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "The input file was not found"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->excelFileNotFound:Ljxl/read/biff/BiffException$BiffMessage;

    .line 71
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "Unable to recognize OLE stream"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->unrecognizedOLEFile:Ljxl/read/biff/BiffException$BiffMessage;

    .line 76
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "Compound file does not contain the specified stream"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->streamNotFound:Ljxl/read/biff/BiffException$BiffMessage;

    .line 81
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "The workbook is password protected"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->passwordProtected:Ljxl/read/biff/BiffException$BiffMessage;

    .line 86
    new-instance v0, Ljxl/read/biff/BiffException$BiffMessage;

    const-string v1, "The file format is corrupt"

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException$BiffMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/BiffException$BiffMessage;)V
    .locals 0

    .line 97
    iget-object p1, p1, Ljxl/read/biff/BiffException$BiffMessage;->message:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljxl/JXLException;-><init>(Ljava/lang/String;)V

    return-void
.end method
