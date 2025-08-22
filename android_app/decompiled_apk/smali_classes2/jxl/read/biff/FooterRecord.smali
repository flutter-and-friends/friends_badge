.class public Ljxl/read/biff/FooterRecord;
.super Ljxl/biff/RecordData;
.source "FooterRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/FooterRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/FooterRecord$Biff7;


# instance fields
.field private footer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljxl/read/biff/FooterRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/FooterRecord$Biff7;-><init>(Ljxl/read/biff/FooterRecord$1;)V

    sput-object v0, Ljxl/read/biff/FooterRecord;->biff7:Ljxl/read/biff/FooterRecord$Biff7;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 4

    .line 51
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 52
    invoke-virtual {p0}, Ljxl/read/biff/FooterRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 54
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 59
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    const/4 v3, 0x2

    .line 61
    aget-byte v3, p1, v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v2, 0x3

    if-eqz v0, :cond_2

    .line 65
    invoke-static {p1, v1, v2}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p1, v1, v2, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;Ljxl/read/biff/FooterRecord$Biff7;)V
    .locals 1

    .line 82
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 83
    invoke-virtual {p0}, Ljxl/read/biff/FooterRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 85
    array-length p3, p1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 90
    aget-byte p3, p1, p3

    const/4 v0, 0x1

    .line 91
    invoke-static {p1, p3, v0, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getFooter()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Ljxl/read/biff/FooterRecord;->footer:Ljava/lang/String;

    return-object v0
.end method
