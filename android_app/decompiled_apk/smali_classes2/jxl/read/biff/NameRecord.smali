.class public Ljxl/read/biff/NameRecord;
.super Ljxl/biff/RecordData;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/NameRecord$NameRange;,
        Ljxl/read/biff/NameRecord$Biff7;
    }
.end annotation


# static fields
.field private static final areaReference:I = 0x3b

.field public static biff7:Ljxl/read/biff/NameRecord$Biff7; = null

.field private static final builtIn:I = 0x20

.field private static final cellReference:I = 0x3a

.field static synthetic class$jxl$read$biff$NameRecord:Ljava/lang/Class; = null

.field private static final commandMacro:I = 0xc

.field private static logger:Lcommon/Logger; = null

.field private static final subExpression:I = 0x29

.field private static final union:I = 0x10


# instance fields
.field private builtInName:Ljxl/biff/BuiltInName;

.field private index:I

.field private isbiff8:Z

.field private name:Ljava/lang/String;

.field private ranges:Ljava/util/ArrayList;

.field private sheetRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget-object v0, Ljxl/read/biff/NameRecord;->class$jxl$read$biff$NameRecord:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "jxl.read.biff.NameRecord"

    invoke-static {v0}, Ljxl/read/biff/NameRecord;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/NameRecord;->class$jxl$read$biff$NameRecord:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lcommon/Logger;->getLogger(Ljava/lang/Class;)Lcommon/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/NameRecord;->logger:Lcommon/Logger;

    .line 74
    new-instance v0, Ljxl/read/biff/NameRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/NameRecord$Biff7;-><init>(Ljxl/read/biff/NameRecord$1;)V

    sput-object v0, Ljxl/read/biff/NameRecord;->biff7:Ljxl/read/biff/NameRecord$Biff7;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;I)V
    .locals 16

    move-object/from16 v7, p0

    .line 199
    invoke-direct/range {p0 .. p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    const/4 v8, 0x0

    .line 63
    iput v8, v7, Ljxl/read/biff/NameRecord;->sheetRef:I

    move/from16 v0, p3

    .line 200
    iput v0, v7, Ljxl/read/biff/NameRecord;->index:I

    const/4 v9, 0x1

    .line 201
    iput-boolean v9, v7, Ljxl/read/biff/NameRecord;->isbiff8:Z

    .line 205
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    .line 207
    invoke-virtual/range {p0 .. p0}, Ljxl/read/biff/NameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v10

    .line 208
    aget-byte v0, v10, v8

    aget-byte v1, v10, v9

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/4 v1, 0x3

    .line 209
    aget-byte v1, v10, v1

    const/16 v2, 0x8

    .line 210
    aget-byte v2, v10, v2

    const/16 v3, 0x9

    aget-byte v3, v10, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, v7, Ljxl/read/biff/NameRecord;->sheetRef:I

    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0xf

    if-eqz v2, :cond_0

    .line 214
    aget-byte v2, v10, v3

    invoke-static {v2}, Ljxl/biff/BuiltInName;->getBuiltInName(I)Ljxl/biff/BuiltInName;

    move-result-object v2

    iput-object v2, v7, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 218
    invoke-static {v10, v1, v3, v2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_1

    return-void

    :cond_1
    add-int/2addr v1, v3

    .line 229
    aget-byte v0, v10, v1

    const/16 v11, 0x3a

    const/high16 v12, 0xc0000

    if-ne v0, v11, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 231
    aget-byte v0, v10, v0

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v10, v2

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 v0, v1, 0x3

    .line 232
    aget-byte v0, v10, v0

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, v10, v3

    invoke-static {v0, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 v0, v1, 0x5

    .line 233
    aget-byte v0, v10, v0

    add-int/lit8 v1, v1, 0x6

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_2

    const/4 v8, 0x1

    .line 237
    :cond_2
    invoke-static {v8}, Lcommon/Assert;->verify(Z)V

    .line 239
    new-instance v8, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, v8

    move-object/from16 v1, p0

    move v3, v5

    move v4, v6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 240
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 242
    :cond_3
    aget-byte v0, v10, v1

    const/16 v13, 0x3b

    if-ne v0, v13, :cond_6

    move v11, v1

    .line 252
    :goto_1
    array-length v0, v10

    if-ge v11, v0, :cond_d

    add-int/lit8 v0, v11, 0x1

    .line 254
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x2

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 v0, v11, 0x3

    .line 255
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x4

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    add-int/lit8 v0, v11, 0x5

    .line 256
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x6

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 v0, v11, 0x7

    .line 258
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x8

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 262
    :goto_2
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    add-int/lit8 v0, v11, 0x9

    .line 264
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0xa

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    .line 268
    :goto_3
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 270
    new-instance v13, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 271
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0xb

    goto :goto_1

    .line 276
    :cond_6
    aget-byte v0, v10, v1

    const/16 v14, 0x29

    if-ne v0, v14, :cond_d

    .line 287
    array-length v0, v10

    if-ge v1, v0, :cond_8

    aget-byte v0, v10, v1

    if-eq v0, v11, :cond_8

    aget-byte v0, v10, v1

    if-eq v0, v13, :cond_8

    .line 291
    aget-byte v0, v10, v1

    if-ne v0, v14, :cond_7

    add-int/lit8 v1, v1, 0x3

    goto :goto_4

    .line 295
    :cond_7
    aget-byte v0, v10, v1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    :goto_4
    move v15, v1

    .line 301
    :goto_5
    array-length v0, v10

    if-ge v15, v0, :cond_d

    add-int/lit8 v0, v15, 0x1

    .line 303
    aget-byte v0, v10, v0

    add-int/lit8 v1, v15, 0x2

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 v0, v15, 0x3

    .line 304
    aget-byte v0, v10, v0

    add-int/lit8 v1, v15, 0x4

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    add-int/lit8 v0, v15, 0x5

    .line 305
    aget-byte v0, v10, v0

    add-int/lit8 v1, v15, 0x6

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 v0, v15, 0x7

    .line 307
    aget-byte v0, v10, v0

    add-int/lit8 v1, v15, 0x8

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    .line 311
    :goto_6
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    add-int/lit8 v0, v15, 0x9

    .line 313
    aget-byte v0, v10, v0

    add-int/lit8 v1, v15, 0xa

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    .line 317
    :goto_7
    invoke-static {v0}, Lcommon/Assert;->verify(Z)V

    .line 319
    new-instance v1, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, v1

    move-object v8, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 320
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0xb

    .line 325
    array-length v0, v10

    if-ge v15, v0, :cond_c

    aget-byte v0, v10, v15

    if-eq v0, v11, :cond_c

    aget-byte v0, v10, v15

    if-eq v0, v13, :cond_c

    .line 329
    aget-byte v0, v10, v15

    if-ne v0, v14, :cond_b

    add-int/lit8 v15, v15, 0x3

    goto :goto_8

    .line 333
    :cond_b
    aget-byte v0, v10, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_c

    add-int/lit8 v15, v15, 0x1

    :cond_c
    :goto_8
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 346
    :catchall_0
    sget-object v0, Ljxl/read/biff/NameRecord;->logger:Lcommon/Logger;

    const-string v1, "Cannot read name"

    invoke-virtual {v0, v1}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    const-string v0, "ERROR"

    .line 347
    iput-object v0, v7, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    :cond_d
    :goto_9
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;ILjxl/read/biff/NameRecord$Biff7;)V
    .locals 11

    .line 361
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    .line 362
    iput p3, p0, Ljxl/read/biff/NameRecord;->index:I

    .line 363
    iput-boolean p1, p0, Ljxl/read/biff/NameRecord;->isbiff8:Z

    .line 367
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    .line 368
    invoke-virtual {p0}, Ljxl/read/biff/NameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p3, 0x3

    .line 369
    aget-byte p3, p1, p3

    const/16 p4, 0x8

    .line 370
    aget-byte p4, p1, p4

    const/16 v0, 0x9

    aget-byte v0, p1, v0

    invoke-static {p4, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p4

    iput p4, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    const/16 p4, 0xe

    .line 371
    invoke-static {p1, p3, p4, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    add-int/2addr p3, p4

    .line 375
    array-length p2, p1

    if-lt p3, p2, :cond_0

    return-void

    .line 381
    :cond_0
    aget-byte p2, p1, p3

    const/16 p4, 0x3a

    if-ne p2, p4, :cond_1

    add-int/lit8 p2, p3, 0xb

    .line 383
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0xc

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 p2, p3, 0xf

    .line 384
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0x10

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 p3, p3, 0x11

    .line 385
    aget-byte v5, p1, p3

    .line 387
    new-instance p1, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, p1

    move-object v1, p0

    move v3, v5

    move v4, v6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 388
    iget-object p2, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 390
    :cond_1
    aget-byte p2, p1, p3

    const/16 v0, 0x3b

    if-ne p2, v0, :cond_2

    .line 399
    :goto_0
    array-length p2, p1

    if-ge p3, p2, :cond_6

    add-int/lit8 p2, p3, 0xb

    .line 401
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0xc

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 p2, p3, 0xf

    .line 402
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0x10

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    add-int/lit8 p2, p3, 0x11

    .line 403
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0x12

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 p2, p3, 0x13

    .line 405
    aget-byte v3, p1, p2

    add-int/lit8 p2, p3, 0x14

    .line 406
    aget-byte v5, p1, p2

    .line 408
    new-instance p2, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 409
    iget-object p4, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x15

    goto :goto_0

    .line 414
    :cond_2
    aget-byte p2, p1, p3

    const/16 v1, 0x29

    if-ne p2, v1, :cond_6

    .line 425
    array-length p2, p1

    const/16 v2, 0x10

    if-ge p3, p2, :cond_4

    aget-byte p2, p1, p3

    if-eq p2, p4, :cond_4

    aget-byte p2, p1, p3

    if-eq p2, v0, :cond_4

    .line 429
    aget-byte p2, p1, p3

    if-ne p2, v1, :cond_3

    :goto_1
    add-int/lit8 p3, p3, 0x3

    goto :goto_3

    .line 433
    :cond_3
    aget-byte p2, p1, p3

    if-ne p2, v2, :cond_4

    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 439
    :cond_4
    :goto_3
    array-length p2, p1

    if-ge p3, p2, :cond_6

    add-int/lit8 p2, p3, 0xb

    .line 441
    aget-byte p2, p1, p2

    add-int/lit8 v3, p3, 0xc

    aget-byte v3, p1, v3

    invoke-static {p2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 p2, p3, 0xf

    .line 442
    aget-byte p2, p1, p2

    add-int/lit8 v3, p3, 0x10

    aget-byte v3, p1, v3

    invoke-static {p2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v8

    add-int/lit8 p2, p3, 0x11

    .line 443
    aget-byte p2, p1, p2

    add-int/lit8 v3, p3, 0x12

    aget-byte v3, p1, v3

    invoke-static {p2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v10

    add-int/lit8 p2, p3, 0x13

    .line 445
    aget-byte v7, p1, p2

    add-int/lit8 p2, p3, 0x14

    .line 446
    aget-byte v9, p1, p2

    .line 448
    new-instance p2, Ljxl/read/biff/NameRecord$NameRange;

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 449
    iget-object v3, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x15

    .line 454
    array-length p2, p1

    if-ge p3, p2, :cond_4

    aget-byte p2, p1, p3

    if-eq p2, p4, :cond_4

    aget-byte p2, p1, p3

    if-eq p2, v0, :cond_4

    .line 458
    aget-byte p2, p1, p3

    if-ne p2, v1, :cond_5

    goto :goto_1

    .line 462
    :cond_5
    aget-byte p2, p1, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v2, :cond_4

    goto :goto_2

    .line 475
    :catchall_0
    sget-object p1, Ljxl/read/biff/NameRecord;->logger:Lcommon/Logger;

    const-string p2, "Cannot read name."

    invoke-virtual {p1, p2}, Lcommon/Logger;->warn(Ljava/lang/Object;)V

    const-string p1, "ERROR"

    .line 476
    iput-object p1, p0, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    :cond_6
    :goto_4
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 42
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


# virtual methods
.method public getBuiltInName()Ljxl/biff/BuiltInName;
    .locals 1

    .line 497
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 549
    invoke-virtual {p0}, Ljxl/read/biff/NameRecord;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method getIndex()I
    .locals 1

    .line 519
    iget v0, p0, Ljxl/read/biff/NameRecord;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 487
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()[Ljxl/read/biff/NameRecord$NameRange;
    .locals 2

    .line 508
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/NameRecord$NameRange;

    .line 509
    iget-object v1, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/read/biff/NameRecord$NameRange;

    return-object v0
.end method

.method public getSheetRef()I
    .locals 1

    .line 530
    iget v0, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    return v0
.end method

.method public isBiff8()Z
    .locals 1

    .line 559
    iget-boolean v0, p0, Ljxl/read/biff/NameRecord;->isbiff8:Z

    return v0
.end method

.method public isGlobal()Z
    .locals 1

    .line 569
    iget v0, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSheetRef(I)V
    .locals 0

    .line 539
    iput p1, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    return-void
.end method
