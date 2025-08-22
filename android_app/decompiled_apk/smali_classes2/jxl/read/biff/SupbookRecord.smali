.class public Ljxl/read/biff/SupbookRecord;
.super Ljxl/biff/RecordData;
.source "SupbookRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/SupbookRecord$Type;
    }
.end annotation


# static fields
.field public static final ADDIN:Ljxl/read/biff/SupbookRecord$Type;

.field public static final EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

.field public static final INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

.field public static final LINK:Ljxl/read/biff/SupbookRecord$Type;

.field public static final UNKNOWN:Ljxl/read/biff/SupbookRecord$Type;

.field static synthetic class$jxl$read$biff$SupbookRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private fileName:Ljava/lang/String;

.field private numSheets:I

.field private sheetNames:[Ljava/lang/String;

.field private type:Ljxl/read/biff/SupbookRecord$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    sget-object v0, Ljxl/read/biff/SupbookRecord;->class$jxl$read$biff$SupbookRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.SupbookRecord"

    invoke-static {v0}, Ljxl/read/biff/SupbookRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SupbookRecord;->class$jxl$read$biff$SupbookRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/SupbookRecord;->logger:Lcommon/Logger;

    .line 66
    new-instance v0, Ljxl/read/biff/SupbookRecord$Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/SupbookRecord$Type;-><init>(Ljxl/read/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    .line 67
    new-instance v0, Ljxl/read/biff/SupbookRecord$Type;

    invoke-direct {v0, v1}, Ljxl/read/biff/SupbookRecord$Type;-><init>(Ljxl/read/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    .line 68
    new-instance v0, Ljxl/read/biff/SupbookRecord$Type;

    invoke-direct {v0, v1}, Ljxl/read/biff/SupbookRecord$Type;-><init>(Ljxl/read/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/read/biff/SupbookRecord;->ADDIN:Ljxl/read/biff/SupbookRecord$Type;

    .line 69
    new-instance v0, Ljxl/read/biff/SupbookRecord$Type;

    invoke-direct {v0, v1}, Ljxl/read/biff/SupbookRecord$Type;-><init>(Ljxl/read/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/read/biff/SupbookRecord;->LINK:Ljxl/read/biff/SupbookRecord$Type;

    .line 70
    new-instance v0, Ljxl/read/biff/SupbookRecord$Type;

    invoke-direct {v0, v1}, Ljxl/read/biff/SupbookRecord$Type;-><init>(Ljxl/read/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/read/biff/SupbookRecord;->UNKNOWN:Ljxl/read/biff/SupbookRecord$Type;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;)V
    .locals 6

    .line 80
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 81
    invoke-virtual {p0}, Ljxl/read/biff/SupbookRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    .line 86
    aget-byte v4, p1, v0

    const/4 v5, 0x3

    if-ne v4, v3, :cond_0

    aget-byte v4, p1, v5

    if-ne v4, v2, :cond_0

    .line 88
    sget-object v0, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    iput-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    goto :goto_0

    .line 90
    :cond_0
    aget-byte v0, p1, v0

    if-ne v0, v3, :cond_1

    aget-byte v0, p1, v5

    const/16 v2, 0x3a

    if-ne v0, v2, :cond_1

    .line 92
    sget-object v0, Ljxl/read/biff/SupbookRecord;->ADDIN:Ljxl/read/biff/SupbookRecord$Type;

    iput-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Ljxl/read/biff/SupbookRecord;->UNKNOWN:Ljxl/read/biff/SupbookRecord$Type;

    iput-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    goto :goto_0

    .line 99
    :cond_2
    aget-byte v0, p1, v1

    if-nez v0, :cond_3

    aget-byte v0, p1, v3

    if-nez v0, :cond_3

    .line 101
    sget-object v0, Ljxl/read/biff/SupbookRecord;->LINK:Ljxl/read/biff/SupbookRecord$Type;

    iput-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    goto :goto_0

    .line 105
    :cond_3
    sget-object v0, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    iput-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    .line 108
    :goto_0
    iget-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    sget-object v2, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v0, v2, :cond_4

    .line 110
    aget-byte v0, p1, v1

    aget-byte v1, p1, v3

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/SupbookRecord;->numSheets:I

    .line 113
    :cond_4
    iget-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    sget-object v1, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne v0, v1, :cond_5

    .line 115
    invoke-direct {p0, p1, p2}, Ljxl/read/biff/SupbookRecord;->readExternal([BLjxl/WorkbookSettings;)V

    :cond_5
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 38
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEncodedFilename([BII)Ljava/lang/String;
    .locals 5

    .line 247
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr p2, p3

    :goto_0
    if-ge p3, p2, :cond_4

    .line 251
    aget-byte v1, p1, p3

    int-to-char v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 257
    aget-byte v1, p1, p3

    int-to-char v1, v1

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, ":\\\\"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    const/16 v4, 0x5c

    if-ne v1, v3, :cond_1

    .line 264
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 269
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const-string v1, "..\\"

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/2addr p3, v2

    goto :goto_0

    .line 285
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getUnicodeEncodedFilename([BII)Ljava/lang/String;
    .locals 5

    .line 298
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    :goto_0
    if-ge p3, p2, :cond_4

    .line 302
    aget-byte v2, p1, p3

    add-int/lit8 v3, p3, 0x1

    aget-byte v3, p1, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    int-to-char v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 p3, p3, 0x2

    .line 308
    aget-byte v2, p1, p3

    add-int/lit8 v3, p3, 0x1

    aget-byte v3, p1, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    int-to-char v2, v2

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, ":\\\\"

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v3, 0x5c

    if-ne v2, v1, :cond_1

    .line 315
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v2, "..\\"

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 330
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/2addr p3, v1

    goto :goto_0

    .line 336
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readExternal([BLjxl/WorkbookSettings;)V
    .locals 8

    const/4 v0, 0x0

    .line 127
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    invoke-static {v1, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    iput v1, p0, Ljxl/read/biff/SupbookRecord;->numSheets:I

    const/4 v1, 0x2

    .line 130
    aget-byte v3, p1, v1

    const/4 v4, 0x3

    aget-byte v5, p1, v4

    invoke-static {v3, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v5, 0x4

    .line 133
    aget-byte v5, p1, v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-nez v5, :cond_1

    .line 136
    aget-byte v1, p1, v7

    if-nez v1, :cond_0

    .line 140
    invoke-static {p1, v3, v6, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/SupbookRecord;->fileName:Ljava/lang/String;

    goto :goto_1

    .line 145
    :cond_0
    invoke-direct {p0, p1, v3, v6}, Ljxl/read/biff/SupbookRecord;->getEncodedFilename([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljxl/read/biff/SupbookRecord;->fileName:Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_1
    aget-byte v5, p1, v7

    aget-byte v6, p1, v6

    invoke-static {v5, v6}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v5

    const/4 v6, 0x7

    if-nez v5, :cond_2

    .line 156
    invoke-static {p1, v3, v6}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljxl/read/biff/SupbookRecord;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0, p1, v3, v6}, Ljxl/read/biff/SupbookRecord;->getUnicodeEncodedFilename([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljxl/read/biff/SupbookRecord;->fileName:Ljava/lang/String;

    :goto_0
    mul-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/2addr v3, v6

    .line 166
    iget v1, p0, Ljxl/read/biff/SupbookRecord;->numSheets:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Ljxl/read/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    .line 168
    :goto_2
    iget-object v1, p0, Ljxl/read/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 170
    aget-byte v1, p1, v3

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p1, v5

    invoke-static {v1, v5}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v1

    add-int/lit8 v5, v3, 0x2

    .line 172
    aget-byte v6, p1, v5

    if-nez v6, :cond_3

    .line 174
    iget-object v5, p0, Ljxl/read/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    invoke-static {p1, v1, v6, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v1, v1, 0x3

    :goto_3
    add-int/2addr v3, v1

    goto :goto_4

    .line 177
    :cond_3
    aget-byte v5, p1, v5

    if-ne v5, v2, :cond_4

    .line 179
    iget-object v5, p0, Ljxl/read/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x3

    invoke-static {p1, v1, v6}, Ljxl/biff/StringHelper;->getUnicodeString([BII)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 234
    invoke-virtual {p0}, Ljxl/read/biff/SupbookRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Ljxl/read/biff/SupbookRecord;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 203
    iget v0, p0, Ljxl/read/biff/SupbookRecord;->numSheets:I

    return v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Ljxl/read/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getType()Ljxl/read/biff/SupbookRecord$Type;
    .locals 1

    .line 192
    iget-object v0, p0, Ljxl/read/biff/SupbookRecord;->type:Ljxl/read/biff/SupbookRecord$Type;

    return-object v0
.end method
