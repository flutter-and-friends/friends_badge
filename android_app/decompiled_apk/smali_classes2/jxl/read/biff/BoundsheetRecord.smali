.class Ljxl/read/biff/BoundsheetRecord;
.super Ljxl/biff/RecordData;
.source "BoundsheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/BoundsheetRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/BoundsheetRecord$Biff7;


# instance fields
.field private length:I

.field private name:Ljava/lang/String;

.field private offset:I

.field private typeFlag:B

.field private visibilityFlag:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Ljxl/read/biff/BoundsheetRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/BoundsheetRecord$Biff7;-><init>(Ljxl/read/biff/BoundsheetRecord$1;)V

    sput-object v0, Ljxl/read/biff/BoundsheetRecord;->biff7:Ljxl/read/biff/BoundsheetRecord$Biff7;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;)V
    .locals 6

    .line 66
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 67
    invoke-virtual {p0}, Ljxl/read/biff/BoundsheetRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 68
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    invoke-static {v1, v2, v4, v5}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/BoundsheetRecord;->offset:I

    const/4 v1, 0x5

    .line 69
    aget-byte v1, p1, v1

    iput-byte v1, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    const/4 v1, 0x4

    .line 70
    aget-byte v1, p1, v1

    iput-byte v1, p0, Ljxl/read/biff/BoundsheetRecord;->visibilityFlag:B

    const/4 v1, 0x6

    .line 71
    aget-byte v1, p1, v1

    iput v1, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    const/4 v1, 0x7

    .line 73
    aget-byte v1, p1, v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 76
    iget v1, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    new-array v3, v1, [B

    .line 77
    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_0
    iget v1, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    mul-int/lit8 v4, v1, 0x2

    new-array v4, v4, [B

    mul-int/lit8 v1, v1, 0x2

    .line 84
    invoke-static {p1, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v0, "UnicodeLittle"

    invoke-direct {p1, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Error"

    .line 92
    iput-object p1, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/read/biff/BoundsheetRecord$Biff7;)V
    .locals 4

    .line 107
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 108
    invoke-virtual {p0}, Ljxl/read/biff/BoundsheetRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p2, 0x0

    .line 109
    aget-byte v0, p1, p2

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/BoundsheetRecord;->offset:I

    const/4 v0, 0x5

    .line 110
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    const/4 v0, 0x4

    .line 111
    aget-byte v0, p1, v0

    iput-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->visibilityFlag:B

    const/4 v0, 0x6

    .line 112
    aget-byte v0, p1, v0

    iput v0, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    .line 113
    iget v0, p0, Ljxl/read/biff/BoundsheetRecord;->length:I

    new-array v1, v0, [B

    const/4 v2, 0x7

    .line 114
    invoke-static {p1, v2, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Ljxl/read/biff/BoundsheetRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isChart()Z
    .locals 2

    .line 156
    iget-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHidden()Z
    .locals 1

    .line 135
    iget-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->visibilityFlag:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSheet()Z
    .locals 1

    .line 146
    iget-byte v0, p0, Ljxl/read/biff/BoundsheetRecord;->typeFlag:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
