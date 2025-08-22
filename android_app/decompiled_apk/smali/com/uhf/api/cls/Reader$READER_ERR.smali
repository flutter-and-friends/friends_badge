.class public final enum Lcom/uhf/api/cls/Reader$READER_ERR;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uhf/api/cls/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "READER_ERR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uhf/api/cls/Reader$READER_ERR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_MAX_INT_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

.field public static final enum MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 412
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v1, 0x0

    const-string v2, "MT_OK_ERR"

    invoke-direct {v0, v2, v1, v1}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 413
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v2, 0x1

    const-string v3, "MT_IO_ERR"

    invoke-direct {v0, v3, v2, v2}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 414
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v3, 0x2

    const-string v4, "MT_INTERNAL_DEV_ERR"

    invoke-direct {v0, v4, v3, v3}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 415
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v4, 0x3

    const-string v5, "MT_CMD_FAILED_ERR"

    invoke-direct {v0, v5, v4, v4}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 416
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v5, 0x4

    const-string v6, "MT_CMD_NO_TAG_ERR"

    invoke-direct {v0, v6, v5, v5}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 417
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v6, 0x5

    const-string v7, "MT_M5E_FATAL_ERR"

    invoke-direct {v0, v7, v6, v6}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 418
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v7, 0x6

    const-string v8, "MT_OP_NOT_SUPPORTED"

    invoke-direct {v0, v8, v7, v7}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 419
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v8, 0x7

    const-string v9, "MT_INVALID_PARA"

    invoke-direct {v0, v9, v8, v8}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 420
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v9, 0x8

    const-string v10, "MT_INVALID_READER_HANDLE"

    invoke-direct {v0, v10, v9, v9}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 421
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v10, 0x9

    const-string v11, "MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS"

    invoke-direct {v0, v11, v10, v10}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 422
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v11, 0xa

    const-string v12, "MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET"

    invoke-direct {v0, v12, v11, v11}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 423
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v12, 0xb

    const-string v13, "MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS"

    invoke-direct {v0, v13, v12, v12}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 424
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v13, 0xc

    const-string v14, "MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE"

    invoke-direct {v0, v14, v13, v13}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 425
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v14, 0xd

    const-string v15, "MT_HARDWARE_ALERT_ERR_BY_READER_DOWN"

    invoke-direct {v0, v15, v14, v14}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 426
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v15, 0xe

    const-string v14, "MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR"

    invoke-direct {v0, v14, v15, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 427
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v14, "M6E_INIT_FAILED"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 428
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_OP_EXECING"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 429
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_UNKNOWN_READER_TYPE"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 430
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_OP_INVALID"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 431
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 432
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_MAX_ERR_NUM"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 433
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_MAX_INT_NUM"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_INT_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 434
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_1"

    const/16 v14, 0x16

    const/16 v15, 0x33

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 435
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_2"

    const/16 v14, 0x17

    const/16 v15, 0x34

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 436
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_3"

    const/16 v14, 0x18

    const/16 v15, 0x35

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 437
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_4"

    const/16 v14, 0x19

    const/16 v15, 0x36

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 438
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_5"

    const/16 v14, 0x1a

    const/16 v15, 0x37

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 439
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_UPDFWFROMSP_OPENFILE_FAILED"

    const/16 v14, 0x1b

    const/16 v15, 0x50

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 440
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_UPDFWFROMSP_FILE_FORMAT_ERR"

    const/16 v14, 0x1c

    const/16 v15, 0x51

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 441
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_JNI_INVALID_PARA"

    const/16 v14, 0x1d

    const/16 v15, 0x65

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 442
    new-instance v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    const-string v13, "MT_OTHER_ERR"

    const/16 v14, 0x1e

    const v15, -0x10000001

    invoke-direct {v0, v13, v14, v15}, Lcom/uhf/api/cls/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 411
    sget-object v13, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v13, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v8

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v9

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v10

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v11

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    aput-object v1, v0, v12

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_MAX_INT_NUM:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->$VALUES:[Lcom/uhf/api/cls/Reader$READER_ERR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 443
    iput p1, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    .line 446
    iput p3, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    return-void
.end method

.method static synthetic access$500(Lcom/uhf/api/cls/Reader$READER_ERR;)I
    .locals 0

    .line 411
    iget p0, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    return p0
.end method

.method public static valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x51

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 512
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 508
    :pswitch_0
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 506
    :pswitch_1
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 504
    :pswitch_2
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 502
    :pswitch_3
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 500
    :pswitch_4
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 498
    :pswitch_5
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 496
    :pswitch_6
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 490
    :pswitch_7
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 488
    :pswitch_8
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 486
    :pswitch_9
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 484
    :pswitch_a
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 482
    :pswitch_b
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 480
    :pswitch_c
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 478
    :pswitch_d
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 476
    :pswitch_e
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 474
    :pswitch_f
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 472
    :pswitch_10
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 470
    :pswitch_11
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 468
    :pswitch_12
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 466
    :pswitch_13
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 464
    :pswitch_14
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 462
    :pswitch_15
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 460
    :pswitch_16
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 458
    :pswitch_17
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 456
    :pswitch_18
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 454
    :pswitch_19
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 452
    :pswitch_1a
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 510
    :cond_0
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 494
    :cond_1
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    .line 492
    :cond_2
    sget-object p0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 1

    .line 411
    const-class v0, Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p0
.end method

.method public static values()[Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 1

    .line 411
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->$VALUES:[Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-virtual {v0}, [Lcom/uhf/api/cls/Reader$READER_ERR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 517
    iget v0, p0, Lcom/uhf/api/cls/Reader$READER_ERR;->value:I

    return v0
.end method
