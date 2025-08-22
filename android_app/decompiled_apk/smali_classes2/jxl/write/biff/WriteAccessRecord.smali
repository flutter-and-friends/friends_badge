.class Ljxl/write/biff/WriteAccessRecord;
.super Ljxl/biff/WritableRecordData;
.source "WriteAccessRecord.java"


# static fields
.field private static final authorString:Ljava/lang/String; = "Java Excel API"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 50
    sget-object v0, Ljxl/biff/Type;->WRITEACCESS:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    const/16 v0, 0x70

    new-array v0, v0, [B

    .line 52
    iput-object v0, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Java Excel API v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljxl/Workbook;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljxl/biff/StringHelper;->getBytes(Ljava/lang/String;[BI)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget-object v1, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/16 v2, 0x20

    .line 59
    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 70
    iget-object v0, p0, Ljxl/write/biff/WriteAccessRecord;->data:[B

    return-object v0
.end method
