.class public Lcom/handheld/uhfr/UHFRManager;
.super Ljava/lang/Object;
.source "UHFRManager.java"


# static fields
.field private static DEBUG:Z = false

.field private static client:Lcom/gg/reader/api/dal/GClient; = null

.field private static driver:Lcn/com/example/rfid/driver/Driver; = null

.field private static epcList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static gbepcList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static gjbepcList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static isE710:Z = false

.field public static mErr:Lcom/uhf/api/cls/Reader$READER_ERR; = null

.field private static final port:I = 0xd

.field private static reader:Lcom/uhf/api/cls/Reader;

.field private static sSerialPort:Lcn/pda/serialport/SerialPort;

.field private static tag6bList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static type:I

.field private static uhfrManager:Lcom/handheld/uhfr/UHFRManager;


# instance fields
.field Emboption:I

.field private Q:I

.field private final ant:I

.field private final ants:[I

.field count:I

.field public dv:Lcom/uhf/api/cls/Reader$deviceVersion;

.field private fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

.field private filter:Lcom/handheld/uhfr/CusParamFilter;

.field private isEmb:Z

.field private listTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/Reader$TAGINFO;",
            ">;"
        }
    .end annotation
.end field

.field private rPower:I

.field private readListener:Lcom/uhf/api/cls/ReadListener;

.field spiperst:[Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field taginfo:Lcom/uhf/api/cls/Reader$TAGINFO;

.field private wPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->gbepcList:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->gjbepcList:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->tag6bList:Ljava/util/List;

    const/4 v0, -0x1

    .line 128
    sput v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v0, 0x1

    .line 139
    sput-boolean v0, Lcom/handheld/uhfr/UHFRManager;->DEBUG:Z

    const/4 v0, 0x0

    .line 160
    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->uhfrManager:Lcom/handheld/uhfr/UHFRManager;

    const/4 v0, 0x0

    .line 385
    sput-boolean v0, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UHFRManager"

    .line 110
    iput-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->tag:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 112
    iput-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    .line 113
    iput v0, p0, Lcom/handheld/uhfr/UHFRManager;->ant:I

    const-string v3, "0%"

    const-string v4, "5%"

    const-string v5, "10%"

    const-string v6, "15%"

    const-string v7, "20%"

    const-string v8, "25%"

    const-string v9, "30%"

    const-string v10, "35%"

    const-string v11, "40%"

    const-string v12, "45%"

    const-string v13, "50%"

    .line 118
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->spiperst:[Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamFastId;-><init>()V

    iput-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    .line 141
    iput v2, p0, Lcom/handheld/uhfr/UHFRManager;->rPower:I

    .line 142
    iput v2, p0, Lcom/handheld/uhfr/UHFRManager;->wPower:I

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->listTag:Ljava/util/List;

    .line 576
    new-instance v0, Lcom/handheld/uhfr/UHFRManager$1;

    invoke-direct {v0, p0}, Lcom/handheld/uhfr/UHFRManager$1;-><init>(Lcom/handheld/uhfr/UHFRManager;)V

    iput-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->readListener:Lcom/uhf/api/cls/ReadListener;

    .line 949
    new-instance v0, Lcom/uhf/api/cls/Reader$TAGINFO;

    new-instance v1, Lcom/uhf/api/cls/Reader;

    invoke-direct {v1}, Lcom/uhf/api/cls/Reader;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    iput-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->taginfo:Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 1025
    iput v2, p0, Lcom/handheld/uhfr/UHFRManager;->count:I

    .line 1646
    iput v2, p0, Lcom/handheld/uhfr/UHFRManager;->Emboption:I

    .line 1647
    iput-boolean v2, p0, Lcom/handheld/uhfr/UHFRManager;->isEmb:Z

    .line 2977
    iput v2, p0, Lcom/handheld/uhfr/UHFRManager;->Q:I

    return-void
.end method

.method static synthetic access$000(Lcom/handheld/uhfr/UHFRManager;)Ljava/util/List;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/handheld/uhfr/UHFRManager;->listTag:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 96
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 96
    sget-boolean v0, Lcom/handheld/uhfr/UHFRManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-static {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .line 96
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->gbepcList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/List;
    .locals 1

    .line 96
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->gjbepcList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .line 96
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->tag6bList:Ljava/util/List;

    return-object v0
.end method

.method private static connect()Z
    .locals 17

    const-string v0, "FF00031D0C"

    const-string v1, "zeng-"

    const/4 v2, -0x1

    .line 242
    sput v2, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v2, 0x0

    .line 243
    sput-boolean v2, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    const v4, 0x1c200

    const/4 v5, 0x0

    const/16 v6, 0xd

    const/4 v7, 0x1

    .line 248
    :try_start_0
    new-instance v8, Lcn/pda/serialport/SerialPort;

    invoke-direct {v8}, Lcn/pda/serialport/SerialPort;-><init>()V

    invoke-virtual {v8}, Lcn/pda/serialport/SerialPort;->power_5Von()V

    const-wide/16 v8, 0x1f4

    .line 250
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 251
    new-instance v8, Lcn/pda/serialport/SerialPort;

    invoke-direct {v8, v6, v4, v2}, Lcn/pda/serialport/SerialPort;-><init>(III)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    const-string v9, "5A000101010000EBD5"

    .line 254
    invoke-virtual {v8}, Lcn/pda/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 255
    :try_start_2
    invoke-static {v9}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/OutputStream;->write([B)V

    .line 256
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    const-wide/16 v11, 0x14

    .line 257
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    const/16 v9, 0x80

    new-array v9, v9, [B

    .line 259
    invoke-virtual {v8}, Lcn/pda/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 260
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 261
    invoke-static {v9, v13}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v13

    .line 262
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "retStr0:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0xa

    if-lt v14, v15, :cond_0

    const-string v14, "5A00010101"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 265
    sput v2, Lcom/handheld/uhfr/UHFRManager;->type:I

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {v0}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/OutputStream;->write([B)V

    .line 270
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 271
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 272
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v13

    .line 273
    invoke-static {v9, v13}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v13

    .line 274
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retStr1:"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v13, 0x28

    if-le v3, v13, :cond_1

    .line 277
    sput v7, Lcom/handheld/uhfr/UHFRManager;->type:I

    .line 278
    sput-boolean v2, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    :goto_0
    move-object v3, v10

    goto/16 :goto_1

    .line 281
    :cond_1
    invoke-virtual {v8, v6}, Lcn/pda/serialport/SerialPort;->close(I)V

    .line 282
    new-instance v3, Lcn/pda/serialport/SerialPort;

    const v14, 0xe1000

    invoke-direct {v3, v6, v14, v2}, Lcn/pda/serialport/SerialPort;-><init>(III)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 283
    :try_start_3
    invoke-virtual {v3}, Lcn/pda/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 284
    :try_start_4
    invoke-virtual {v3}, Lcn/pda/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 286
    invoke-static {v0}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 287
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 288
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 289
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 290
    invoke-static {v9, v0}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "retStr2:"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v13, :cond_2

    .line 294
    sput v7, Lcom/handheld/uhfr/UHFRManager;->type:I

    .line 295
    sput-boolean v7, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    move-object/from16 v16, v8

    move-object v8, v3

    move-object/from16 v3, v16

    goto :goto_1

    .line 297
    :cond_2
    new-instance v10, Lcn/pda/serialport/SerialPort;

    invoke-direct {v10, v6, v4, v2}, Lcn/pda/serialport/SerialPort;-><init>(III)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v0, "A55A000902000B0D0A"

    .line 299
    invoke-virtual {v10}, Lcn/pda/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 300
    :try_start_6
    invoke-virtual {v10}, Lcn/pda/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 301
    invoke-static {v0}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 302
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 303
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 304
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 305
    invoke-static {v9, v0}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v15, :cond_3

    const-string v8, "connect"

    .line 307
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate \u9510\u8fea retStr: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x2

    .line 308
    sput v8, Lcom/handheld/uhfr/UHFRManager;->type:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    move-object v8, v10

    :goto_1
    if-eqz v3, :cond_4

    .line 319
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_4
    if-eqz v5, :cond_5

    .line 322
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 325
    :cond_5
    invoke-virtual {v8, v6}, Lcn/pda/serialport/SerialPort;->close(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v10

    move-object v10, v3

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    move-object v8, v10

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v10

    move-object v10, v8

    move-object/from16 v8, v16

    goto/16 :goto_11

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move-object v3, v5

    move-object v5, v8

    move-object v8, v10

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v10, v8

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    :goto_4
    move-object/from16 v16, v8

    move-object v8, v3

    move-object v3, v5

    move-object/from16 v5, v16

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v1, v0

    :goto_5
    move-object v8, v3

    goto/16 :goto_11

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    :goto_6
    move-object v8, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    :goto_7
    move-object v3, v5

    move-object v5, v10

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v10, v5

    goto/16 :goto_11

    :catch_a
    move-exception v0

    goto :goto_8

    :catch_b
    move-exception v0

    :goto_8
    move-object v3, v5

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object v8, v5

    move-object v10, v8

    goto/16 :goto_11

    :catch_c
    move-exception v0

    goto :goto_9

    :catch_d
    move-exception v0

    :goto_9
    move-object v3, v5

    move-object v8, v3

    .line 315
    :goto_a
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v5, :cond_6

    .line 319
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    goto :goto_b

    :catch_e
    move-exception v0

    goto :goto_c

    :cond_6
    :goto_b
    if-eqz v3, :cond_7

    .line 322
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    .line 325
    invoke-virtual {v8, v6}, Lcn/pda/serialport/SerialPort;->close(I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_d

    .line 328
    :goto_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    :cond_8
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/handheld/uhfr/UHFRManager;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isE710:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Zeng-"

    invoke-static {v3, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_9

    .line 333
    new-instance v0, Lcom/gg/reader/api/dal/GClient;

    invoke-direct {v0}, Lcom/gg/reader/api/dal/GClient;-><init>()V

    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    .line 334
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    const-string v1, "13:115200"

    invoke-virtual {v0, v1, v2}, Lcom/gg/reader/api/dal/GClient;->openHdSerial(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 335
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->onTagHandler()V

    .line 336
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->hdPowerOn()V

    const-wide/16 v0, 0x64

    .line 338
    :try_start_a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_e

    :catch_f
    move-exception v0

    move-object v1, v0

    .line 340
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_e
    return v7

    :cond_9
    const-string v3, "/dev/ttyMT1"

    if-ne v0, v7, :cond_c

    .line 345
    new-instance v0, Lcom/uhf/api/cls/Reader;

    invoke-direct {v0}, Lcom/uhf/api/cls/Reader;-><init>()V

    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 348
    sget-boolean v0, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    if-eqz v0, :cond_a

    .line 350
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const-string v3, "/dev/ttyMT1:921600"

    invoke-virtual {v0, v3, v7}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    goto :goto_f

    .line 353
    :cond_a
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v3, v7}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 355
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InitReader cusTime: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v4

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_b

    .line 358
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->connect2()Z

    move-result v0

    if-eqz v0, :cond_b

    return v7

    .line 362
    :cond_b
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader;->CloseReader()V

    goto :goto_10

    :cond_c
    const/4 v5, 0x2

    if-ne v0, v5, :cond_e

    .line 365
    new-instance v0, Lcn/com/example/rfid/driver/RfidDriver;

    invoke-direct {v0}, Lcn/com/example/rfid/driver/RfidDriver;-><init>()V

    sput-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    .line 366
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    if-eqz v0, :cond_e

    .line 369
    invoke-virtual {v0, v3, v4}, Lcn/com/example/rfid/driver/Driver;->initRFID(Ljava/lang/String;I)I

    move-result v0

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init+status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e8

    if-ne v1, v0, :cond_d

    goto :goto_10

    :cond_d
    return v7

    .line 379
    :cond_e
    :goto_10
    new-instance v0, Lcn/pda/serialport/SerialPort;

    invoke-direct {v0}, Lcn/pda/serialport/SerialPort;-><init>()V

    invoke-virtual {v0}, Lcn/pda/serialport/SerialPort;->power_5Voff()V

    return v2

    :catchall_7
    move-exception v0

    move-object v1, v0

    move-object v10, v5

    move-object v5, v3

    :goto_11
    if-eqz v10, :cond_f

    .line 319
    :try_start_b
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_13

    :cond_f
    :goto_12
    if-eqz v5, :cond_10

    .line 322
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_10
    if-eqz v8, :cond_11

    .line 325
    invoke-virtual {v8, v6}, Lcn/pda/serialport/SerialPort;->close(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_14

    .line 328
    :goto_13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 330
    :cond_11
    :goto_14
    throw v1
.end method

.method private static connect2()Z
    .locals 8

    .line 437
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 438
    new-instance v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    sget-object v4, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    .line 442
    iget v4, v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    new-array v4, v4, [Lcom/uhf/api/cls/Reader$Inv_Potl;

    iput-object v4, v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    .line 443
    iget v4, v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    new-array v4, v4, [Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 444
    :goto_0
    iget v6, v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    if-ge v5, v6, :cond_0

    .line 445
    new-instance v6, Lcom/uhf/api/cls/Reader$Inv_Potl;

    sget-object v7, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7}, Lcom/uhf/api/cls/Reader$Inv_Potl;-><init>(Lcom/uhf/api/cls/Reader;)V

    const/16 v7, 0x1e

    .line 446
    iput v7, v6, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    .line 447
    aget-object v7, v3, v5

    iput-object v7, v6, Lcom/uhf/api/cls/Reader$Inv_Potl;->potl:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 448
    iget-object v7, v2, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aput-object v6, v7, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 450
    :cond_0
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v5, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_INVPOTL:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v5, v2}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connect2 cusTime: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zeng-"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private static connectE710()Z
    .locals 11

    const-string v0, "connectE710 xinlian retStr: "

    const-string v1, "connect"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 389
    :try_start_0
    new-instance v4, Lcn/pda/serialport/SerialPort;

    invoke-direct {v4}, Lcn/pda/serialport/SerialPort;-><init>()V

    invoke-virtual {v4}, Lcn/pda/serialport/SerialPort;->power_5Von()V

    const-wide/16 v4, 0x1f4

    .line 391
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-string v4, "FF00031D0C"

    .line 394
    new-instance v5, Lcn/pda/serialport/SerialPort;

    const v6, 0xe1000

    const/16 v7, 0xd

    invoke-direct {v5, v7, v6, v2}, Lcn/pda/serialport/SerialPort;-><init>(III)V

    .line 395
    invoke-virtual {v5}, Lcn/pda/serialport/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 396
    invoke-virtual {v5}, Lcn/pda/serialport/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 397
    invoke-static {v4}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/OutputStream;->write([B)V

    .line 398
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const-wide/16 v9, 0x14

    .line 399
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    const/16 v4, 0x80

    new-array v4, v4, [B

    .line 403
    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 404
    invoke-static {v4, v6}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0xa

    if-le v6, v8, :cond_0

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sput v3, Lcom/handheld/uhfr/UHFRManager;->type:I

    .line 409
    :cond_0
    invoke-virtual {v5, v7}, Lcn/pda/serialport/SerialPort;->close(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 413
    :goto_0
    sget v4, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-ne v4, v3, :cond_1

    .line 414
    new-instance v4, Lcom/uhf/api/cls/Reader;

    invoke-direct {v4}, Lcom/uhf/api/cls/Reader;-><init>()V

    sput-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    .line 416
    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const-string v5, "/dev/ttyMT1:921600"

    invoke-virtual {v4, v5, v3}, Lcom/uhf/api/cls/Reader;->InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/uhf/api/cls/Reader$READER_ERR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v4, v0, :cond_1

    .line 419
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->connect2()Z

    .line 428
    sput-boolean v2, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    return v3

    :cond_1
    return v2
.end method

.method public static getInstance()Lcom/handheld/uhfr/UHFRManager;
    .locals 6

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 169
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->uhfrManager:Lcom/handheld/uhfr/UHFRManager;

    if-nez v2, :cond_0

    .line 170
    invoke-static {}, Lcom/handheld/uhfr/UHFRManager;->connect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v2, Lcom/handheld/uhfr/UHFRManager;

    invoke-direct {v2}, Lcom/handheld/uhfr/UHFRManager;-><init>()V

    sput-object v2, Lcom/handheld/uhfr/UHFRManager;->uhfrManager:Lcom/handheld/uhfr/UHFRManager;

    .line 174
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init uhf time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zeng-"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->uhfrManager:Lcom/handheld/uhfr/UHFRManager;

    return-object v0
.end method

.method private log2(D)D
    .locals 2

    const-wide v0, 0x4067c00000000000L    # 190.0

    div-double/2addr p1, v0

    .line 855
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private logPrint(Ljava/lang/String;)V
    .locals 1

    .line 149
    sget-boolean v0, Lcom/handheld/uhfr/UHFRManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "huang,UHFRManager"

    .line 150
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static logPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 155
    sget-boolean v0, Lcom/handheld/uhfr/UHFRManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static onTagHandler()V
    .locals 2

    .line 3175
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$2;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$2;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagEpcLog:Lcom/gg/reader/api/dal/HandlerTagEpcLog;

    .line 3187
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$3;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$3;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagEpcOver:Lcom/gg/reader/api/dal/HandlerTagEpcOver;

    .line 3200
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$4;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$4;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagGbLog:Lcom/gg/reader/api/dal/HandlerTagGbLog;

    .line 3214
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$5;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$5;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagGbOver:Lcom/gg/reader/api/dal/HandlerTagGbOver;

    .line 3223
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$6;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$6;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagGJbLog:Lcom/gg/reader/api/dal/HandlerTagGJbLog;

    .line 3237
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$7;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$7;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTagGJbOver:Lcom/gg/reader/api/dal/HandlerTagGJbOver;

    .line 3246
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$8;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$8;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTag6bLog:Lcom/gg/reader/api/dal/HandlerTag6bLog;

    .line 3260
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    new-instance v1, Lcom/handheld/uhfr/UHFRManager$9;

    invoke-direct {v1}, Lcom/handheld/uhfr/UHFRManager$9;-><init>()V

    iput-object v1, v0, Lcom/gg/reader/api/dal/GClient;->onTag6bOver:Lcom/gg/reader/api/dal/HandlerTag6bOver;

    return-void
.end method

.method public static setBaudrate(I)Z
    .locals 3

    .line 458
    new-instance v0, Lcom/uhf/api/cls/Reader$Default_Param;

    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$Default_Param;-><init>(Lcom/uhf/api/cls/Reader;)V

    const/4 v1, 0x0

    .line 459
    iput-boolean v1, v0, Lcom/uhf/api/cls/Reader$Default_Param;->isdefault:Z

    .line 460
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE_BAUD:Lcom/uhf/api/cls/Reader$Mtr_Param;

    iput-object v2, v0, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    .line 461
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    .line 463
    sget-object p0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE_BAUD:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    .line 465
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static setDebuggable(Z)V
    .locals 0

    .line 145
    sput-boolean p0, Lcom/handheld/uhfr/UHFRManager;->DEBUG:Z

    return-void
.end method

.method private sort([II)[I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 2789
    aget v3, p1, v1

    aget v4, p1, v2

    if-ge v3, v4, :cond_0

    .line 2790
    aget v3, p1, v1

    .line 2791
    aget v4, p1, v2

    aput v4, p1, v1

    .line 2792
    aput v3, p1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public ReadTagLED(ISSLcom/uhf/api/cls/R2000_calibration$TagLED_DATA;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 1

    .line 3127
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_0

    .line 3128
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 3130
    :cond_0
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uhf/api/cls/Reader;->ReadTagLED(ISSLcom/uhf/api/cls/R2000_calibration$TagLED_DATA;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1
.end method

.method public asyncStartReading()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 470
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 471
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    .line 472
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 473
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtCode()B

    move-result v0

    if-nez v0, :cond_3

    .line 474
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 475
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 476
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    .line 477
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {v1}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->getFastId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setParamFastId(Lcom/gg/reader/api/protocol/gx/ParamFastId;)V

    .line 483
    :cond_1
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 484
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgBaseInventoryEpc"

    invoke-static {v2, v1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object v0

    .line 487
    :cond_3
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_4
    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    .line 498
    sget-boolean v0, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    const-string v3, "pang"

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/handheld/uhfr/UHFRManager;->isEmb:Z

    if-nez v0, :cond_6

    const-string v0, "E710 AsyncStartReading"

    .line 500
    invoke-static {v3, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomParam_ST;

    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/uhf/api/cls/Reader$CustomParam_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    const-string v3, "Reader/Ex10fastmode"

    .line 502
    iput-object v3, v0, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    const/16 v3, 0x16

    new-array v3, v3, [B

    aput-byte v1, v3, v2

    const/16 v4, 0x14

    aput-byte v4, v3, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    add-int/lit8 v6, v5, 0x2

    .line 507
    aput-byte v2, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 508
    :cond_5
    iput-object v3, v0, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    .line 509
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 510
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v3, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {v0, v3, v1, v2}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    return-object v0

    .line 535
    :cond_6
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->getGen2session()I

    move-result v0

    const-string v4, "AsyncStartReading"

    .line 536
    invoke-static {v3, v4}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x10

    if-ne v0, v1, :cond_8

    .line 540
    iget-boolean v0, p0, Lcom/handheld/uhfr/UHFRManager;->isEmb:Z

    if-eqz v0, :cond_7

    .line 541
    iget v3, p0, Lcom/handheld/uhfr/UHFRManager;->Emboption:I

    .line 543
    :cond_7
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v2, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    return-object v0

    .line 546
    :cond_8
    iget-boolean v0, p0, Lcom/handheld/uhfr/UHFRManager;->isEmb:Z

    if-eqz v0, :cond_9

    .line 547
    iget v2, p0, Lcom/handheld/uhfr/UHFRManager;->Emboption:I

    .line 549
    :cond_9
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v3, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {v0, v3, v1, v2}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    return-object v0

    .line 563
    :cond_a
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0, v2, v1}, Lcn/com/example/rfid/driver/Driver;->Inventory_Model_Set(IZ)Z

    .line 564
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0, v2}, Lcn/com/example/rfid/driver/Driver;->readMore(I)I

    move-result v0

    const/16 v1, 0x3fc

    if-eq v0, v1, :cond_b

    .line 566
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    .line 569
    :cond_b
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0
.end method

.method public asyncStartReading(I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 589
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 590
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    .line 591
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 592
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtCode()B

    move-result p1

    if-nez p1, :cond_3

    .line 593
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 594
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 595
    invoke-virtual {p1, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    .line 596
    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {v0}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->getFastId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setParamFastId(Lcom/gg/reader/api/protocol/gx/ParamFastId;)V

    .line 602
    :cond_1
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 603
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgBaseInventoryEpc"

    invoke-static {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object p1

    .line 606
    :cond_3
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_4
    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 616
    sget-boolean v0, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    if-eqz v0, :cond_6

    const-string p1, "pang"

    const-string v0, "AsyncStartReading"

    .line 618
    invoke-static {p1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;

    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/uhf/api/cls/Reader$CustomParam_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    const-string v0, "Reader/Ex10fastmode"

    .line 620
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [B

    aput-byte v1, v0, v2

    const/16 v3, 0x14

    aput-byte v3, v0, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    add-int/lit8 v5, v4, 0x2

    .line 625
    aput-byte v2, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 626
    :cond_5
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    .line 627
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, p1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 629
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {p1, v0, v1, v2}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 631
    :cond_6
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v2, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {v0, v2, v1, p1}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    :cond_7
    const-string p1, "0140FD5300000000"

    .line 634
    invoke-virtual {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->setGen2(Ljava/lang/String;)Z

    .line 635
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v2}, Lcn/com/example/rfid/driver/Driver;->readMore(I)I

    move-result p1

    const/16 v0, 0x3fc

    if-eq p1, v0, :cond_8

    .line 637
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 640
    :cond_8
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1
.end method

.method public asyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 647
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_1

    .line 648
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 649
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 650
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtMsg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MsgBaseStop"

    invoke-static {v2, v1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 654
    sget-boolean v0, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    if-eqz v0, :cond_2

    .line 655
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    const-string v1, "pang"

    const-string v2, "asyncStopReading"

    .line 656
    invoke-static {v1, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 664
    :cond_2
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    return-object v0

    .line 669
    :cond_3
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0}, Lcn/com/example/rfid/driver/Driver;->stopRead()V

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cont:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/handheld/uhfr/UHFRManager;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zeng-"

    invoke-static {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0
.end method

.method public cancelEMBEDEDATA()Z
    .locals 5

    .line 1681
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1683
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_EMBEDEDDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1684
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v3, :cond_0

    .line 1685
    iput-boolean v2, p0, Lcom/handheld/uhfr/UHFRManager;->isEmb:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public close()Z
    .locals 4

    .line 180
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 181
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->close()Z

    .line 183
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0}, Lcom/gg/reader/api/dal/GClient;->hdPowerOff()V

    .line 185
    :cond_0
    sput-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_3

    .line 187
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader;->CloseReader()V

    .line 190
    :cond_2
    sput-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    goto :goto_0

    :cond_3
    const-string v0, "zeng-"

    const-string v3, "type2-close"

    .line 193
    invoke-static {v0, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0}, Lcn/com/example/rfid/driver/Driver;->Close_Com()I

    .line 196
    :goto_0
    new-instance v0, Lcn/pda/serialport/SerialPort;

    invoke-direct {v0}, Lcn/pda/serialport/SerialPort;-><init>()V

    invoke-virtual {v0}, Lcn/pda/serialport/SerialPort;->power_5Voff()V

    .line 197
    sput-object v2, Lcom/handheld/uhfr/UHFRManager;->uhfrManager:Lcom/handheld/uhfr/UHFRManager;

    return v1
.end method

.method public format6BData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;",
            ">;"
        }
    .end annotation

    .line 746
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->tag6bList:Ljava/util/List;

    monitor-enter v0

    .line 747
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 748
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 749
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->tag6bList:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->tag6bList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 750
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->tag6bList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 752
    :cond_0
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->tag6bList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 753
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 754
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public formatData()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/handheld/uhfr/Reader$TEMPTAGINFO;",
            ">;"
        }
    .end annotation

    .line 860
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    monitor-enter v0

    .line 861
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 862
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;

    .line 863
    new-instance v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;

    invoke-direct {v4}, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;-><init>()V

    .line 864
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getAntId()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->AntennaID:B

    .line 865
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getFrequencyPoint()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->Frequency:I

    .line 866
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getReplySerialNumber()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->TimeStamp:I

    .line 868
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getUserdata()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    const-string v5, "pang"

    .line 869
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pang, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getUserdata()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getUserdata()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v7, "0000"

    .line 875
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    .line 876
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v9, 0x4

    .line 877
    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double/2addr v5, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v8

    .line 878
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v5, v8

    const/16 v8, 0x2d

    if-le v7, v8, :cond_1

    const-string v8, "temp "

    .line 880
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "temp = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, -0x2d

    int-to-double v10, v7

    add-double/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iput-wide v10, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->Temperature:D

    goto :goto_1

    :cond_1
    const-string v9, "temp "

    .line 883
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "temp = -"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v8, v7

    int-to-double v7, v8

    add-double/2addr v7, v5

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    neg-double v5, v7

    .line 884
    iput-wide v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->Temperature:D

    goto :goto_1

    .line 889
    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v5

    .line 890
    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 892
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getCtesiusLtu31()I

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v6, v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->Temperature:D

    .line 896
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbEpc()[B

    move-result-object v5

    iput-object v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->EpcId:[B

    .line 897
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbEpc()[B

    move-result-object v5

    array-length v5, v5

    int-to-short v5, v5

    iput-short v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->Epclen:S

    .line 898
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getPc()I

    move-result v5

    invoke-static {v5}, Lcom/gg/reader/api/utils/HexUtils;->int2Bytes(I)[B

    move-result-object v5

    iput-object v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->PC:[B

    .line 901
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getCrc()I

    move-result v5

    if-eqz v5, :cond_4

    .line 902
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getCrc()I

    move-result v5

    invoke-static {v5}, Lcom/gg/reader/api/utils/HexUtils;->int2Bytes(I)[B

    move-result-object v5

    iput-object v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->CRC:[B

    .line 904
    :cond_4
    sget-object v5, Lcom/handheld/uhfr/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    iput-object v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->protocol:Lcom/handheld/uhfr/Reader$SL_TagProtocol;

    .line 905
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getPhase()I

    move-result v5

    iput v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->Phase:I

    const-wide v5, -0x3fbc0ccccccccccdL    # -39.9

    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    .line 906
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getRssi()I

    move-result v9

    int-to-double v9, v9

    invoke-direct {p0, v9, v10}, Lcom/handheld/uhfr/UHFRManager;->log2(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    add-double/2addr v9, v5

    .line 907
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v6, v5

    iput v6, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->RSSI:I

    .line 908
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    .line 909
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 910
    iput v6, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->ReadCnt:I

    goto :goto_2

    .line 912
    :cond_5
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;

    if-eqz v5, :cond_6

    .line 914
    iget v7, v5, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->ReadCnt:I

    add-int/2addr v7, v6

    iput v7, v5, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->ReadCnt:I

    .line 915
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 920
    :cond_7
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 921
    iput v6, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->ReadCnt:I

    .line 922
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 924
    :cond_8
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;

    if-eqz v4, :cond_0

    .line 926
    iget v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->ReadCnt:I

    add-int/2addr v5, v6

    iput v5, v4, Lcom/handheld/uhfr/Reader$TEMPTAGINFO;->ReadCnt:I

    .line 927
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 932
    :cond_9
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 933
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 934
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public formatData(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/Reader$TAGINFO;",
            ">;"
        }
    .end annotation

    .line 776
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    monitor-enter v0

    .line 777
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 778
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;

    .line 779
    new-instance v4, Lcom/uhf/api/cls/Reader$TAGINFO;

    new-instance v5, Lcom/uhf/api/cls/Reader;

    invoke-direct {v5}, Lcom/uhf/api/cls/Reader;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 780
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getAntId()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    .line 781
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getFrequencyPoint()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    .line 782
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getReplySerialNumber()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    const/4 v5, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    goto :goto_1

    .line 803
    :cond_1
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getUserdata()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 804
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbUser()[B

    move-result-object v6

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    .line 805
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbUser()[B

    move-result-object v6

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    goto :goto_1

    .line 797
    :cond_2
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 798
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbTid()[B

    move-result-object v6

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    .line 799
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbTid()[B

    move-result-object v6

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    goto :goto_1

    .line 791
    :cond_3
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpcData()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 792
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbEpcData()[B

    move-result-object v6

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    .line 793
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbEpcData()[B

    move-result-object v6

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    goto :goto_1

    .line 785
    :cond_4
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getReserved()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 786
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbRes()[B

    move-result-object v6

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    .line 787
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbRes()[B

    move-result-object v6

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    .line 811
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbEpc()[B

    move-result-object v6

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    .line 812
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getbEpc()[B

    move-result-object v6

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 813
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getPc()I

    move-result v6

    invoke-static {v6}, Lcom/gg/reader/api/utils/HexUtils;->int2Bytes(I)[B

    move-result-object v6

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    .line 816
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getCrc()I

    move-result v6

    if-eqz v6, :cond_6

    .line 817
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getCrc()I

    move-result v6

    invoke-static {v6}, Lcom/gg/reader/api/utils/HexUtils;->int2Bytes(I)[B

    move-result-object v6

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    .line 819
    :cond_6
    sget-object v6, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    iput-object v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->protocol:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 820
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getPhase()I

    move-result v6

    iput v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Phase:I

    const-wide v6, -0x3fbc0ccccccccccdL    # -39.9

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    .line 821
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getRssi()I

    move-result v10

    int-to-double v10, v10

    invoke-direct {p0, v10, v11}, Lcom/handheld/uhfr/UHFRManager;->log2(D)D

    move-result-wide v10

    mul-double v10, v10, v8

    add-double/2addr v10, v6

    .line 822
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    iput v7, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    .line 823
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 824
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 825
    iput v5, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    goto :goto_2

    .line 827
    :cond_7
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/uhf/api/cls/Reader$TAGINFO;

    if-eqz v6, :cond_8

    .line 829
    iget v7, v6, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    add-int/2addr v7, v5

    iput v7, v6, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    .line 830
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_8
    :goto_2
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 835
    :cond_9
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 836
    iput v5, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    .line 837
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 839
    :cond_a
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uhf/api/cls/Reader$TAGINFO;

    if-eqz v4, :cond_0

    .line 841
    iget v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    add-int/2addr v6, v5

    iput v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    .line 842
    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/LogBaseEpcInfo;->getEpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 847
    :cond_b
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->epcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 848
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 849
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public formatExcludeData(I[B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/Reader$TAGINFO;",
            ">;"
        }
    .end annotation

    .line 939
    invoke-virtual {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->formatData(I)Ljava/util/List;

    move-result-object p1

    .line 940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 941
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uhf/api/cls/Reader$TAGINFO;

    .line 942
    iget-object v2, v1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    invoke-static {v2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 943
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public formatGBData(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;",
            ">;"
        }
    .end annotation

    .line 733
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->gbepcList:Ljava/util/List;

    monitor-enter p1

    .line 734
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 736
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gbepcList:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gbepcList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gbepcList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 739
    :cond_0
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gbepcList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 740
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 741
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public formatGJBData(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;",
            ">;"
        }
    .end annotation

    .line 760
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->gjbepcList:Ljava/util/List;

    monitor-enter p1

    .line 761
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 762
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 763
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gjbepcList:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gjbepcList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gjbepcList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 766
    :cond_0
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->gjbepcList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 767
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 768
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBuf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$TAGINFO;
    .locals 9

    .line 1029
    new-instance v0, Lcom/uhf/api/cls/Reader$TAGINFO;

    new-instance v1, Lcom/uhf/api/cls/Reader;

    invoke-direct {v1}, Lcom/uhf/api/cls/Reader;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 1035
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x4

    .line 1036
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 1037
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v6, 0x10

    .line 1038
    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    mul-int/lit8 p1, p1, 0x4

    .line 1039
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x6

    invoke-virtual {v3, p1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 1040
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x6

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x1

    aput-object p1, v1, v7

    .line 1041
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v3, p1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    .line 1043
    aget-object p1, v1, v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eq v2, p1, :cond_0

    const-string p1, "0000"

    aput-object p1, v1, v5

    goto :goto_0

    .line 1046
    :cond_0
    aget-object p1, v1, v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 1047
    aget-object v3, v1, v5

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit16 p1, p1, -0x100

    add-int/2addr p1, v7

    mul-int/lit16 p1, p1, 0x100

    add-int/lit16 v3, v3, -0x100

    add-int/2addr p1, v3

    .line 1048
    div-int/lit8 v4, p1, 0xa

    .line 1051
    :goto_0
    aget-object p1, v1, v7

    invoke-static {p1}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    .line 1052
    aget-object p1, v1, v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/2addr p1, v2

    int-to-short p1, p1

    iput-short p1, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 1053
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    .line 1054
    iget p1, p0, Lcom/handheld/uhfr/UHFRManager;->count:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/handheld/uhfr/UHFRManager;->count:I

    return-object v0
.end method

.method public getFrequencyPoints()[I
    .locals 5

    .line 2502
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2503
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;-><init>()V

    .line 2504
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v3, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2505
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getRtMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MsgBaseGetFrequency"

    invoke-static {v4, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getRtCode()B

    move-result v3

    if-nez v3, :cond_0

    .line 2507
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getListFreqCursor()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 2508
    :goto_0
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getListFreqCursor()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2509
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFrequency;->getListFreqCursor()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    .line 2515
    new-instance v0, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2516
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 2519
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v3, :cond_2

    .line 2520
    iget-object v1, v0, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    iget v0, v0, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    invoke-direct {p0, v1, v0}, Lcom/handheld/uhfr/UHFRManager;->sort([II)[I

    move-result-object v0

    return-object v0

    .line 2523
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrequencyPoints, ParamGet MTR_PARAM_FREQUENCY_HOPTABLE result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    return-object v2

    .line 2528
    :cond_3
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0}, Lcn/com/example/rfid/driver/Driver;->GetFreqTable()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-1000"

    .line 2529
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "-1020"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, "}"

    .line 2532
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    .line 2533
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\,"

    .line 2534
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2535
    array-length v2, v0

    new-array v2, v2, [I

    .line 2536
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_5

    .line 2537
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-object v2
.end method

.method public getGen2session()I
    .locals 5

    .line 2948
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 2949
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    .line 2950
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2951
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGen2session"

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtCode()B

    move-result v2

    if-nez v2, :cond_1

    .line 2953
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getSession()I

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2957
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v0}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 2958
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v4, :cond_1

    .line 2959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGen2session = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pang"

    invoke-static {v3, v1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    aget v0, v0, v2

    return v0

    :cond_1
    return v1

    .line 2964
    :cond_2
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0}, Lcn/com/example/rfid/driver/Driver;->GetGen2Para()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-1000"

    .line 2965
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "-1020"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    const/4 v2, 0x7

    .line 2968
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getHardware()Ljava/lang/String;
    .locals 4

    .line 205
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 206
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;-><init>()V

    .line 208
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 209
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;->getRtMsg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MsgAppGetBaseVersion"

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;->getRtCode()B

    move-result v2

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;->getBaseVersions()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 212
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.1.01."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 225
    new-instance v0, Lcom/uhf/api/cls/Reader$HardwareDetails;

    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/uhf/api/cls/Reader$HardwareDetails;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 226
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2, v0}, Lcom/uhf/api/cls/Reader;->GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 227
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_2

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.1.02."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader$HardwareDetails;->module:Lcom/uhf/api/cls/Reader$Module_Type;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$Module_Type;->value()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "1.1.03"

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 3

    .line 3115
    new-instance v0, Lcom/uhf/api/cls/Reader$HardwareDetails;

    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$HardwareDetails;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3116
    new-instance v1, Lcom/uhf/api/cls/Reader$deviceVersion;

    invoke-direct {v1}, Lcom/uhf/api/cls/Reader$deviceVersion;-><init>()V

    iput-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->dv:Lcom/uhf/api/cls/Reader$deviceVersion;

    .line 3117
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->dv:Lcom/uhf/api/cls/Reader$deviceVersion;

    const-string v2, "/dev/ttyMT1"

    invoke-static {v2, v1}, Lcom/uhf/api/cls/Reader;->GetDeviceVersion(Ljava/lang/String;Lcom/uhf/api/cls/Reader$deviceVersion;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 3118
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1, v0}, Lcom/uhf/api/cls/Reader;->GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_0

    .line 3119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "module:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader$HardwareDetails;->module:Lcom/uhf/api/cls/Reader$Module_Type;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$Module_Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\nhard:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->dv:Lcom/uhf/api/cls/Reader$deviceVersion;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\nsoft:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->dv:Lcom/uhf/api/cls/Reader$deviceVersion;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getPower()[I
    .locals 7

    .line 2627
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 2628
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;-><init>()V

    .line 2629
    sget-object v5, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v5, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2630
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getRtMsg()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MsgBaseGetPower"

    invoke-static {v6, v5}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getRtCode()B

    move-result v5

    if-nez v5, :cond_0

    .line 2632
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getDicPower()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-array v1, v1, [I

    .line 2633
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v3

    return-object v1

    :cond_0
    return-object v2

    :cond_1
    if-ne v0, v3, :cond_3

    new-array v0, v1, [I

    .line 2638
    new-instance v1, Lcom/uhf/api/cls/Reader$AntPowerConf;

    sget-object v5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v5}, Lcom/uhf/api/cls/Reader$AntPowerConf;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2639
    sget-object v5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v5, v6, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v5

    .line 2641
    sget-object v6, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v6, :cond_2

    .line 2642
    iget-object v2, v1, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v2, v2, v4

    iget-short v2, v2, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    div-int/lit8 v2, v2, 0x64

    aput v2, v0, v4

    .line 2643
    iget-object v1, v1, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v1, v1, v4

    iget-short v1, v1, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    div-int/lit8 v1, v1, 0x64

    aput v1, v0, v3

    return-object v0

    .line 2646
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPower, ParamGet MTR_PARAM_RF_ANTPOWER result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    return-object v2

    .line 2651
    :cond_3
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    if-eqz v0, :cond_5

    .line 2652
    invoke-virtual {v0}, Lcn/com/example/rfid/driver/Driver;->GetTxPower()Ljava/lang/String;

    move-result-object v0

    .line 2653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "zeng-"

    invoke-static {v6, v5}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "-1020"

    .line 2654
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "-1000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, ","

    .line 2659
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2660
    aget-object v2, v0, v4

    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2661
    aget-object v5, v0, v3

    array-length v0, v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xa

    .line 2662
    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 2663
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    new-array v1, v1, [I

    aput v2, v1, v4

    aput v0, v1, v3

    return-object v1

    :cond_5
    :goto_0
    return-object v2
.end method

.method public getQvalue()I
    .locals 3

    .line 3010
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 3011
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    .line 3012
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 3013
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtCode()B

    move-result v2

    if-nez v2, :cond_1

    .line 3014
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getqValue()I

    move-result v1

    .line 3015
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getQvalue"

    invoke-static {v2, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3023
    iget v1, p0, Lcom/handheld/uhfr/UHFRManager;->Q:I

    :cond_1
    :goto_0
    return v1
.end method

.method public getRegion()Lcom/uhf/api/cls/Reader$Region_Conf;
    .locals 8

    .line 2447
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x6

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_4

    .line 2448
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;-><init>()V

    .line 2449
    sget-object v6, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v6, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2450
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtMsg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MsgBaseGetFreqRange"

    invoke-static {v7, v6}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getRtCode()B

    move-result v6

    if-nez v6, :cond_3

    .line 2452
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetFreqRange;->getFreqRangeIndex()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2458
    :cond_0
    invoke-static {v2}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    return-object v0

    .line 2456
    :cond_1
    invoke-static {v5}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    return-object v0

    .line 2454
    :cond_2
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    return-object v4

    :cond_4
    if-ne v0, v5, :cond_6

    new-array v0, v5, [Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 2465
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 2467
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 2468
    aget-object v0, v0, v1

    return-object v0

    .line 2470
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegion, ParamGet MTR_PARAM_FREQUENCY_REGION result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    return-object v4

    .line 2475
    :cond_6
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0}, Lcn/com/example/rfid/driver/Driver;->getRegion()Ljava/lang/String;

    move-result-object v0

    const-string v6, "-1000"

    .line 2476
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "-1020"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x2

    .line 2479
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x10

    .line 2480
    invoke-static {v0, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_b

    if-eq v0, v6, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_8

    return-object v4

    .line 2491
    :cond_8
    invoke-static {v5}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    return-object v0

    .line 2488
    :cond_9
    invoke-static {v2}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    return-object v0

    :cond_a
    const/16 v0, 0xa

    .line 2485
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    return-object v0

    .line 2483
    :cond_b
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_1
    return-object v4
.end method

.method public getTagData(III[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    .line 1694
    sget v2, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v3, 0x3

    const/4 v13, 0x1

    if-nez v2, :cond_6

    .line 1695
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v4, 0x1

    .line 1696
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1697
    invoke-virtual {v2, v13}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    if-eqz v0, :cond_3

    if-eq v0, v13, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 1709
    :cond_0
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v3, v10, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    goto :goto_0

    .line 1706
    :cond_1
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v3, v13, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    goto :goto_0

    .line 1703
    :cond_2
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-direct {v3, v10, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadEpc(Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;)V

    goto :goto_0

    .line 1700
    :cond_3
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-direct {v3, v10, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V

    .line 1712
    :goto_0
    invoke-static/range {p5 .. p5}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setHexPassword(Ljava/lang/String;)V

    .line 1713
    iget-object v3, v1, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v3}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->getFastId()I

    move-result v3

    if-eqz v3, :cond_4

    .line 1714
    iget-object v3, v1, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v2, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setParamFastId(Lcom/gg/reader/api/protocol/gx/ParamFastId;)V

    .line 1716
    :cond_4
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v3, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1717
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MsgBaseInventoryEpc"

    invoke-static {v4, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result v2

    if-nez v2, :cond_5

    move/from16 v14, p6

    int-to-long v2, v14

    .line 1720
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1721
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1722
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v3, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    const-string v3, "tagEpcOtherInventory"

    .line 1723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p0 .. p1}, Lcom/handheld/uhfr/UHFRManager;->formatData(I)Ljava/util/List;

    move-result-object v0

    .line 1725
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    .line 1726
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    array-length v0, v0

    move-object/from16 v15, p4

    invoke-static {v3, v2, v15, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1727
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1730
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1733
    :cond_5
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_6
    move-object/from16 v15, p4

    move/from16 v14, p6

    if-ne v2, v13, :cond_b

    .line 1735
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 1736
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v4, :cond_9

    const/16 v16, 0x3

    .line 1739
    :goto_1
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v3, 0x1

    int-to-char v4, v0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/uhf/api/cls/Reader;->GetTagData(ICII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    add-int/lit8 v3, v16, -0x1

    if-ge v3, v13, :cond_7

    goto :goto_2

    .line 1746
    :cond_7
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v4, :cond_8

    .line 1748
    :goto_2
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v0, :cond_a

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTagData, GetTagData result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move/from16 v16, v3

    goto :goto_1

    .line 1752
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTagData, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-object v2

    .line 1759
    :cond_b
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length v3, v12

    invoke-static {v12, v3}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lcn/com/example/rfid/driver/Driver;->Read_Data_Tag(Ljava/lang/String;IIILjava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1763
    invoke-static {v0}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    .line 1764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zeng-"

    invoke-static {v2, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    .line 1767
    :cond_c
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0
.end method

.method public getTagDataByFilter(III[BS[BIIZ)[B
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v9, p2

    move/from16 v11, p3

    move-object/from16 v8, p4

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    .line 1776
    sget v2, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v3, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_8

    .line 1777
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v5, 0x1

    .line 1778
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1779
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 1791
    :cond_0
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v4, v9, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    goto :goto_0

    .line 1788
    :cond_1
    new-instance v5, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {v5, v4, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>(II)V

    invoke-virtual {v2, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    goto :goto_0

    .line 1785
    :cond_2
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    invoke-direct {v4, v9, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadEpc(Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;)V

    goto :goto_0

    .line 1782
    :cond_3
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-direct {v4, v9, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V

    .line 1794
    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setHexPassword(Ljava/lang/String;)V

    if-eqz p9, :cond_4

    .line 1797
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 1798
    invoke-virtual {v4, v13}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 v5, v14, 0x10

    .line 1799
    invoke-virtual {v4, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1800
    invoke-virtual {v4, v12}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 1801
    array-length v5, v12

    mul-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1802
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1805
    :cond_4
    iget-object v4, v1, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v4}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->getFastId()I

    move-result v4

    if-eqz v4, :cond_5

    .line 1806
    iget-object v4, v1, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setParamFastId(Lcom/gg/reader/api/protocol/gx/ParamFastId;)V

    .line 1808
    :cond_5
    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v4, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1809
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MsgBaseInventoryEpc"

    invoke-static {v5, v4}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result v2

    if-nez v2, :cond_7

    move/from16 v10, p5

    int-to-long v4, v10

    .line 1812
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 1813
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1814
    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v4, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    const-string v4, "tagEpcOtherInventory"

    .line 1815
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p9, :cond_6

    .line 1818
    invoke-virtual/range {p0 .. p1}, Lcom/handheld/uhfr/UHFRManager;->formatData(I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 1820
    :cond_6
    invoke-virtual {v1, v0, v12}, Lcom/handheld/uhfr/UHFRManager;->formatExcludeData(I[B)Ljava/util/List;

    move-result-object v0

    .line 1822
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1823
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uhf/api/cls/Reader$TAGINFO;

    iget-object v0, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1826
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_7
    return-object v15

    :cond_8
    move/from16 v10, p5

    if-ne v2, v4, :cond_c

    .line 1834
    new-instance v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v5}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1835
    iput-object v12, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    .line 1836
    array-length v5, v12

    mul-int/lit8 v5, v5, 0x8

    iput v5, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    if-eqz p9, :cond_9

    .line 1838
    iput v3, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto :goto_2

    .line 1840
    :cond_9
    iput v4, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    .line 1842
    :goto_2
    iput v13, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    mul-int/lit8 v3, v14, 0x10

    .line 1843
    iput v3, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    mul-int/lit8 v3, v11, 0x2

    .line 1844
    new-array v12, v3, [B

    .line 1845
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v2}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 1846
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_b

    .line 1847
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v3, 0x1

    int-to-char v4, v0

    move/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v12

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/uhf/api/cls/Reader;->GetTagData(ICII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1849
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v2, :cond_a

    return-object v12

    .line 1852
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTagDataByFilter, GetTagData result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    return-object v15

    .line 1856
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTagDataByFilter, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    return-object v15

    .line 1862
    :cond_c
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length v3, v8

    invoke-static {v8, v3}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v5, v14, 0x10

    array-length v4, v12

    .line 1865
    invoke-static {v12, v4}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    array-length v4, v12

    .line 1866
    invoke-static {v12, v4}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v7

    move/from16 v4, p7

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 1862
    invoke-virtual/range {v2 .. v10}, Lcn/com/example/rfid/driver/Driver;->Read_Data_Tag(Ljava/lang/String;IIILjava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 1868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fbnk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zeng-"

    invoke-static {v4, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fstartaddr:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tools.Bytes2HexString(fdata, fdata.length).length():"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v12

    invoke-static {v12, v5}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tools.Bytes2HexString(fdata, fdata.length):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v12

    invoke-static {v12, v5}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mbank:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "zeng-getTagDataByFilter"

    invoke-static {v3, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_d

    .line 1876
    invoke-static {v2}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_d
    return-object v15
.end method

.method public getTarget()I
    .locals 5

    .line 3035
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 3036
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;-><init>()V

    .line 3037
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 3038
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getRtCode()B

    move-result v2

    if-nez v2, :cond_3

    .line 3039
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetBaseband;->getInventoryFlag()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-array v0, v2, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 3043
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v3, v4, v0}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 3044
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v3, v4, :cond_3

    .line 3045
    aget v1, v0, v2

    goto :goto_0

    .line 3049
    :cond_1
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0}, Lcn/com/example/rfid/driver/Driver;->GetGen2Para()Ljava/lang/String;

    move-result-object v0

    const-string v3, "zeng-"

    .line 3050
    invoke-static {v3, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "-1000"

    .line 3051
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "-1020"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    const/16 v3, 0x8

    .line 3055
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v1, v0, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public getYilianTagTemperature()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/handheld/uhfr/Reader$TEMPTAGINFO;",
            ">;"
        }
    .end annotation

    .line 2753
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2754
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 2755
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v2, 0x1

    .line 2756
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    .line 2757
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>()V

    const/16 v4, 0x7f

    .line 2758
    invoke-virtual {v3, v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setStart(I)V

    .line 2759
    invoke-virtual {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setLen(I)V

    .line 2760
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    .line 2761
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2762
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x32

    .line 2764
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2765
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 2766
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2767
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->formatData()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2773
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getYueheTagTemperature([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/handheld/uhfr/Reader$TEMPTAGINFO;",
            ">;"
        }
    .end annotation

    .line 2679
    sget p1, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2680
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    .line 2681
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 2682
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2683
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    const/4 v0, 0x2

    .line 2684
    invoke-virtual {p1, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setCtesius(I)V

    .line 2685
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2686
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsgBaseInventoryEpc"

    invoke-static {v2, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 v2, 0x32

    .line 2689
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2690
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 2691
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2692
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->formatData()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2698
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-ne p1, v0, :cond_2

    :cond_2
    return-object v1
.end method

.method public inventory6BTag(S)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;",
            ">;"
        }
    .end annotation

    .line 1160
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;-><init>()V

    const-wide/16 v1, 0x1

    .line 1162
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 1163
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setInventoryMode(I)V

    .line 1164
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1165
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->getRtCode()B

    move-result v0

    if-nez v0, :cond_0

    int-to-long v0, p1

    .line 1167
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 1168
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1169
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1170
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->format6BData()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1172
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public inventoryGBTag(ZS)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZS)",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGbInfo;",
            ">;"
        }
    .end annotation

    .line 1289
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1290
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;-><init>()V

    const-wide/16 v2, 0x1

    .line 1291
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v2, 0x1

    .line 1292
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setInventoryMode(I)V

    if-eqz p1, :cond_0

    .line 1295
    new-instance p1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    const/4 v2, 0x0

    .line 1296
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    const/4 v2, 0x6

    .line 1297
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 1298
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 1300
    :cond_0
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1302
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v2, "inventoryGBTag"

    invoke-static {v2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGb;->getRtCode()B

    move-result p1

    if-nez p1, :cond_2

    int-to-long p1, p2

    .line 1305
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 1306
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1307
    sget-object p2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1308
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    :cond_1
    const/4 p1, 0x2

    .line 1312
    invoke-virtual {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->formatGBData(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1314
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public inventoryGJBTag(ZS)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZS)",
            "Ljava/util/List<",
            "Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;",
            ">;"
        }
    .end annotation

    .line 1332
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1333
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;-><init>()V

    const-wide/16 v2, 0x1

    .line 1334
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v2, 0x1

    .line 1335
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setInventoryMode(I)V

    if-eqz p1, :cond_0

    .line 1338
    new-instance p1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>()V

    const/4 v2, 0x0

    .line 1339
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setMode(I)V

    const/4 v2, 0x6

    .line 1340
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;->setLen(I)V

    .line 1341
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 1343
    :cond_0
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1345
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v2, "inventoryGBTag"

    invoke-static {v2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->getRtCode()B

    move-result p1

    if-nez p1, :cond_2

    int-to-long p1, p2

    .line 1348
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 1349
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1350
    sget-object p2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    :cond_1
    const/4 p1, 0x2

    .line 1355
    invoke-virtual {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->formatGJBData(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1357
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public killTag([BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 2281
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_2

    .line 2282
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v0, 0x1

    .line 2283
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v2, 0x0

    .line 2284
    invoke-virtual {p2, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 2285
    invoke-virtual {p2, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 2286
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 2287
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2288
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MsgBaseWritePas"

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result p2

    if-nez p2, :cond_1

    .line 2290
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;-><init>()V

    .line 2291
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2292
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setHexPassword(Ljava/lang/String;)V

    .line 2293
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2294
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MsgBaseDestroyEpc"

    invoke-static {v0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object p1

    .line 2297
    :cond_1
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2300
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2301
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v2, :cond_3

    .line 2302
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/Reader;->KillTag(I[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2304
    :cond_3
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, p1, :cond_4

    .line 2305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "killTag, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_4
    return-object v0

    .line 2310
    :cond_5
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length p2, p1

    invoke-static {p1, p2}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual/range {v1 .. v6}, Lcn/com/example/rfid/driver/Driver;->Kill_Tag(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    .line 2312
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_1
    return-object p1
.end method

.method public killTagByFilter([BS[BIIZ)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 2319
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2320
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 2321
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2322
    invoke-virtual {p2, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 2323
    invoke-virtual {p2, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 2324
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    .line 2326
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 2327
    invoke-virtual {v0, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 v1, p5, 0x10

    .line 2328
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 2329
    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 2330
    array-length v1, p3

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 2331
    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 2333
    :cond_0
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2334
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MsgBaseWritePas"

    invoke-static {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result p2

    if-nez p2, :cond_3

    .line 2336
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;-><init>()V

    .line 2337
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2338
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setHexPassword(Ljava/lang/String;)V

    if-eqz p6, :cond_1

    .line 2340
    new-instance p1, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 2341
    invoke-virtual {p1, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 p5, p5, 0x10

    .line 2342
    invoke-virtual {p1, p5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 2343
    invoke-virtual {p1, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 2344
    array-length p3, p3

    mul-int/lit8 p3, p3, 0x8

    invoke-virtual {p1, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 2345
    invoke-virtual {p2, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 2347
    :cond_1
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2348
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MsgBaseDestroyEpc"

    invoke-static {p3, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseDestroyEpc;->getRtCode()B

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object p1

    .line 2351
    :cond_3
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_4
    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 2354
    new-instance v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2355
    iput-object p3, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    .line 2356
    array-length p3, p3

    mul-int/lit8 p3, p3, 0x8

    iput p3, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    if-eqz p6, :cond_5

    .line 2358
    iput v1, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto :goto_1

    .line 2360
    :cond_5
    iput v2, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    .line 2362
    :goto_1
    iput p4, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    mul-int/lit8 p5, p5, 0x10

    .line 2363
    iput p5, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 2365
    sget-object p3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object p4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p3, p4, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p3

    .line 2366
    sget-object p4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p3, p4, :cond_6

    .line 2367
    sget-object p3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {p3, v2, p1, p2}, Lcom/uhf/api/cls/Reader;->KillTag(I[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p3

    .line 2369
    :cond_6
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p3, p1, :cond_7

    .line 2370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "killTagByFilter, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_7
    return-object p3

    .line 2375
    :cond_8
    array-length p2, p3

    invoke-static {p3, p2}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v5

    .line 2376
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length p2, p1

    invoke-static {p1, p2}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 v4, p1, 0x4

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcn/com/example/rfid/driver/Driver;->Kill_Tag(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_9

    .line 2378
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_2
    return-object p1
.end method

.method public lock6B([BI)Z
    .locals 3

    .line 1244
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_0

    .line 1245
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;-><init>()V

    const-wide/16 v1, 0x1

    .line 1247
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1249
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->setbMatchTid([B)V

    .line 1251
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->setLockIndex(I)V

    .line 1253
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1254
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6b;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lock6BQuery([BI)Z
    .locals 4

    .line 1265
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1266
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;-><init>()V

    const-wide/16 v2, 0x1

    .line 1267
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1268
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setbMatchTid([B)V

    .line 1269
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->setLockIndex(I)V

    .line 1270
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1271
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    .line 1272
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLock6bGet;->getLockState()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public lockGJB(II[BII[B)Z
    .locals 3

    .line 1479
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;-><init>()V

    const-wide/16 v1, 0x1

    .line 1480
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setAntennaEnable(Ljava/lang/Long;)V

    if-lez p1, :cond_0

    .line 1483
    new-instance v1, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    add-int/lit8 p1, p1, -0x1

    .line 1484
    invoke-virtual {v1, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1485
    invoke-virtual {v1, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 1486
    array-length p1, p3

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1487
    invoke-virtual {v1, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1488
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1490
    :cond_0
    invoke-virtual {v0, p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setArea(I)V

    .line 1491
    invoke-virtual {v0, p5}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setLockParam(I)V

    if-eqz p6, :cond_1

    .line 1493
    array-length p1, p6

    invoke-static {p6, p1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockGJb;->setHexPassword(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public lockTag(Lcom/uhf/api/cls/Reader$Lock_Obj;Lcom/uhf/api/cls/Reader$Lock_Type;[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 9

    .line 2126
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 2127
    new-instance p4, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    .line 2128
    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 2129
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2130
    invoke-virtual {p4, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 2131
    invoke-virtual {p4, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 2132
    invoke-static {p3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 2133
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p4}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2134
    invoke-virtual {p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    const-string v6, "MsgBaseWritePas"

    invoke-static {v6, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2136
    :cond_0
    invoke-virtual {p4, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setRtCode(B)V

    .line 2138
    :goto_0
    invoke-virtual {p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result p4

    if-nez p4, :cond_5

    .line 2139
    new-instance p4, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;

    invoke-direct {p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;-><init>()V

    .line 2140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2141
    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result p1

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v3, v6

    double-to-int p1, v3

    invoke-virtual {p4, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setArea(I)V

    .line 2142
    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result p1

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc

    const/4 v0, 0x3

    if-eq p1, p2, :cond_1

    const/16 p2, 0x20

    if-eq p1, p2, :cond_2

    const/16 p2, 0x30

    if-eq p1, p2, :cond_1

    const/16 p2, 0x80

    if-eq p1, p2, :cond_2

    const/16 p2, 0xc0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x200

    if-eq p1, p2, :cond_2

    const/16 p2, 0x300

    if-eq p1, p2, :cond_1

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 2158
    :cond_1
    invoke-virtual {p4, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    goto :goto_1

    .line 2151
    :cond_2
    invoke-virtual {p4, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    goto :goto_1

    .line 2144
    :cond_3
    invoke-virtual {p4, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    .line 2161
    :goto_1
    invoke-static {p3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setHexPassword(Ljava/lang/String;)V

    .line 2162
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, p4}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2163
    invoke-virtual {p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsgBaseLockEpc"

    invoke-static {p2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    invoke-virtual {p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->getRtCode()B

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_2
    return-object p1

    .line 2166
    :cond_5
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_6
    if-ne v0, v1, :cond_9

    .line 2169
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2170
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_7

    .line 2171
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result p1

    int-to-byte v4, p1

    .line 2172
    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result p1

    int-to-short v5, p1

    move-object v6, p3

    move v7, p4

    .line 2171
    invoke-virtual/range {v2 .. v7}, Lcom/uhf/api/cls/Reader;->LockTag(IBS[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2174
    :cond_7
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, p1, :cond_8

    .line 2175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "lockTag, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_8
    return-object v0

    .line 2181
    :cond_9
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length p4, p3

    invoke-static {p3, p4}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result v7

    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result v8

    const-string v6, ""

    invoke-virtual/range {v1 .. v8}, Lcn/com/example/rfid/driver/Driver;->Lock_Tag_Data(Ljava/lang/String;IIILjava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_a

    .line 2182
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_3

    :cond_a
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_3
    return-object p1
.end method

.method public lockTagByFilter(Lcom/uhf/api/cls/Reader$Lock_Obj;Lcom/uhf/api/cls/Reader$Lock_Type;[BS[BIIZ)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 13

    move-object/from16 v4, p3

    move-object/from16 v0, p5

    move/from16 v2, p6

    .line 2190
    sget v1, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez v1, :cond_8

    .line 2191
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    .line 2192
    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result v7

    const/4 v8, 0x2

    const-wide/16 v9, 0x1

    if-eqz v7, :cond_1

    .line 2193
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2194
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 2195
    invoke-virtual {v1, v8}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 2196
    invoke-static/range {p3 .. p3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    if-eqz p8, :cond_0

    .line 2198
    new-instance v7, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v7}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 2199
    invoke-virtual {v7, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 v11, p7, 0x10

    .line 2200
    invoke-virtual {v7, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 2201
    invoke-virtual {v7, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 2202
    array-length v11, v0

    mul-int/lit8 v11, v11, 0x8

    invoke-virtual {v7, v11}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 2203
    invoke-virtual {v1, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 2205
    :cond_0
    sget-object v7, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v7, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2206
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v7

    const-string v11, "MsgBaseWritePas"

    invoke-static {v11, v7}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2208
    :cond_1
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setRtCode(B)V

    .line 2210
    :goto_0
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result v1

    if-nez v1, :cond_7

    .line 2211
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;-><init>()V

    .line 2212
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2213
    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result v7

    int-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    double-to-int v7, v9

    invoke-virtual {v1, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setArea(I)V

    .line 2214
    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result v7

    if-eqz v7, :cond_4

    if-eq v7, v6, :cond_3

    const/16 v5, 0xc

    const/4 v9, 0x3

    if-eq v7, v5, :cond_2

    const/16 v5, 0x20

    if-eq v7, v5, :cond_3

    const/16 v5, 0x30

    if-eq v7, v5, :cond_2

    const/16 v5, 0x80

    if-eq v7, v5, :cond_3

    const/16 v5, 0xc0

    if-eq v7, v5, :cond_2

    const/16 v5, 0x200

    if-eq v7, v5, :cond_3

    const/16 v5, 0x300

    if-eq v7, v5, :cond_2

    if-eq v7, v8, :cond_3

    if-eq v7, v9, :cond_2

    goto :goto_1

    .line 2230
    :cond_2
    invoke-virtual {v1, v9}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    goto :goto_1

    .line 2223
    :cond_3
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    goto :goto_1

    .line 2216
    :cond_4
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setMode(I)V

    .line 2233
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setHexPassword(Ljava/lang/String;)V

    if-eqz p8, :cond_5

    .line 2235
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 2236
    invoke-virtual {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 v2, p7, 0x10

    .line 2237
    invoke-virtual {v3, v2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 2238
    invoke-virtual {v3, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 2239
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v3, v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 2240
    invoke-virtual {v1, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 2242
    :cond_5
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2243
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MsgBaseLockEpc"

    invoke-static {v2, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseLockEpc;->getRtCode()B

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_2
    return-object v0

    .line 2246
    :cond_7
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_8
    if-ne v1, v3, :cond_c

    .line 2250
    new-instance v1, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v7, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v7}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2251
    iput-object v0, v1, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    .line 2252
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    if-eqz p8, :cond_9

    .line 2254
    iput v5, v1, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto :goto_3

    .line 2256
    :cond_9
    iput v3, v1, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    .line 2258
    :goto_3
    iput v2, v1, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    mul-int/lit8 v0, p7, 0x10

    .line 2259
    iput v0, v1, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 2261
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2262
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_a

    .line 2263
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result v2

    int-to-byte v2, v2

    .line 2264
    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result v3

    int-to-short v3, v3

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 2263
    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/Reader;->LockTag(IBS[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2266
    :cond_a
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_b

    .line 2267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockTagByFilter, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, p0

    invoke-direct {p0, v1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object v8, p0

    :goto_4
    return-object v0

    :cond_c
    move-object v8, p0

    .line 2273
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length v3, v4

    invoke-static {v4, v3}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v3

    array-length v4, v0

    invoke-static {v0, v4}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    array-length v5, v0

    invoke-static {v0, v5}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Lock_Obj;->value()I

    move-result v6

    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Lock_Type;->value()I

    move-result v7

    move-object v0, v1

    move-object v1, v3

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v7}, Lcn/com/example/rfid/driver/Driver;->Lock_Tag_Data(Ljava/lang/String;IIILjava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_d

    .line 2274
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_5

    :cond_d
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_5
    return-object v0
.end method

.method public read6BUser(Z[BII)[B
    .locals 4

    .line 1184
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1185
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;-><init>()V

    const-wide/16 v2, 0x1

    .line 1187
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v2, 0x1

    .line 1188
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setInventoryMode(I)V

    const/4 v2, 0x2

    .line 1189
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setArea(I)V

    .line 1191
    new-instance v2, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;-><init>()V

    .line 1192
    invoke-virtual {v2, p3}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->setStart(I)V

    .line 1193
    invoke-virtual {v2, p4}, Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;->setLen(I)V

    .line 1194
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/Param6bReadUserdata;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1197
    array-length p1, p2

    invoke-static {p2, p1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->setHexMatchTid(Ljava/lang/String;)V

    .line 1200
    :cond_0
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1201
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventory6b;->getRtCode()B

    move-result p1

    if-nez p1, :cond_1

    const-wide/16 p1, 0x14

    .line 1203
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 1204
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1205
    sget-object p2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p2, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1206
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->format6BData()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 1208
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBase6bInfo;->getbUser()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_1
    return-object v1
.end method

.method public readGJBUser(II[BII[B)[B
    .locals 4

    .line 1380
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;-><init>()V

    const-wide/16 v1, 0x1

    .line 1382
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setAntennaEnable(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 1383
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setInventoryMode(I)V

    const/4 v2, 0x2

    if-lez p1, :cond_1

    .line 1386
    new-instance v3, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    sub-int/2addr p1, v1

    .line 1387
    invoke-virtual {v3, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1388
    invoke-virtual {v3, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    if-eqz p3, :cond_0

    .line 1390
    invoke-virtual {v3, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 1391
    array-length p1, p3

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v3, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1393
    :cond_0
    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1396
    :cond_1
    new-instance p1, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>()V

    .line 1397
    invoke-virtual {p1, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setStart(I)V

    .line 1398
    invoke-virtual {p1, p5}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;->setLen(I)V

    .line 1399
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    if-eqz p6, :cond_2

    .line 1402
    array-length p1, p6

    invoke-static {p6, p1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->setHexPassword(Ljava/lang/String;)V

    .line 1406
    :cond_2
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1407
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryGJb;->getRtCode()B

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_3

    const-wide/16 p3, 0x14

    .line 1409
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V

    .line 1410
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1411
    sget-object p3, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1412
    invoke-virtual {p0, v2}, Lcom/handheld/uhfr/UHFRManager;->formatGJBData(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1413
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    const/4 p3, 0x0

    .line 1414
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/LogBaseGJbInfo;->getbUser()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p1

    :catch_0
    :cond_3
    return-object p2
.end method

.method public setCancleInventoryFilter()Z
    .locals 4

    .line 712
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 713
    iput-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    return v2

    :cond_0
    if-ne v0, v2, :cond_1

    .line 717
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 718
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_1

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCancleInventoryFilter, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public setEMBEDEDATA(III[B)Z
    .locals 3

    .line 1651
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1661
    iput-boolean v1, p0, Lcom/handheld/uhfr/UHFRManager;->isEmb:Z

    const/16 v0, 0x80

    .line 1662
    iput v0, p0, Lcom/handheld/uhfr/UHFRManager;->Emboption:I

    .line 1663
    iget v0, p0, Lcom/handheld/uhfr/UHFRManager;->Emboption:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/handheld/uhfr/UHFRManager;->Emboption:I

    .line 1665
    new-instance v0, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/uhf/api/cls/Reader$EmbededData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1666
    iput p1, v0, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bank:I

    .line 1667
    iput p2, v0, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    .line 1668
    iput p3, v0, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    .line 1669
    iput-object p4, v0, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    .line 1670
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object p2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_EMBEDEDDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, p2, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1671
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setFastID(Z)Z
    .locals 4

    .line 3139
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3140
    iget-object v0, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->setFastId(I)V

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const-string v0, "tagcustomcmd/fastid"

    if-eqz p1, :cond_2

    .line 3144
    new-instance p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;

    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v3}, Lcom/uhf/api/cls/Reader$CustomParam_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3145
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    new-array v0, v1, [B

    .line 3146
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    .line 3147
    iget-object v0, p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    aput-byte v1, v0, v2

    .line 3148
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, p1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 3149
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 3151
    :cond_2
    new-instance p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;

    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v3}, Lcom/uhf/api/cls/Reader$CustomParam_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3152
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    new-array v0, v1, [B

    .line 3153
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    .line 3154
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v3, p1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 3155
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    if-eqz p1, :cond_5

    .line 3161
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v1}, Lcn/com/example/rfid/driver/Driver;->SetFastIDStatus(I)I

    move-result p1

    goto :goto_2

    .line 3163
    :cond_5
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v2}, Lcn/com/example/rfid/driver/Driver;->SetFastIDStatus(I)I

    move-result p1

    :goto_2
    const/16 v0, -0x3e8

    if-eq v0, p1, :cond_7

    if-eqz p1, :cond_7

    const/16 v0, -0x3fc

    if-ne v0, p1, :cond_6

    goto :goto_3

    :cond_6
    return v1

    :cond_7
    :goto_3
    return v2
.end method

.method public setFrequencyPoints([I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 4

    .line 2548
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_2

    .line 2549
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;-><init>()V

    const/4 v1, 0x0

    .line 2550
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->setAutomatically(Ljava/lang/Boolean;)V

    .line 2551
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2552
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 2553
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2555
    :cond_0
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->setListFreqCursor(Ljava/util/List;)V

    .line 2556
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2557
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MsgBaseSetFrequency"

    invoke-static {v1, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFrequency;->getRtCode()B

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_1
    return-object p1

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2561
    new-instance v0, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2562
    array-length v1, p1

    iput v1, v0, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    .line 2563
    iput-object p1, v0, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    .line 2564
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v1, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 2568
    :cond_3
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length v2, p1

    invoke-virtual {v0, v1, v2, p1}, Lcn/com/example/rfid/driver/Driver;->SetFreqTable(II[I)I

    move-result p1

    const/16 v0, -0x3e8

    if-eq p1, v0, :cond_5

    const/16 v0, -0x3fc

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 2572
    :cond_4
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 2570
    :cond_5
    :goto_2
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1
.end method

.method public setGen2(Ljava/lang/String;)Z
    .locals 6

    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v5, v4, 0x2

    .line 3280
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 3284
    aget v2, v0, p1

    and-int/lit16 v2, v2, 0xcf

    aput v2, v0, p1

    .line 3286
    aget v2, v0, p1

    add-int/lit8 v2, v2, 0x20

    aput v2, v0, p1

    .line 3289
    aget v2, v0, p1

    and-int/lit16 v2, v2, 0xf7

    aput v2, v0, p1

    .line 3291
    aget v2, v0, p1

    add-int/2addr v2, v1

    aput v2, v0, p1

    .line 3294
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v1, v0}, Lcn/com/example/rfid/driver/Driver;->SetGen2Para(I[I)I

    move-result p1

    if-nez p1, :cond_1

    const/16 v0, -0x64

    if-ne p1, v0, :cond_1

    const/16 v0, -0x3fc

    if-eq p1, v0, :cond_2

    .line 3296
    :cond_1
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/com/example/rfid/driver/Driver;->Inventory_Model_Set(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public setGen2session(I)Z
    .locals 9

    .line 2891
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 2892
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->getGen2session()I

    move-result v0

    if-eq v0, v2, :cond_2

    if-ne v0, p1, :cond_0

    return v3

    .line 2897
    :cond_0
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    .line 2898
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setSession(I)V

    .line 2899
    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setqValue(I)V

    .line 2900
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2902
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setGen2session"

    invoke-static {v1, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtCode()B

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    return v4

    :cond_3
    if-ne v0, v3, :cond_5

    :try_start_0
    new-array v0, v3, [I

    aput v2, v0, v4

    aput p1, v0, v4

    .line 2910
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v1, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2911
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    return v3

    :catch_0
    return v4

    :cond_5
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 2919
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v2}, Lcn/com/example/rfid/driver/Driver;->GetGen2Para()Ljava/lang/String;

    move-result-object v2

    const-string v5, "-1000"

    .line 2921
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "-1020"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_2
    const/16 v6, 0x8

    if-ge v5, v6, :cond_7

    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v5, 0x1

    mul-int/lit8 v8, v7, 0x2

    .line 2926
    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v0, v5

    move v5, v7

    goto :goto_2

    :cond_7
    const/4 v2, 0x3

    .line 2928
    aget v5, v0, v2

    and-int/lit16 v5, v5, 0xcf

    aput v5, v0, v2

    .line 2929
    aget v5, v0, v2

    shl-int/2addr p1, v1

    add-int/2addr v5, p1

    aput v5, v0, v2

    .line 2931
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v4, v0}, Lcn/com/example/rfid/driver/Driver;->SetGen2Para(I[I)I

    move-result p1

    const/16 v0, -0x3e8

    if-eq v0, p1, :cond_9

    const/16 v0, -0x3fc

    if-eq v0, p1, :cond_9

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    return v3

    :cond_9
    :goto_3
    return v4
.end method

.method public setGen2session(Z)Z
    .locals 9

    .line 2800
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_4

    .line 2801
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->getGen2session()I

    move-result v0

    if-eq v0, v1, :cond_3

    const-string v1, "setGen2session"

    const/4 v5, 0x4

    if-eqz p1, :cond_1

    if-eq v0, v2, :cond_0

    .line 2805
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    .line 2806
    invoke-virtual {p1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setSession(I)V

    .line 2807
    invoke-virtual {p1, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setqValue(I)V

    .line 2808
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2810
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v3

    .line 2815
    :cond_1
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    .line 2816
    invoke-virtual {p1, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setSession(I)V

    .line 2817
    invoke-virtual {p1, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setqValue(I)V

    .line 2818
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2820
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2821
    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtCode()B

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_3
    return v4

    :cond_4
    if-ne v0, v3, :cond_9

    :try_start_0
    new-array v0, v3, [I

    aput v1, v0, v4

    if-eqz p1, :cond_5

    aput v3, v0, v4

    .line 2831
    sget-boolean p1, Lcom/handheld/uhfr/UHFRManager;->isE710:Z

    if-eqz p1, :cond_6

    aput v2, v0, v4

    return v3

    :cond_5
    aput v4, v0, v4

    .line 2840
    :cond_6
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v1, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2843
    new-instance v0, Lcom/uhf/api/cls/Reader$CustomParam_ST;

    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$CustomParam_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    const-string v1, "Reader/Ex10fastmode"

    .line 2844
    iput-object v1, v0, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    const/16 v1, 0x16

    new-array v1, v1, [B

    aput-byte v4, v1, v4

    const/16 v2, 0x14

    aput-byte v2, v1, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_7

    add-int/lit8 v6, v5, 0x2

    .line 2849
    aput-byte v4, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2850
    :cond_7
    iput-object v1, v0, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    .line 2851
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 2853
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    return v3

    :catch_0
    return v4

    :cond_9
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 2861
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v1}, Lcn/com/example/rfid/driver/Driver;->GetGen2Para()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1000"

    .line 2863
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "-1020"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :goto_3
    const/16 v5, 0x8

    const/16 v6, 0x10

    if-ge v2, v5, :cond_b

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v8, v7, 0x2

    .line 2868
    invoke-virtual {v1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v0, v2

    move v2, v7

    goto :goto_3

    :cond_b
    const/4 v1, 0x3

    if-eqz p1, :cond_c

    .line 2871
    aget p1, v0, v1

    and-int/lit16 p1, p1, 0xcf

    aput p1, v0, v1

    .line 2872
    aget p1, v0, v1

    add-int/2addr p1, v6

    aput p1, v0, v1

    goto :goto_4

    .line 2875
    :cond_c
    aget p1, v0, v1

    and-int/lit16 p1, p1, 0xcf

    aput p1, v0, v1

    .line 2876
    aget p1, v0, v1

    add-int/2addr p1, v4

    aput p1, v0, v1

    .line 2879
    :goto_4
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v4, v0}, Lcn/com/example/rfid/driver/Driver;->SetGen2Para(I[I)I

    move-result p1

    const/16 v0, -0x3e8

    if-eq v0, p1, :cond_e

    const/16 v0, -0x3fc

    if-eq v0, p1, :cond_e

    if-nez p1, :cond_d

    goto :goto_5

    :cond_d
    return v3

    :cond_e
    :goto_5
    return v4
.end method

.method public setInventoryFilter([BIIZ)Z
    .locals 3

    .line 676
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 678
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 p3, p3, 0x10

    .line 679
    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 680
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 681
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 682
    new-instance p1, Lcom/handheld/uhfr/CusParamFilter;

    invoke-direct {p1, v0, p4}, Lcom/handheld/uhfr/CusParamFilter;-><init>(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;Z)V

    iput-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    return v1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 686
    new-instance v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 687
    iput-object p1, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    .line 688
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 690
    iput p1, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto :goto_0

    .line 692
    :cond_1
    iput v1, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    .line 694
    :goto_0
    iput p2, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    mul-int/lit8 p3, p3, 0x10

    .line 695
    iput p3, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 696
    sget-object p2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object p3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p2, p3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p2

    .line 697
    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p2, p3, :cond_2

    .line 698
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setInventoryFilter, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    return p1

    :cond_2
    return v1
.end method

.method public setPower(II)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 5

    .line 2581
    iput p1, p0, Lcom/handheld/uhfr/UHFRManager;->rPower:I

    .line 2582
    iput p2, p0, Lcom/handheld/uhfr/UHFRManager;->wPower:I

    .line 2583
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_3

    .line 2584
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;-><init>()V

    .line 2585
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2586
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getRtCode()B

    move-result v0

    if-nez v0, :cond_2

    .line 2587
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseGetPower;->getDicPower()Ljava/util/Hashtable;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 2590
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 2592
    :cond_0
    new-instance p2, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;

    invoke-direct {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;-><init>()V

    .line 2593
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2594
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2595
    invoke-virtual {p2, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->setDicPower(Ljava/util/Hashtable;)V

    .line 2596
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2597
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MsgBaseSetPower"

    invoke-static {v0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    invoke-virtual {p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetPower;->getRtCode()B

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object p1

    .line 2600
    :cond_2
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_3
    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 2602
    new-instance v0, Lcom/uhf/api/cls/Reader$AntPowerConf;

    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/uhf/api/cls/Reader$AntPowerConf;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2603
    iput v1, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    .line 2604
    new-instance v3, Lcom/uhf/api/cls/Reader$AntPower;

    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/uhf/api/cls/Reader$AntPower;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2605
    iput v1, v3, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    int-to-short p1, p1

    mul-int/lit8 p1, p1, 0x64

    int-to-short p1, p1

    .line 2606
    iput-short p1, v3, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    int-to-short p1, p2

    mul-int/lit8 p1, p1, 0x64

    int-to-short p1, p1

    .line 2607
    iput-short p1, v3, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    .line 2608
    iget-object p1, v0, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aput-object v3, p1, v2

    .line 2609
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object p2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, p2, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 2612
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zeng-"

    invoke-static {v1, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v0, p1, p2, v2, v2}, Lcn/com/example/rfid/driver/Driver;->SetTxPower(IIII)I

    move-result p1

    .line 2614
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setpowe:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, -0x3e8

    if-eq p2, p1, :cond_6

    const/16 p2, -0x3fc

    if-eq p2, p1, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    .line 2619
    :cond_5
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 2617
    :cond_6
    :goto_1
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1
.end method

.method public setQvaule(I)Z
    .locals 3

    .line 2982
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2983
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    .line 2984
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setqValue(I)V

    .line 2985
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2986
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtCode()B

    move-result p1

    if-nez p1, :cond_1

    .line 2987
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setQvaule"

    invoke-static {v0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 2997
    iput p1, p0, Lcom/handheld/uhfr/UHFRManager;->Q:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setRegion(Lcom/uhf/api/cls/Reader$Region_Conf;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 9

    .line 2385
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->getPower()[I

    move-result-object v0

    .line 2386
    sget v1, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v2, 0x4

    const/4 v3, 0x6

    const-string v4, "zeng-"

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-nez v1, :cond_4

    .line 2387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;-><init>()V

    .line 2389
    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result p1

    if-eq p1, v7, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v6, :cond_0

    const/16 p1, 0x63

    .line 2400
    invoke-virtual {v1, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->setFreqRangeIndex(I)V

    goto :goto_0

    .line 2397
    :cond_0
    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->setFreqRangeIndex(I)V

    goto :goto_0

    .line 2391
    :cond_1
    invoke-virtual {v1, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->setFreqRangeIndex(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 2394
    invoke-virtual {v1, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->setFreqRangeIndex(I)V

    .line 2403
    :goto_0
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2404
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MsgBaseSetFreqRange"

    invoke-static {v2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetFreqRange;->getRtCode()B

    move-result p1

    if-nez p1, :cond_3

    .line 2406
    aget p1, v0, v5

    aget v0, v0, v7

    invoke-virtual {p0, p1, v0}, Lcom/handheld/uhfr/UHFRManager;->setPower(II)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 2408
    :cond_3
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_4
    if-ne v1, v7, :cond_5

    .line 2411
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v1, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v0, v1, p1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 2415
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result p1

    if-eq p1, v7, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v6, :cond_9

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :cond_8
    const/16 v2, 0x8

    :cond_9
    :goto_1
    if-nez v2, :cond_a

    .line 2434
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 2436
    :cond_a
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v2}, Lcn/com/example/rfid/driver/Driver;->SetRegion(I)I

    move-result p1

    const/16 v0, -0x3e8

    if-eq v0, p1, :cond_c

    const/16 v0, -0x3fc

    if-eq v0, p1, :cond_c

    if-nez p1, :cond_b

    goto :goto_2

    .line 2440
    :cond_b
    iget p1, p0, Lcom/handheld/uhfr/UHFRManager;->rPower:I

    iget v0, p0, Lcom/handheld/uhfr/UHFRManager;->wPower:I

    invoke-virtual {p0, p1, v0}, Lcom/handheld/uhfr/UHFRManager;->setPower(II)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 2438
    :cond_c
    :goto_2
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1
.end method

.method public setTarget(I)Z
    .locals 8

    .line 3067
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3068
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;-><init>()V

    .line 3069
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->setInventoryFlag(I)V

    .line 3070
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 3071
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseSetBaseband;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    new-array v0, v1, [I

    const/4 v3, -0x1

    aput v3, v0, v2

    aput p1, v0, v2

    .line 3077
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p1, v3, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 3078
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v0, :cond_0

    :goto_0
    return v1

    :cond_2
    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 3085
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v3}, Lcn/com/example/rfid/driver/Driver;->GetGen2Para()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1000"

    .line 3087
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "-1020"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_4

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v7, v6, 0x2

    .line 3092
    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v0, v4

    move v4, v6

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    .line 3097
    aget v4, v0, v3

    and-int/lit16 v4, v4, 0xf7

    aput v4, v0, v3

    .line 3098
    aget v4, v0, v3

    shl-int/2addr p1, v3

    add-int/2addr v4, p1

    aput v4, v0, v3

    .line 3101
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {p1, v2, v0}, Lcn/com/example/rfid/driver/Driver;->SetGen2Para(I[I)I

    move-result p1

    const/16 v0, -0x3e8

    if-eq v0, p1, :cond_6

    const/16 v0, -0x3fc

    if-eq v0, p1, :cond_6

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v2
.end method

.method public stopTagInventory()Z
    .locals 4

    .line 1059
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1061
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->asyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->value()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-ne v0, v2, :cond_3

    .line 1064
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1065
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v3, :cond_2

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTagInventory, AsyncStopReading result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    return v1

    :cond_2
    return v2

    .line 1073
    :cond_3
    invoke-virtual {p0}, Lcom/handheld/uhfr/UHFRManager;->asyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->value()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public tagEpcOtherInventoryByTimer(SIII[B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SIII[B)",
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/Reader$TAGINFO;",
            ">;"
        }
    .end annotation

    .line 1568
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    .line 1569
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v3, 0x1

    .line 1570
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1571
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    if-eqz p2, :cond_3

    const/4 v3, 0x2

    if-eq p2, v2, :cond_2

    if-eq p2, v3, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 1583
    :cond_0
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;

    invoke-direct {v2, p3, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadUserdata(Lcom/gg/reader/api/protocol/gx/ParamEpcReadUserdata;)V

    goto :goto_0

    .line 1580
    :cond_1
    new-instance p3, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    invoke-direct {p3, v2, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>(II)V

    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    goto :goto_0

    .line 1577
    :cond_2
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;

    add-int/2addr p3, v3

    invoke-direct {v2, p3, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadEpc(Lcom/gg/reader/api/protocol/gx/ParamEpcReadEpc;)V

    goto :goto_0

    .line 1574
    :cond_3
    new-instance v2, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;

    invoke-direct {v2, p3, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadReserved(Lcom/gg/reader/api/protocol/gx/ParamEpcReadReserved;)V

    .line 1586
    :goto_0
    invoke-static {p5}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setHexPassword(Ljava/lang/String;)V

    .line 1587
    iget-object p3, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1588
    iget-object p3, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p3}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1590
    :cond_4
    iget-object p3, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {p3}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->getFastId()I

    move-result p3

    if-eqz p3, :cond_5

    .line 1591
    iget-object p3, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setParamFastId(Lcom/gg/reader/api/protocol/gx/ParamFastId;)V

    .line 1593
    :cond_5
    sget-object p3, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p3, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1594
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MsgBaseInventoryEpc"

    invoke-static {p4, p3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result p3

    if-nez p3, :cond_7

    int-to-long p3, p1

    .line 1597
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V

    .line 1598
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1599
    sget-object p3, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    const-string p3, "tagEpcOtherInventory"

    .line 1600
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1602
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->getbData()[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/handheld/uhfr/UHFRManager;->formatExcludeData(I[B)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1604
    :cond_6
    invoke-virtual {p0, p2}, Lcom/handheld/uhfr/UHFRManager;->formatData(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1606
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_7
    return-object v1

    :cond_8
    if-ne v0, v2, :cond_b

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    new-instance v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lcom/uhf/api/cls/Reader$EmbededData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1617
    iput p2, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bank:I

    .line 1618
    iput p3, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    .line 1619
    iput p4, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    .line 1620
    iput-object p5, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    .line 1621
    sget-object p2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object p3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_EMBEDEDDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p2, p3, v3}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    new-array p2, v2, [I

    .line 1624
    sget-object p3, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object p4, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {p3, p4, v2, p1, p2}, Lcom/uhf/api/cls/Reader;->TagInventory_Raw([IIS[I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1625
    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p3, :cond_9

    .line 1626
    sput-object p1, Lcom/handheld/uhfr/UHFRManager;->mErr:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v1

    :cond_9
    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 1630
    :goto_1
    aget p4, p2, p1

    if-ge p3, p4, :cond_a

    .line 1631
    new-instance p4, Lcom/uhf/api/cls/Reader$TAGINFO;

    sget-object p5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p4, p5}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1632
    sget-object p5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {p5, p4}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p5

    .line 1633
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p5, v1, :cond_a

    .line 1634
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_a
    return-object v0

    :cond_b
    return-object v1
.end method

.method public tagEpcTidInventoryByTimer(S)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/Reader$TAGINFO;",
            ">;"
        }
    .end annotation

    .line 1502
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 1503
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v5, 0x1

    .line 1504
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1505
    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    .line 1506
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;

    const/4 v5, 0x6

    invoke-direct {v4, v3, v5}, Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setReadTid(Lcom/gg/reader/api/protocol/gx/ParamEpcReadTid;)V

    .line 1507
    iget-object v3, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1508
    iget-object v3, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {v3}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1513
    :cond_0
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v3, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1514
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MsgBaseInventoryEpc"

    invoke-static {v4, v3}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result v0

    if-nez v0, :cond_2

    int-to-long v3, p1

    .line 1517
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1518
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1519
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    const-string v0, "tagInventoryByTimer"

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1522
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->getbData()[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/handheld/uhfr/UHFRManager;->formatExcludeData(I[B)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1524
    :cond_1
    invoke-virtual {p0, v1}, Lcom/handheld/uhfr/UHFRManager;->formatData(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1526
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    return-object v2

    :cond_3
    if-ne v0, v4, :cond_6

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1536
    new-instance v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    sget-object v6, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/uhf/api/cls/Reader$EmbededData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1537
    iput-object v2, v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    .line 1538
    iput v1, v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bank:I

    .line 1539
    iput v3, v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    const/16 v1, 0xc

    .line 1540
    iput v1, v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    .line 1541
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_EMBEDEDDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v6, v5}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    new-array v1, v4, [I

    .line 1544
    sget-object v5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v6, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {v5, v6, v4, p1, v1}, Lcom/uhf/api/cls/Reader;->TagInventory_Raw([IIS[I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1545
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, v4, :cond_4

    .line 1546
    sput-object p1, Lcom/handheld/uhfr/UHFRManager;->mErr:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v2

    :cond_4
    const/4 p1, 0x0

    .line 1550
    :goto_0
    aget v2, v1, v3

    if-ge p1, v2, :cond_5

    .line 1551
    new-instance v2, Lcom/uhf/api/cls/Reader$TAGINFO;

    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1552
    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v4, v2}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 1553
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v4, v5, :cond_5

    .line 1554
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    return-object v2
.end method

.method public tagInventoryByTimer(S)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/Reader$TAGINFO;",
            ">;"
        }
    .end annotation

    .line 1080
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1081
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;-><init>()V

    const-wide/16 v3, 0x1

    .line 1082
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1083
    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setInventoryMode(I)V

    .line 1084
    iget-object v2, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1085
    iget-object v2, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {v2}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1090
    :cond_0
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1091
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MsgBaseInventoryEpc"

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseInventoryEpc;->getRtCode()B

    move-result v0

    if-nez v0, :cond_2

    int-to-long v2, p1

    .line 1094
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1095
    new-instance p1, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;-><init>()V

    .line 1096
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    const-string v0, "MsgBaseStop"

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseStop;->getRtCode()B

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1099
    iget-object p1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {p1}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->getbData()[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/handheld/uhfr/UHFRManager;->formatExcludeData(I[B)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1101
    :cond_1
    invoke-virtual {p0, v0}, Lcom/handheld/uhfr/UHFRManager;->formatData(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1103
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    return-object v1

    :cond_3
    if-ne v0, v2, :cond_6

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v3, v2, [I

    .line 1119
    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    iget-object v5, p0, Lcom/handheld/uhfr/UHFRManager;->ants:[I

    invoke-virtual {v4, v5, v2, p1, v3}, Lcom/uhf/api/cls/Reader;->TagInventory_Raw([IIS[I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tagInventoryByTimer, TagInventory_Raw er: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; tagcnt[0]="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v5, v3, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    .line 1122
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, v2, :cond_4

    const/4 p1, 0x0

    .line 1123
    :goto_0
    aget v1, v3, v4

    if-ge p1, v1, :cond_5

    .line 1124
    new-instance v1, Lcom/uhf/api/cls/Reader$TAGINFO;

    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1125
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2, v1}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 1126
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v5, :cond_5

    .line 1127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1135
    :cond_4
    sput-object p1, Lcom/handheld/uhfr/UHFRManager;->mErr:Lcom/uhf/api/cls/Reader$READER_ERR;

    move-object v0, v1

    :cond_5
    return-object v0

    .line 1143
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1144
    new-instance v0, Lcom/uhf/api/cls/Reader$TAGINFO;

    new-instance v1, Lcom/uhf/api/cls/Reader;

    invoke-direct {v1}, Lcom/uhf/api/cls/Reader;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1145
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcn/com/example/rfid/driver/Driver;->SingleRead(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u83b7\u53d6\u5931\u8d25"

    .line 1146
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zeng-"

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-static {v1}, Lcn/pda/serialport/Tools;->HexString2Bytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    .line 1149
    iget-object v1, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    array-length v1, v1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 1150
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p1
.end method

.method public tagInventoryRealTime()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/Reader$TAGINFO;",
            ">;"
        }
    .end annotation

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 953
    sget v1, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v1, :cond_2

    const/4 v0, 0x4

    .line 955
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->fastId:Lcom/gg/reader/api/protocol/gx/ParamFastId;

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamFastId;->getFastId()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/handheld/uhfr/CusParamFilter;->isMatching()Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    iget-object v1, p0, Lcom/handheld/uhfr/UHFRManager;->filter:Lcom/handheld/uhfr/CusParamFilter;

    invoke-virtual {v1}, Lcom/handheld/uhfr/CusParamFilter;->getFilter()Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->getbData()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/handheld/uhfr/UHFRManager;->formatExcludeData(I[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 961
    :cond_1
    invoke-virtual {p0, v0}, Lcom/handheld/uhfr/UHFRManager;->formatData(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    new-array v1, v2, [I

    .line 983
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2, v1}, Lcom/uhf/api/cls/Reader;->AsyncGetTagCount([I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 985
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v3, :cond_3

    .line 986
    sput-object v2, Lcom/handheld/uhfr/UHFRManager;->mErr:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 989
    :goto_0
    aget v4, v1, v2

    if-ge v3, v4, :cond_6

    .line 990
    new-instance v4, Lcom/uhf/api/cls/Reader$TAGINFO;

    sget-object v5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 991
    sget-object v5, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v5, v4}, Lcom/uhf/api/cls/Reader;->AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v5

    .line 993
    sget-object v6, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v6, :cond_4

    .line 994
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1001
    :cond_5
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    invoke-virtual {v1}, Lcn/com/example/rfid/driver/Driver;->GetBufData()Ljava/lang/String;

    move-result-object v1

    .line 1002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/handheld/uhfr/UHFRManager;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", s:getBufData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zeng-"

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    const-string v2, "null"

    .line 1003
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1004
    invoke-virtual {p0, v1}, Lcom/handheld/uhfr/UHFRManager;->getBuf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$TAGINFO;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public write6BUser([BI[B)Z
    .locals 3

    .line 1222
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v0, :cond_0

    .line 1223
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;-><init>()V

    const-wide/16 v1, 0x1

    .line 1225
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1227
    invoke-virtual {v0, p2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setStart(I)V

    .line 1229
    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setbMatchTid([B)V

    .line 1231
    invoke-virtual {v0, p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->setBwriteData([B)V

    .line 1233
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1234
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWrite6b;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public writeGJB(II[BII[B[B)Z
    .locals 3

    .line 1440
    new-instance v0, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;

    invoke-direct {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;-><init>()V

    const-wide/16 v1, 0x1

    .line 1441
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setAntennaEnable(Ljava/lang/Long;)V

    .line 1442
    invoke-virtual {v0, p4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setArea(I)V

    .line 1443
    invoke-virtual {v0, p5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setStart(I)V

    const/4 p4, 0x1

    if-lez p1, :cond_0

    .line 1446
    new-instance p5, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {p5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    sub-int/2addr p1, p4

    .line 1447
    invoke-virtual {p5, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    .line 1448
    invoke-virtual {p5, p3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 1449
    array-length p1, p3

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p5, p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1450
    invoke-virtual {p5, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1451
    invoke-virtual {v0, p5}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    :cond_0
    if-eqz p7, :cond_1

    .line 1454
    array-length p1, p7

    invoke-static {p7, p1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setHexPassword(Ljava/lang/String;)V

    :cond_1
    if-eqz p6, :cond_2

    .line 1457
    invoke-virtual {v0, p6}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->setBwriteData([B)V

    .line 1459
    :cond_2
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, v0}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1460
    invoke-virtual {v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteGJb;->getRtCode()B

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    :goto_0
    return p4
.end method

.method public writeTagData(CI[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    .line 1885
    sget v1, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v1, :cond_1

    .line 1886
    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 1887
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    move/from16 v11, p1

    .line 1888
    invoke-virtual {v1, v11}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    move/from16 v12, p2

    .line 1889
    invoke-virtual {v1, v12}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 1890
    invoke-static/range {p3 .. p3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1892
    invoke-static/range {p4 .. p4}, Lcom/handheld/uhfr/PcUtils;->getValueLen(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    const/16 v4, 0x30

    .line 1898
    invoke-static {v2, v3, v4}, Lcom/handheld/uhfr/PcUtils;->padRight(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 1903
    invoke-static/range {p5 .. p5}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexPassword(Ljava/lang/String;)V

    .line 1904
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v2, v1}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1905
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MsgBaseWriteEpc"

    invoke-static {v3, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    invoke-virtual {v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object v1

    :cond_1
    move/from16 v11, p1

    move/from16 v12, p2

    const/4 v13, 0x1

    if-ne v1, v13, :cond_6

    .line 1908
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1909
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    const/4 v14, 0x3

    .line 1912
    :cond_2
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v2, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/uhf/api/cls/Reader;->WriteTagData(ICI[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    add-int/lit8 v14, v14, -0x1

    if-ge v14, v13, :cond_3

    goto :goto_1

    .line 1918
    :cond_3
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_2

    .line 1920
    :goto_1
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_5

    .line 1921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeTagData, WriteTagData result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    goto :goto_2

    .line 1924
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeTagData, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-object v1

    .line 1930
    :cond_6
    sget-object v3, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length v1, v10

    invoke-static {v10, v1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v1, v9

    .line 1937
    invoke-static {v9, v1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    array-length v2, v9

    .line 1938
    invoke-static {v9, v2}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    move/from16 v9, p1

    move/from16 v10, p2

    move v11, v1

    move-object v12, v2

    .line 1930
    invoke-virtual/range {v3 .. v12}, Lcn/com/example/rfid/driver/Driver;->Write_Data_Tag(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1939
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_3
    return-object v1
.end method

.method public writeTagDataByFilter(CI[BI[BS[BIIZ)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v1, p7

    move/from16 v3, p8

    .line 1946
    sget v2, Lcom/handheld/uhfr/UHFRManager;->type:I

    if-nez v2, :cond_2

    .line 1947
    new-instance v2, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v4, 0x1

    .line 1948
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    move/from16 v11, p1

    .line 1949
    invoke-virtual {v2, v11}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    move/from16 v12, p2

    .line 1950
    invoke-virtual {v2, v12}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 1951
    invoke-static/range {p3 .. p3}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1953
    invoke-static/range {p4 .. p4}, Lcom/handheld/uhfr/PcUtils;->getValueLen(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    const/16 v6, 0x30

    .line 1959
    invoke-static {v4, v5, v6}, Lcom/handheld/uhfr/PcUtils;->padRight(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 1960
    invoke-static {v4, v5, v6}, Lcom/handheld/uhfr/PcUtils;->padRight(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 1961
    invoke-static/range {p5 .. p5}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexPassword(Ljava/lang/String;)V

    if-eqz p10, :cond_0

    .line 1964
    new-instance v4, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {v4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 1965
    invoke-virtual {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 v3, p9, 0x10

    .line 1966
    invoke-virtual {v4, v3}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 1967
    invoke-virtual {v4, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 1968
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v4, v1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 1969
    invoke-virtual {v2, v4}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 1971
    :cond_0
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {v1, v2}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 1972
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MsgBaseWriteEpc"

    invoke-static {v3, v1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v2}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object v1

    :cond_2
    move/from16 v11, p1

    move/from16 v12, p2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_8

    .line 1977
    new-instance v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v4}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1978
    iput-object v1, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    .line 1979
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x8

    iput v1, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    if-eqz p10, :cond_3

    const/4 v1, 0x0

    .line 1981
    iput v1, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto :goto_1

    .line 1983
    :cond_3
    iput v13, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    .line 1985
    :goto_1
    iput v3, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    mul-int/lit8 v1, p9, 0x10

    .line 1986
    iput v1, v2, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 1988
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v1, v3, v2}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1989
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_6

    const/4 v1, 0x3

    const/4 v14, 0x3

    .line 1992
    :cond_4
    sget-object v1, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v2, 0x1

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/uhf/api/cls/Reader;->WriteTagData(ICI[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    add-int/lit8 v14, v14, -0x1

    if-ge v14, v13, :cond_5

    goto :goto_2

    .line 1998
    :cond_5
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_4

    .line 2000
    :goto_2
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_7

    .line 2001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeTagDataByFilter, WriteTagData result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    goto :goto_3

    .line 2004
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeTagDataByFilter, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-object v1

    .line 2010
    :cond_8
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->driver:Lcn/com/example/rfid/driver/Driver;

    array-length v4, v10

    invoke-static {v10, v4}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v4

    mul-int/lit8 v5, p9, 0x10

    array-length v6, v1

    .line 2013
    invoke-static {v1, v6}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    array-length v7, v1

    .line 2014
    invoke-static {v1, v7}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v7

    array-length v1, v9

    .line 2017
    invoke-static {v9, v1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v10, v1, 0x4

    array-length v1, v9

    .line 2018
    invoke-static {v9, v1}, Lcn/pda/serialport/Tools;->Bytes2HexString([BI)Ljava/lang/String;

    move-result-object v13

    move-object v1, v2

    move-object v2, v4

    move/from16 v3, p8

    move v4, v5

    move v5, v6

    move-object v6, v7

    move/from16 v7, p1

    move/from16 v8, p2

    move v9, v10

    move-object v10, v13

    .line 2010
    invoke-virtual/range {v1 .. v10}, Lcn/com/example/rfid/driver/Driver;->Write_Data_Tag(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 2019
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_4
    return-object v1
.end method

.method public writeTagEPC([B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 8

    .line 2024
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2025
    new-instance p3, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 2026
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2027
    invoke-virtual {p3, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 2028
    invoke-virtual {p3, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 2029
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    .line 2030
    invoke-static {p1}, Lcom/handheld/uhfr/PcUtils;->getValueLen(Ljava/lang/String;)I

    move-result v0

    .line 2031
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/handheld/uhfr/PcUtils;->getPc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x4

    const/16 v2, 0x30

    invoke-static {p1, v0, v2}, Lcom/handheld/uhfr/PcUtils;->padRight(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 2032
    invoke-static {p2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexPassword(Ljava/lang/String;)V

    .line 2033
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, p3}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2034
    invoke-virtual {p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsgBaseWriteEpc"

    invoke-static {p2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    invoke-virtual {p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object p1

    :cond_1
    if-ne v0, v1, :cond_5

    .line 2037
    sget-object v0, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v0, 0x3

    .line 2040
    :cond_2
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v3, 0x1

    array-length v5, p1

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/uhf/api/cls/Reader;->WriteTagEpcEx(I[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    if-ge v0, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 2046
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_2

    .line 2048
    :goto_1
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, p1, :cond_4

    .line 2049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeTagEPC, WriteTagEpcEx result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_4
    return-object v2

    .line 2055
    :cond_5
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1
.end method

.method public writeTagEPCByFilter([B[BS[BIIZ)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 8

    .line 2064
    sget v0, Lcom/handheld/uhfr/UHFRManager;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2065
    new-instance p3, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;

    invoke-direct {p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;-><init>()V

    const-wide/16 v2, 0x1

    .line 2066
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setAntennaEnable(Ljava/lang/Long;)V

    .line 2067
    invoke-virtual {p3, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setArea(I)V

    .line 2068
    invoke-virtual {p3, v1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setStart(I)V

    .line 2069
    invoke-static {p1}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    .line 2070
    invoke-static {p1}, Lcom/handheld/uhfr/PcUtils;->getValueLen(Ljava/lang/String;)I

    move-result v0

    .line 2071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/handheld/uhfr/PcUtils;->getPc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x4

    const/16 v2, 0x30

    invoke-static {p1, v0, v2}, Lcom/handheld/uhfr/PcUtils;->padRight(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexWriteData(Ljava/lang/String;)V

    .line 2072
    invoke-static {p2}, Lcom/gg/reader/api/utils/HexUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setHexPassword(Ljava/lang/String;)V

    if-eqz p7, :cond_0

    .line 2074
    new-instance p1, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;

    invoke-direct {p1}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;-><init>()V

    .line 2075
    invoke-virtual {p1, p5}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setArea(I)V

    mul-int/lit8 p6, p6, 0x10

    .line 2076
    invoke-virtual {p1, p6}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitStart(I)V

    .line 2077
    invoke-virtual {p1, p4}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setbData([B)V

    .line 2078
    array-length p2, p4

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2}, Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;->setBitLength(I)V

    .line 2079
    invoke-virtual {p3, p1}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->setFilter(Lcom/gg/reader/api/protocol/gx/ParamEpcFilter;)V

    .line 2081
    :cond_0
    sget-object p1, Lcom/handheld/uhfr/UHFRManager;->client:Lcom/gg/reader/api/dal/GClient;

    invoke-virtual {p1, p3}, Lcom/gg/reader/api/dal/GClient;->sendSynMsg(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 2082
    invoke-virtual {p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtMsg()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MsgBaseWriteEpc"

    invoke-static {p2, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p3}, Lcom/gg/reader/api/protocol/gx/MsgBaseWriteEpc;->getRtCode()B

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :goto_0
    return-object p1

    :cond_2
    if-ne v0, v1, :cond_8

    .line 2086
    new-instance v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/uhf/api/cls/Reader$TagFilter_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2087
    iput-object p4, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    .line 2088
    array-length p4, p4

    mul-int/lit8 p4, p4, 0x8

    iput p4, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    if-eqz p7, :cond_3

    const/4 p4, 0x0

    .line 2090
    iput p4, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto :goto_1

    .line 2092
    :cond_3
    iput v1, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    .line 2095
    :goto_1
    iput p5, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    mul-int/lit8 p6, p6, 0x10

    .line 2096
    iput p6, v0, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 2098
    sget-object p4, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    sget-object p5, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_FILTER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p4, p5, v0}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p4

    .line 2099
    sget-object p5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p4, p5, :cond_7

    const/4 p4, 0x3

    .line 2102
    :cond_4
    sget-object v2, Lcom/handheld/uhfr/UHFRManager;->reader:Lcom/uhf/api/cls/Reader;

    const/4 v3, 0x1

    array-length v5, p1

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/uhf/api/cls/Reader;->WriteTagEpcEx(I[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p5

    if-ge p4, v1, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 p4, p4, -0x1

    .line 2108
    sget-object p6, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p5, p6, :cond_4

    .line 2109
    :goto_2
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p5, p1, :cond_6

    .line 2110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeTagEPCByFilter, WriteTagEpcEx result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :cond_6
    move-object p4, p5

    goto :goto_3

    .line 2113
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeTagEPCByFilter, ParamSet MTR_PARAM_TAG_FILTER result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/handheld/uhfr/UHFRManager;->logPrint(Ljava/lang/String;)V

    :goto_3
    return-object p4

    .line 2120
    :cond_8
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1
.end method
