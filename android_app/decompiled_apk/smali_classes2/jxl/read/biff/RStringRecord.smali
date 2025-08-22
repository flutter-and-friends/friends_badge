.class Ljxl/read/biff/RStringRecord;
.super Ljxl/read/biff/CellValue;
.source "RStringRecord.java"

# interfaces
.implements Ljxl/LabelCell;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/RStringRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/RStringRecord$Biff7;


# instance fields
.field private length:I

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljxl/read/biff/RStringRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/RStringRecord$Biff7;-><init>(Ljxl/read/biff/RStringRecord$1;)V

    sput-object v0, Ljxl/read/biff/RStringRecord;->biff7:Ljxl/read/biff/RStringRecord$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;Ljxl/WorkbookSettings;Ljxl/read/biff/RStringRecord$Biff7;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Ljxl/read/biff/CellValue;-><init>(Ljxl/read/biff/Record;Ljxl/biff/FormattingRecords;Ljxl/read/biff/SheetImpl;)V

    .line 62
    invoke-virtual {p0}, Ljxl/read/biff/RStringRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p2, 0x6

    .line 63
    aget-byte p2, p1, p2

    const/4 p3, 0x7

    aget-byte p3, p1, p3

    invoke-static {p2, p3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p2

    iput p2, p0, Ljxl/read/biff/RStringRecord;->length:I

    .line 65
    iget p2, p0, Ljxl/read/biff/RStringRecord;->length:I

    const/16 p3, 0x8

    invoke-static {p1, p2, p3, p4}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/RStringRecord;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Ljxl/read/biff/RStringRecord;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Ljxl/read/biff/RStringRecord;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .locals 1

    .line 95
    sget-object v0, Ljxl/CellType;->LABEL:Ljxl/CellType;

    return-object v0
.end method
