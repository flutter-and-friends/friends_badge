.class Ljxl/write/biff/StringRecord;
.super Ljxl/biff/WritableRecordData;
.source "StringRecord.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Ljxl/biff/Type;->STRING:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 45
    iput-object p1, p0, Ljxl/write/biff/StringRecord;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 5

    .line 55
    iget-object v0, p0, Ljxl/write/biff/StringRecord;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, 0x3

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 56
    iget-object v3, p0, Ljxl/write/biff/StringRecord;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/4 v3, 0x1

    .line 57
    aput-byte v3, v0, v1

    .line 58
    iget-object v1, p0, Ljxl/write/biff/StringRecord;->value:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    return-object v0
.end method
