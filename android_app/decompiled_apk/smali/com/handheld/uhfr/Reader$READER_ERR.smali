.class public final enum Lcom/handheld/uhfr/Reader$READER_ERR;
.super Ljava/lang/Enum;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handheld/uhfr/Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "READER_ERR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/handheld/uhfr/Reader$READER_ERR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum M6E_INIT_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_CMD_FAILED_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_CMD_NO_TAG_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_INTERNAL_DEV_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_INVALID_READER_HANDLE:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_IO_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_JNI_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_M5E_FATAL_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_MAX_ERR_NUM:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_MAX_INT_NUM:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_OK_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_OP_EXECING:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_OP_INVALID:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_OP_NOT_SUPPORTED:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_OTHER_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_1:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_2:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_3:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_4:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_TEST_DEV_FAULT_5:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_UNKNOWN_READER_TYPE:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

.field public static final enum MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 53
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v1, 0x0

    const-string v2, "MT_OK_ERR"

    invoke-direct {v0, v2, v1, v1}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OK_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 54
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v2, 0x1

    const-string v3, "MT_IO_ERR"

    invoke-direct {v0, v3, v2, v2}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_IO_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 55
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v3, 0x2

    const-string v4, "MT_INTERNAL_DEV_ERR"

    invoke-direct {v0, v4, v3, v3}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 56
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v4, 0x3

    const-string v5, "MT_CMD_FAILED_ERR"

    invoke-direct {v0, v5, v4, v4}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 57
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v5, 0x4

    const-string v6, "MT_CMD_NO_TAG_ERR"

    invoke-direct {v0, v6, v5, v5}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 58
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v6, 0x5

    const-string v7, "MT_M5E_FATAL_ERR"

    invoke-direct {v0, v7, v6, v6}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 59
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v7, 0x6

    const-string v8, "MT_OP_NOT_SUPPORTED"

    invoke-direct {v0, v8, v7, v7}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 60
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/4 v8, 0x7

    const-string v9, "MT_INVALID_PARA"

    invoke-direct {v0, v9, v8, v8}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 61
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v9, 0x8

    const-string v10, "MT_INVALID_READER_HANDLE"

    invoke-direct {v0, v10, v9, v9}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 62
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v10, 0x9

    const-string v11, "MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS"

    invoke-direct {v0, v11, v10, v10}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 63
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v11, 0xa

    const-string v12, "MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET"

    invoke-direct {v0, v12, v11, v11}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 64
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v12, 0xb

    const-string v13, "MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS"

    invoke-direct {v0, v13, v12, v12}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 65
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v13, 0xc

    const-string v14, "MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE"

    invoke-direct {v0, v14, v13, v13}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 66
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v14, 0xd

    const-string v15, "MT_HARDWARE_ALERT_ERR_BY_READER_DOWN"

    invoke-direct {v0, v15, v14, v14}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 67
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v15, 0xe

    const-string v14, "MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR"

    invoke-direct {v0, v14, v15, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 68
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v14, "M6E_INIT_FAILED"

    const/16 v15, 0xf

    const/16 v13, 0xf

    invoke-direct {v0, v14, v15, v13}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 69
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_OP_EXECING"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_EXECING:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 70
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_UNKNOWN_READER_TYPE"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 71
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_OP_INVALID"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_INVALID:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 72
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 73
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_MAX_ERR_NUM"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 74
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_MAX_INT_NUM"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_MAX_INT_NUM:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 75
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_1"

    const/16 v14, 0x16

    const/16 v15, 0x33

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 76
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_2"

    const/16 v14, 0x17

    const/16 v15, 0x34

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 77
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_3"

    const/16 v14, 0x18

    const/16 v15, 0x35

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 78
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_4"

    const/16 v14, 0x19

    const/16 v15, 0x36

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 79
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_TEST_DEV_FAULT_5"

    const/16 v14, 0x1a

    const/16 v15, 0x37

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 80
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_UPDFWFROMSP_OPENFILE_FAILED"

    const/16 v14, 0x1b

    const/16 v15, 0x50

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 81
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_UPDFWFROMSP_FILE_FORMAT_ERR"

    const/16 v14, 0x1c

    const/16 v15, 0x51

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 82
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_JNI_INVALID_PARA"

    const/16 v14, 0x1d

    const/16 v15, 0x65

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 83
    new-instance v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    const-string v13, "MT_OTHER_ERR"

    const/16 v14, 0x1e

    const v15, -0x10000001

    invoke-direct {v0, v13, v14, v15}, Lcom/handheld/uhfr/Reader$READER_ERR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/handheld/uhfr/Reader$READER_ERR;

    .line 51
    sget-object v13, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OK_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v13, v0, v1

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_IO_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v8

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v9

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v10

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v11

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/handheld/uhfr/Reader$READER_ERR;

    aput-object v1, v0, v12

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_EXECING:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_INVALID:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_MAX_ERR_NUM:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_MAX_INT_NUM:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->$VALUES:[Lcom/handheld/uhfr/Reader$READER_ERR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lcom/handheld/uhfr/Reader$READER_ERR;->value:I

    .line 88
    iput p3, p0, Lcom/handheld/uhfr/Reader$READER_ERR;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/handheld/uhfr/Reader$READER_ERR;
    .locals 1

    const/16 v0, 0x50

    if-eq p0, v0, :cond_2

    const/16 v0, 0x51

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 154
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 146
    :pswitch_0
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_5:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 144
    :pswitch_1
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_4:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 142
    :pswitch_2
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_3:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 140
    :pswitch_3
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_2:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 138
    :pswitch_4
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_TEST_DEV_FAULT_1:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 136
    :pswitch_5
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 134
    :pswitch_6
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OTHER_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 132
    :pswitch_7
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_BY_FAILED_RESET_MODLUE:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 130
    :pswitch_8
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_INVALID:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 128
    :pswitch_9
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UNKNOWN_READER_TYPE:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 126
    :pswitch_a
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_EXECING:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 124
    :pswitch_b
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->M6E_INIT_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 122
    :pswitch_c
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_UNKNOWN_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 120
    :pswitch_d
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_READER_DOWN:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 118
    :pswitch_e
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGH_TEMPERATURE:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 116
    :pswitch_f
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_NO_ANTENNAS:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 114
    :pswitch_10
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_TOO_MANY_RESET:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 112
    :pswitch_11
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_HARDWARE_ALERT_ERR_BY_HIGN_RETURN_LOSS:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 110
    :pswitch_12
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INVALID_READER_HANDLE:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 108
    :pswitch_13
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 106
    :pswitch_14
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 104
    :pswitch_15
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_M5E_FATAL_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 102
    :pswitch_16
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_CMD_NO_TAG_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 100
    :pswitch_17
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 98
    :pswitch_18
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_INTERNAL_DEV_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 96
    :pswitch_19
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_IO_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 94
    :pswitch_1a
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_OK_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 152
    :cond_0
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_JNI_INVALID_PARA:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 150
    :cond_1
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UPDFWFROMSP_FILE_FORMAT_ERR:Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0

    .line 148
    :cond_2
    sget-object p0, Lcom/handheld/uhfr/Reader$READER_ERR;->MT_UPDFWFROMSP_OPENFILE_FAILED:Lcom/handheld/uhfr/Reader$READER_ERR;

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

.method public static valueOf(Ljava/lang/String;)Lcom/handheld/uhfr/Reader$READER_ERR;
    .locals 1

    .line 51
    const-class v0, Lcom/handheld/uhfr/Reader$READER_ERR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object p0
.end method

.method public static values()[Lcom/handheld/uhfr/Reader$READER_ERR;
    .locals 1

    .line 51
    sget-object v0, Lcom/handheld/uhfr/Reader$READER_ERR;->$VALUES:[Lcom/handheld/uhfr/Reader$READER_ERR;

    invoke-virtual {v0}, [Lcom/handheld/uhfr/Reader$READER_ERR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handheld/uhfr/Reader$READER_ERR;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/handheld/uhfr/Reader$READER_ERR;->value:I

    return v0
.end method
