.class Ljxl/write/biff/SupbookRecord;
.super Ljxl/biff/WritableRecordData;
.source "SupbookRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/write/biff/SupbookRecord$SupbookType;
    }
.end annotation


# static fields
.field public static final ADDIN:Ljxl/write/biff/SupbookRecord$SupbookType;

.field public static final EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

.field public static final INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

.field public static final LINK:Ljxl/write/biff/SupbookRecord$SupbookType;

.field public static final UNKNOWN:Ljxl/write/biff/SupbookRecord$SupbookType;

.field static synthetic class$jxl$write$biff$SupbookRecord:Ljava/lang/Class;

.field private static logger:Lcommon/Logger;


# instance fields
.field private data:[B

.field private fileName:Ljava/lang/String;

.field private numSheets:I

.field private sheetNames:[Ljava/lang/String;

.field private type:Ljxl/write/biff/SupbookRecord$SupbookType;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    sget-object v0, Ljxl/write/biff/SupbookRecord;->class$jxl$write$biff$SupbookRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.write.biff.SupbookRecord"

    invoke-static {v0}, Ljxl/write/biff/SupbookRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SupbookRecord;->class$jxl$write$biff$SupbookRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SupbookRecord;->logger:Lcommon/Logger;

    .line 78
    new-instance v0, Ljxl/write/biff/SupbookRecord$SupbookType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/write/biff/SupbookRecord$SupbookType;-><init>(Ljxl/write/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 79
    new-instance v0, Ljxl/write/biff/SupbookRecord$SupbookType;

    invoke-direct {v0, v1}, Ljxl/write/biff/SupbookRecord$SupbookType;-><init>(Ljxl/write/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 80
    new-instance v0, Ljxl/write/biff/SupbookRecord$SupbookType;

    invoke-direct {v0, v1}, Ljxl/write/biff/SupbookRecord$SupbookType;-><init>(Ljxl/write/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/write/biff/SupbookRecord;->ADDIN:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 81
    new-instance v0, Ljxl/write/biff/SupbookRecord$SupbookType;

    invoke-direct {v0, v1}, Ljxl/write/biff/SupbookRecord$SupbookType;-><init>(Ljxl/write/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/write/biff/SupbookRecord;->LINK:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 82
    new-instance v0, Ljxl/write/biff/SupbookRecord$SupbookType;

    invoke-direct {v0, v1}, Ljxl/write/biff/SupbookRecord$SupbookType;-><init>(Ljxl/write/biff/SupbookRecord$1;)V

    sput-object v0, Ljxl/write/biff/SupbookRecord;->UNKNOWN:Ljxl/write/biff/SupbookRecord$SupbookType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    sget-object v0, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 90
    sget-object v0, Ljxl/write/biff/SupbookRecord;->ADDIN:Ljxl/write/biff/SupbookRecord$SupbookType;

    iput-object v0, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public constructor <init>(ILjxl/WorkbookSettings;)V
    .locals 1

    .line 106
    sget-object v0, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 108
    iput p1, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    .line 109
    sget-object p1, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    iput-object p1, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 110
    iput-object p2, p0, Ljxl/write/biff/SupbookRecord;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljxl/WorkbookSettings;)V
    .locals 1

    .line 121
    sget-object v0, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 123
    iput-object p1, p0, Ljxl/write/biff/SupbookRecord;->fileName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 124
    iput p1, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 125
    iput-object p1, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    .line 126
    iput-object p2, p0, Ljxl/write/biff/SupbookRecord;->workbookSettings:Ljxl/WorkbookSettings;

    .line 128
    sget-object p1, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    iput-object p1, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/SupbookRecord;Ljxl/WorkbookSettings;)V
    .locals 2

    .line 136
    sget-object v0, Ljxl/biff/Type;->SUPBOOK:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 138
    iput-object p2, p0, Ljxl/write/biff/SupbookRecord;->workbookSettings:Ljxl/WorkbookSettings;

    .line 139
    invoke-virtual {p1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object p2

    sget-object v0, Ljxl/read/biff/SupbookRecord;->INTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne p2, v0, :cond_0

    .line 141
    sget-object p2, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    iput-object p2, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 142
    invoke-virtual {p1}, Ljxl/read/biff/SupbookRecord;->getNumberOfSheets()I

    move-result p2

    iput p2, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object p2

    sget-object v0, Ljxl/read/biff/SupbookRecord;->EXTERNAL:Ljxl/read/biff/SupbookRecord$Type;

    if-ne p2, v0, :cond_1

    .line 146
    sget-object p2, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    iput-object p2, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    .line 147
    invoke-virtual {p1}, Ljxl/read/biff/SupbookRecord;->getNumberOfSheets()I

    move-result p2

    iput p2, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    .line 148
    invoke-virtual {p1}, Ljxl/read/biff/SupbookRecord;->getFileName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ljxl/write/biff/SupbookRecord;->fileName:Ljava/lang/String;

    .line 149
    iget p2, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 151
    :goto_0
    iget v0, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    if-ge p2, v0, :cond_1

    .line 153
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljxl/read/biff/SupbookRecord;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljxl/read/biff/SupbookRecord;->getType()Ljxl/read/biff/SupbookRecord$Type;

    move-result-object p1

    sget-object p2, Ljxl/read/biff/SupbookRecord;->ADDIN:Ljxl/read/biff/SupbookRecord$Type;

    if-ne p1, p2, :cond_2

    .line 159
    sget-object p1, Ljxl/write/biff/SupbookRecord;->logger:Lcommon/Logger;

    const-string p2, "Supbook type is addin"

    invoke-virtual {p1, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 41
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

.method private initAddin()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 246
    fill-array-data v0, :array_0

    iput-object v0, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3at
    .end array-data
.end method

.method private initExternal()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 206
    :goto_0
    iget v3, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    if-ge v1, v3, :cond_0

    .line 208
    iget-object v3, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v1, p0, Ljxl/write/biff/SupbookRecord;->fileName:Ljava/lang/String;

    iget-object v3, p0, Ljxl/write/biff/SupbookRecord;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-static {v1, v3}, Ljxl/biff/EncodedURLHelper;->getEncodedURL(Ljava/lang/String;Ljxl/WorkbookSettings;)[B

    move-result-object v1

    .line 213
    array-length v3, v1

    const/4 v4, 0x6

    add-int/2addr v3, v4

    iget v5, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    mul-int/lit8 v6, v5, 0x3

    add-int/2addr v3, v6

    const/4 v6, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    .line 217
    new-array v2, v3, [B

    iput-object v2, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    .line 219
    iget-object v2, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    invoke-static {v5, v2, v0}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 224
    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget-object v5, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    invoke-static {v2, v5, v6}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 225
    iget-object v2, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    const/4 v5, 0x4

    aput-byte v0, v2, v5

    const/4 v7, 0x5

    .line 226
    aput-byte v3, v2, v7

    .line 227
    array-length v7, v1

    invoke-static {v1, v0, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    array-length v1, v1

    add-int/2addr v1, v5

    add-int/2addr v1, v6

    .line 232
    :goto_1
    iget-object v2, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 234
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    invoke-static {v2, v4, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 235
    iget-object v2, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    add-int/lit8 v4, v1, 0x2

    aput-byte v3, v2, v4

    .line 236
    iget-object v4, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    add-int/lit8 v5, v1, 0x3

    invoke-static {v4, v2, v5}, Ljxl/biff/StringHelper;->getUnicodeBytes(Ljava/lang/String;[BI)V

    .line 237
    iget-object v2, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private initInternal()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 179
    iput-object v1, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    .line 181
    iget v1, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    iget-object v2, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 182
    iget-object v1, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    .line 183
    aput-byte v0, v1, v2

    .line 184
    sget-object v0, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    iput-object v0, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    return-void
.end method

.method private initInternal(Ljxl/read/biff/SupbookRecord;)V
    .locals 0

    .line 170
    invoke-virtual {p1}, Ljxl/read/biff/SupbookRecord;->getNumberOfSheets()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    .line 171
    invoke-direct {p0}, Ljxl/write/biff/SupbookRecord;->initInternal()V

    return-void
.end method


# virtual methods
.method adjustInternal(I)V
    .locals 2

    .line 195
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    sget-object v1, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 196
    iput p1, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    .line 197
    invoke-direct {p0}, Ljxl/write/biff/SupbookRecord;->initInternal()V

    return-void
.end method

.method public getData()[B
    .locals 2

    .line 256
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    sget-object v1, Ljxl/write/biff/SupbookRecord;->INTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v0, v1, :cond_0

    .line 258
    invoke-direct {p0}, Ljxl/write/biff/SupbookRecord;->initInternal()V

    goto :goto_0

    .line 260
    :cond_0
    sget-object v1, Ljxl/write/biff/SupbookRecord;->EXTERNAL:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v0, v1, :cond_1

    .line 262
    invoke-direct {p0}, Ljxl/write/biff/SupbookRecord;->initExternal()V

    goto :goto_0

    .line 264
    :cond_1
    sget-object v1, Ljxl/write/biff/SupbookRecord;->ADDIN:Ljxl/write/biff/SupbookRecord$SupbookType;

    if-ne v0, v1, :cond_2

    .line 266
    invoke-direct {p0}, Ljxl/write/biff/SupbookRecord;->initAddin()V

    goto :goto_0

    .line 270
    :cond_2
    sget-object v0, Ljxl/write/biff/SupbookRecord;->logger:Lcommon/Logger;

    const-string v1, "unsupported supbook type - defaulting to internal"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    .line 271
    invoke-direct {p0}, Ljxl/write/biff/SupbookRecord;->initInternal()V

    .line 274
    :goto_0
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->data:[B

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfSheets()I
    .locals 1

    .line 295
    iget v0, p0, Ljxl/write/biff/SupbookRecord;->numSheets:I

    return v0
.end method

.method public getSheetIndex(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 318
    :goto_0
    iget-object v3, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_1

    if-nez v2, :cond_1

    .line 320
    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    return v0

    .line 333
    :cond_2
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    array-length v1, v0

    add-int/2addr v1, v5

    new-array v1, v1, [Ljava/lang/String;

    .line 334
    array-length v0, v0

    aput-object p1, v1, v0

    .line 335
    iput-object v1, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    .line 336
    iget-object p1, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v5

    return p1
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->sheetNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getType()Ljxl/write/biff/SupbookRecord$SupbookType;
    .locals 1

    .line 284
    iget-object v0, p0, Ljxl/write/biff/SupbookRecord;->type:Ljxl/write/biff/SupbookRecord$SupbookType;

    return-object v0
.end method
