.class Ljxl/write/biff/BOFRecord;
.super Ljxl/biff/WritableRecordData;
.source "BOFRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/BOFRecord$SheetBOF;,
        Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;
    }
.end annotation


# static fields
.field public static final sheet:Ljxl/write/biff/BOFRecord$SheetBOF;

.field public static final workbookGlobals:Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;


# instance fields
.field private data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;-><init>(Ljxl/write/biff/BOFRecord$1;)V

    sput-object v0, Ljxl/write/biff/BOFRecord;->workbookGlobals:Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;

    .line 42
    new-instance v0, Ljxl/write/biff/BOFRecord$SheetBOF;

    invoke-direct {v0, v1}, Ljxl/write/biff/BOFRecord$SheetBOF;-><init>(Ljxl/write/biff/BOFRecord$1;)V

    sput-object v0, Ljxl/write/biff/BOFRecord;->sheet:Ljxl/write/biff/BOFRecord$SheetBOF;

    return-void
.end method

.method public constructor <init>(Ljxl/write/biff/BOFRecord$SheetBOF;)V
    .locals 0

    .line 82
    sget-object p1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 86
    fill-array-data p1, :array_0

    iput-object p1, p0, Ljxl/write/biff/BOFRecord;->data:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x6t
        0x10t
        0x0t
        -0xet
        0x15t
        -0x34t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljxl/write/biff/BOFRecord$WorkbookGlobalsBOF;)V
    .locals 0

    .line 51
    sget-object p1, Ljxl/biff/Type;->BOF:Ljxl/biff/Type;

    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 55
    fill-array-data p1, :array_0

    iput-object p1, p0, Ljxl/write/biff/BOFRecord;->data:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x6t
        0x5t
        0x0t
        -0xet
        0x15t
        -0x34t
        0x7t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 113
    iget-object v0, p0, Ljxl/write/biff/BOFRecord;->data:[B

    return-object v0
.end method
