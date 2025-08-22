.class public Lcom/uhf/api/cls/Reader;
.super Ljava/lang/Object;
.source "Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uhf/api/cls/Reader$READER_ERR;,
        Lcom/uhf/api/cls/Reader$IT_MODE;,
        Lcom/uhf/api/cls/Reader$Reader_Type;,
        Lcom/uhf/api/cls/Reader$Inv_Potls_ST;,
        Lcom/uhf/api/cls/Reader$Inv_Potl;,
        Lcom/uhf/api/cls/Reader$SL_TagProtocol;,
        Lcom/uhf/api/cls/Reader$Mtr_Param;,
        Lcom/uhf/api/cls/Reader$Module_Type;,
        Lcom/uhf/api/cls/Reader$HardwareDetails;,
        Lcom/uhf/api/cls/Reader$MaindBoard_Type;,
        Lcom/uhf/api/cls/Reader$TAGINFO;,
        Lcom/uhf/api/cls/Reader$EmbededData_ST;,
        Lcom/uhf/api/cls/Reader$CustomCmdType;,
        Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;,
        Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;,
        Lcom/uhf/api/cls/Reader$NXPChangeEASPara;,
        Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;,
        Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;,
        Lcom/uhf/api/cls/Reader$AntPowerConf;,
        Lcom/uhf/api/cls/Reader$AntPower;,
        Lcom/uhf/api/cls/Reader$TagFilter_ST;,
        Lcom/uhf/api/cls/Reader$ConnAnts_ST;,
        Lcom/uhf/api/cls/Reader$ReaderVersion;,
        Lcom/uhf/api/cls/Reader$Region_Conf;,
        Lcom/uhf/api/cls/Reader$HoptableData_ST;,
        Lcom/uhf/api/cls/Reader$AntPortsVSWR;,
        Lcom/uhf/api/cls/Reader$FrequencyVSWR;,
        Lcom/uhf/api/cls/Reader$Reader_Ip;,
        Lcom/uhf/api/cls/Reader$CustomParam_ST;,
        Lcom/uhf/api/cls/Reader$Default_Param;,
        Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;,
        Lcom/uhf/api/cls/Reader$TagSelector_ST;,
        Lcom/uhf/api/cls/Reader$deviceVersion;,
        Lcom/uhf/api/cls/Reader$DeviceSerialNumber;,
        Lcom/uhf/api/cls/Reader$MsgObj;,
        Lcom/uhf/api/cls/Reader$Tagnotify;,
        Lcom/uhf/api/cls/Reader$Exceptionotify;,
        Lcom/uhf/api/cls/Reader$IT_CT_notify;,
        Lcom/uhf/api/cls/Reader$IT_S2_notify;,
        Lcom/uhf/api/cls/Reader$IT_E7_notify;,
        Lcom/uhf/api/cls/Reader$IT_E7v2_notify;,
        Lcom/uhf/api/cls/Reader$EmbededSecureRead_ST;,
        Lcom/uhf/api/cls/Reader$NXPEASAlarmResult;,
        Lcom/uhf/api/cls/Reader$IMPINJM4QtResult;,
        Lcom/uhf/api/cls/Reader$BackReadGpiTriState;,
        Lcom/uhf/api/cls/Reader$Lock_Type;,
        Lcom/uhf/api/cls/Reader$Lock_Obj;
    }
.end annotation


# static fields
.field public static final HOPTABLECNT:I = 0x64

.field public static final MAXANTCNT:I = 0x10

.field public static final MAXEMBDATALEN:I = 0x80

.field public static final MAXEPCBYTESCNT:I = 0x3e

.field public static final MAXINVPOTLSCNT:I = 0x6

.field public static final MAXIPSTRLEN:I = 0x32


# instance fields
.field protected final IT_CT_M1_STEP1:I

.field final IT_CT_M1_STEP2:I

.field protected final IT_CT_M1_TESTFORDJ_STEP1:I

.field final IT_CT_M1_TESTFORDJ_STEP2:I

.field final IT_CT_M2_STEP1:I

.field final IT_CT_M2_STEP2:I

.field final IT_CT_M3:I

.field IT_CT_c:I

.field IT_CT_fres_NA:[I

.field IT_CT_fres_cn:[I

.field protected IT_CT_m1_cycle:I

.field protected IT_CT_m1_keep:I

.field protected IT_CT_m1_toma:I

.field protected IT_CT_m2_cycle:I

.field protected IT_CT_m2_keepcount:I

.field protected IT_CT_m2_toma:I

.field protected IT_CT_m2_tomc:I

.field protected IT_CT_m3_cycleread:I

.field protected IT_CT_m3_cyclestop:I

.field protected IT_CT_m3_toma:I

.field IT_CT_start:J

.field IT_CT_step:I

.field protected IT_CT_step_init:I

.field IT_CT_thread:Ljava/lang/Thread;

.field protected final IT_E7_M1_STEP1:I

.field final IT_E7_M1_STEP2:I

.field final IT_E7_M1_STEP3:I

.field final IT_E7_M1_STEP4:I

.field final IT_E7_M1_STEP5:I

.field IT_E7_centrefre:I

.field protected IT_E7_ctagcount:I

.field protected IT_E7_ctagcount2:I

.field protected IT_E7_ctagcount3:I

.field IT_E7_highfre:I

.field IT_E7_istargetA:Z

.field IT_E7_lowfre:I

.field protected IT_E7_m1_cycle:I

.field protected IT_E7_m1_cycle2:I

.field protected IT_E7_m1_cycle3:I

.field IT_E7_pow:I

.field protected IT_E7_rfm:I

.field IT_E7_rg:Lcom/uhf/api/cls/Reader$Region_Conf;

.field IT_E7_start:J

.field IT_E7_step:I

.field IT_E7_thread:Ljava/lang/Thread;

.field protected final IT_S2_M1_STEP1:I

.field final IT_S2_M1_STEP2:I

.field protected IT_S2_ctagcount:I

.field protected IT_S2_ctagcount2:I

.field IT_S2_istargetA:Z

.field protected IT_S2_m1_cycle:I

.field protected IT_S2_m1_cycle2:I

.field IT_S2_start:J

.field IT_S2_step:I

.field IT_S2_thread:Ljava/lang/Thread;

.field private final JniBytesBufferLength:I

.field addr:Ljava/lang/String;

.field protected gpitriListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/GpiTriggerListener;",
            ">;"
        }
    .end annotation
.end field

.field protected gpitriboundListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/GpiTriggerBoundaryListener;",
            ">;"
        }
    .end annotation
.end field

.field hReader:[I

.field isIT_CT_run:Z

.field isIT_E7_run:Z

.field isIT_S2_run:Z

.field isfilterpw:Z

.field it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

.field japi:Lcom/uhf/api/cls/JniModuleAPI;

.field lockobj_newadd:Ljava/util/concurrent/locks/Lock;

.field m_BackReadAnts:[I

.field m_BackReadAntsCnt:I

.field m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

.field m_FastReadOption:I

.field m_IsReadThRunning:Z

.field m_IsReadingForAll:Z

.field m_ThreadForAll:Ljava/lang/Thread;

.field m_ThreadForAllid:J

.field m_gError:I

.field pantcnt:I

.field pants:[I

.field poption:I

.field quetagstr:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected readExceptionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/ReadExceptionListener;",
            ">;"
        }
    .end annotation
.end field

.field protected readListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uhf/api/cls/ReadListener;",
            ">;"
        }
    .end annotation
.end field

.field setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

.field totalcount:I

.field totalcountlast:I

.field vstaticstarttick:J


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    .line 1118
    iput v0, p0, Lcom/uhf/api/cls/Reader;->JniBytesBufferLength:I

    const/16 v1, 0x10

    new-array v2, v1, [I

    .line 1133
    iput-object v2, p0, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    const/16 v2, 0xf

    .line 1145
    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m1_keep:I

    const/4 v2, 0x5

    .line 1146
    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m1_toma:I

    const/16 v3, 0x3e8

    .line 1147
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m1_cycle:I

    const/16 v3, 0xa

    .line 1150
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m2_keepcount:I

    .line 1151
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m2_cycle:I

    const/16 v4, 0x14

    .line 1152
    iput v4, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m2_toma:I

    .line 1153
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m2_tomc:I

    const/16 v3, 0x12c

    .line 1155
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cycleread:I

    const/16 v3, 0xc8

    .line 1156
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cyclestop:I

    const/4 v3, 0x1

    .line 1157
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_toma:I

    const/4 v4, 0x0

    .line 1160
    iput v4, p0, Lcom/uhf/api/cls/Reader;->IT_CT_M1_STEP1:I

    .line 1161
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_M1_STEP2:I

    const/4 v5, 0x2

    .line 1162
    iput v5, p0, Lcom/uhf/api/cls/Reader;->IT_CT_M2_STEP1:I

    const/4 v6, 0x3

    .line 1163
    iput v6, p0, Lcom/uhf/api/cls/Reader;->IT_CT_M2_STEP2:I

    const/4 v7, 0x4

    .line 1164
    iput v7, p0, Lcom/uhf/api/cls/Reader;->IT_CT_M3:I

    .line 1165
    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_M1_TESTFORDJ_STEP1:I

    const/4 v2, 0x6

    .line 1166
    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_M1_TESTFORDJ_STEP2:I

    .line 1169
    iput v4, p0, Lcom/uhf/api/cls/Reader;->IT_CT_step_init:I

    .line 1171
    iput v4, p0, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    .line 1182
    iput v4, p0, Lcom/uhf/api/cls/Reader;->IT_S2_M1_STEP1:I

    .line 1183
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_S2_M1_STEP2:I

    .line 1184
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_S2_m1_cycle:I

    const/16 v2, 0x32

    .line 1185
    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_S2_ctagcount:I

    const/16 v8, 0x64

    .line 1186
    iput v8, p0, Lcom/uhf/api/cls/Reader;->IT_S2_m1_cycle2:I

    .line 1187
    iput v5, p0, Lcom/uhf/api/cls/Reader;->IT_S2_ctagcount2:I

    .line 1194
    iput v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_M1_STEP1:I

    .line 1195
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_M1_STEP2:I

    .line 1196
    iput v5, p0, Lcom/uhf/api/cls/Reader;->IT_E7_M1_STEP3:I

    .line 1197
    iput v6, p0, Lcom/uhf/api/cls/Reader;->IT_E7_M1_STEP4:I

    .line 1198
    iput v7, p0, Lcom/uhf/api/cls/Reader;->IT_E7_M1_STEP5:I

    const/16 v6, 0x65

    .line 1199
    iput v6, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    .line 1200
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle:I

    .line 1201
    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount:I

    .line 1202
    iput v8, p0, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle2:I

    .line 1203
    iput v5, p0, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount2:I

    const/16 v0, 0x46

    .line 1204
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle3:I

    .line 1205
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount3:I

    const v0, 0xdf732

    .line 1207
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    const v0, 0xdc46a

    .line 1208
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    const v0, 0xe2612

    .line 1209
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    const/16 v0, 0xce4

    .line 1210
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    .line 1215
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->lockobj_newadd:Ljava/util/concurrent/locks/Lock;

    .line 1216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->quetagstr:Ljava/util/Vector;

    const/16 v0, 0x18

    new-array v0, v0, [I

    .line 1217
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_NA:[I

    new-array v0, v1, [I

    .line 1220
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_cn:[I

    .line 1224
    iput-boolean v4, p0, Lcom/uhf/api/cls/Reader;->isfilterpw:Z

    new-array v0, v3, [I

    .line 1303
    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    .line 1304
    new-instance v0, Lcom/uhf/api/cls/JniModuleAPI;

    invoke-direct {v0}, Lcom/uhf/api/cls/JniModuleAPI;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    .line 1305
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    .line 1306
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    .line 1307
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    .line 1308
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0xdf926
        0xe2612
        0xdc65e
        0xdf34a
        0xe1e42
        0xdce2e
        0xdfb1a
        0xe241e
        0xdc852
        0xdef62
        0xe0ea2
        0xdd40a
        0xdff02
        0xe1a5a
        0xdd216
        0xdf732
        0xe1866
        0xdd9e6
        0xe06d2
        0xe222a
        0xdddce
        0xde3aa
        0xe147e
        0xdeb7a
    .end array-data

    :array_1
    .array-data 4
        0xe1401
        0xe1ad7
        0xe0c31
        0xe1307
        0xe19dd
        0xe0d2b
        0xe14fb
        0xe18e3
        0xe0e25
        0xe120d
        0xe17e9
        0xe0f1f
        0xe16ef
        0xe1113
        0xe15f5
        0xe1019
    .end array-data
.end method

.method private ALOGS(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private AsyncStartReading_IT_E7([III)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 3690
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3692
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v3, :cond_0

    return-object v2

    .line 3695
    :cond_0
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 3697
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_1

    return-object v1

    :cond_1
    new-array v1, v0, [I

    aput v3, v1, v3

    const-string v2, "set S2,tarA,gen2code 107"

    .line 3717
    invoke-direct {p0, v2}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput v2, v1, v3

    .line 3719
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3721
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_2

    return-object v4

    :cond_2
    aput v3, v1, v3

    .line 3726
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3728
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_3

    return-object v4

    .line 3730
    :cond_3
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    const/16 v4, 0x6b

    aput v4, v1, v3

    .line 3733
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3734
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_4

    return-object v4

    :cond_4
    new-array v4, v0, [I

    .line 3740
    sget-object v5, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_MAXPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v5, v4}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v5

    .line 3742
    sget-object v6, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v5, v6, :cond_5

    return-object v5

    .line 3744
    :cond_5
    new-instance v5, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    invoke-direct {v5, p0}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3745
    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v6, v5}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v6

    .line 3747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set S2,tarA, pw "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " frec "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " rf "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    .line 3748
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " set gen2code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3747
    invoke-direct {p0, v7}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    .line 3750
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v6, v7, :cond_6

    return-object v6

    .line 3752
    :cond_6
    iget-object v6, v5, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    iget v5, v5, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    invoke-virtual {p0, v6, v5}, Lcom/uhf/api/cls/Reader;->Sort([II)[I

    move-result-object v5

    .line 3753
    array-length v6, v5

    div-int/2addr v6, v2

    aget v2, v5, v6

    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    .line 3754
    aget v2, v4, v3

    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    .line 3755
    iget v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {p0, p1, v2, v4}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 3757
    iget v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    aput v2, v1, v3

    .line 3758
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 3759
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_7

    return-object v1

    .line 3762
    :cond_7
    iput-object p1, p0, Lcom/uhf/api/cls/Reader;->pants:[I

    .line 3763
    iput p2, p0, Lcom/uhf/api/cls/Reader;->pantcnt:I

    .line 3764
    iput p3, p0, Lcom/uhf/api/cls/Reader;->poption:I

    .line 3766
    invoke-virtual {p0, p1, p2, p3}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 3767
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p2, :cond_8

    return-object p1

    .line 3770
    :cond_8
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->Reset_IT()V

    .line 3771
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    const-string p2, "---init"

    .line 3772
    invoke-direct {p0, p2}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    .line 3773
    new-instance p2, Lcom/uhf/api/cls/Reader$IT_E7_notify;

    invoke-direct {p2, p0, p0}, Lcom/uhf/api/cls/Reader$IT_E7_notify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V

    .line 3774
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_thread:Ljava/lang/Thread;

    .line 3775
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    .line 3776
    iget-object p2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_thread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p1
.end method

.method private AsyncStartReading_IT_E7v2([III)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 3784
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3786
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    .line 3789
    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rg:Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 3790
    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    aget-object v1, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 3792
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_1

    return-object v1

    :cond_1
    new-array v1, v0, [I

    aput v2, v1, v2

    const-string v3, "set S2,tarA,gen2code 107"

    .line 3797
    invoke-direct {p0, v3}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 3799
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3801
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_2

    return-object v4

    :cond_2
    const/4 v4, -0x1

    aput v4, v1, v2

    .line 3807
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3809
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_3

    return-object v4

    :cond_3
    aput v2, v1, v2

    .line 3813
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3815
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_4

    return-object v4

    .line 3817
    :cond_4
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_istargetA:Z

    const/16 v4, 0x6b

    aput v4, v1, v2

    .line 3820
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3821
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v5, :cond_5

    return-object v4

    :cond_5
    new-array v4, v0, [I

    .line 3827
    sget-object v5, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_MAXPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v5, v4}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v5

    .line 3829
    sget-object v6, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v5, v6, :cond_6

    return-object v5

    .line 3831
    :cond_6
    new-instance v5, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    invoke-direct {v5, p0}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3832
    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v6, v5}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v6

    .line 3836
    sget-object v7, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v6, v7, :cond_7

    return-object v6

    .line 3838
    :cond_7
    iget-object v6, v5, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    iget v5, v5, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    invoke-virtual {p0, v6, v5}, Lcom/uhf/api/cls/Reader;->Sort([II)[I

    move-result-object v5

    .line 3839
    array-length v6, v5

    sub-int/2addr v6, v0

    aget v6, v5, v6

    iput v6, p0, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    .line 3840
    aget v6, v5, v2

    iput v6, p0, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    .line 3841
    array-length v6, v5

    div-int/2addr v6, v3

    aget v3, v5, v6

    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    .line 3842
    aget v3, v4, v2

    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    .line 3843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set S2,tarA, pw "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " frec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " frel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    .line 3844
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " freh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " rf "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3843
    invoke-direct {p0, v3}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    .line 3845
    iget v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {p0, p1, v3, v4}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 3846
    iget v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {p0, p1, v3, v4}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 3847
    iget v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    iget v4, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {p0, p1, v3, v4}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 3850
    iget v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I

    aput v3, v1, v2

    .line 3851
    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v3, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 3852
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v3, :cond_8

    return-object v1

    .line 3855
    :cond_8
    iput-object p1, p0, Lcom/uhf/api/cls/Reader;->pants:[I

    .line 3856
    iput p2, p0, Lcom/uhf/api/cls/Reader;->pantcnt:I

    .line 3857
    iput p3, p0, Lcom/uhf/api/cls/Reader;->poption:I

    .line 3859
    invoke-virtual {p0, p1, p2, p3}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 3860
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p2, :cond_9

    return-object p1

    .line 3863
    :cond_9
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->Reset_IT()V

    .line 3864
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    const-string p2, "---init"

    .line 3865
    invoke-direct {p0, p2}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    .line 3866
    new-instance p2, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;

    invoke-direct {p2, p0, p0}, Lcom/uhf/api/cls/Reader$IT_E7v2_notify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V

    .line 3867
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_thread:Ljava/lang/Thread;

    .line 3868
    iput v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_step:I

    .line 3869
    iget-object p2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_thread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p1
.end method

.method private AsyncStartReading_IT_S2([III)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 3600
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3602
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v3, :cond_0

    return-object v2

    .line 3605
    :cond_0
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 3607
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_1

    return-object v1

    :cond_1
    new-array v1, v0, [I

    aput v3, v1, v3

    .line 3611
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3613
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v4, :cond_2

    return-object v2

    .line 3616
    :cond_2
    aget v2, v1, v3

    const-string v4, "set S2"

    const/4 v5, 0x2

    if-eqz v2, :cond_5

    aget v2, v1, v3

    if-ne v2, v0, :cond_3

    goto :goto_0

    .line 3623
    :cond_3
    aget v2, v1, v3

    const/4 v6, 0x3

    if-ne v2, v5, :cond_4

    const-string v2, "set S3"

    .line 3624
    invoke-direct {p0, v2}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    aput v6, v1, v3

    .line 3626
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3628
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v4, :cond_6

    return-object v2

    .line 3630
    :cond_4
    aget v2, v1, v3

    if-ne v2, v6, :cond_6

    .line 3631
    invoke-direct {p0, v4}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    aput v5, v1, v3

    .line 3633
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3635
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v4, :cond_6

    return-object v2

    .line 3617
    :cond_5
    :goto_0
    invoke-direct {p0, v4}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    aput v5, v1, v3

    .line 3619
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3621
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v4, :cond_6

    return-object v2

    :cond_6
    aput v3, v1, v3

    .line 3640
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TARGET:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3642
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v4, :cond_7

    return-object v2

    .line 3644
    :cond_7
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->IT_S2_istargetA:Z

    const/16 v2, 0x13

    aput v2, v1, v3

    .line 3647
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_TAGENCODING:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 3648
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v1, v2, :cond_8

    return-object v1

    .line 3652
    :cond_8
    iput-object p1, p0, Lcom/uhf/api/cls/Reader;->pants:[I

    .line 3653
    iput p2, p0, Lcom/uhf/api/cls/Reader;->pantcnt:I

    .line 3654
    iput p3, p0, Lcom/uhf/api/cls/Reader;->poption:I

    .line 3656
    invoke-virtual {p0, p1, p2, p3}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 3657
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p2, :cond_9

    return-object p1

    .line 3660
    :cond_9
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->Reset_IT()V

    .line 3661
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->isIT_S2_run:Z

    const-string p2, "---init"

    .line 3662
    invoke-direct {p0, p2}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    .line 3663
    new-instance p2, Lcom/uhf/api/cls/Reader$IT_S2_notify;

    invoke-direct {p2, p0, p0}, Lcom/uhf/api/cls/Reader$IT_S2_notify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V

    .line 3664
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/uhf/api/cls/Reader;->IT_S2_thread:Ljava/lang/Thread;

    .line 3665
    iput v3, p0, Lcom/uhf/api/cls/Reader;->IT_S2_step:I

    .line 3666
    iget-object p2, p0, Lcom/uhf/api/cls/Reader;->IT_S2_thread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p1
.end method

.method private CLOGS()V
    .locals 0

    return-void
.end method

.method public static FirmwareLoadFromSerialPort(Ljava/lang/String;Ljava/lang/String;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 0

    .line 2740
    invoke-static {p0, p1}, Lcom/uhf/api/cls/JniModuleAPI;->FirmwareLoadFromSerialPort(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 2741
    invoke-static {p0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method public static GetDeviceVersion(Ljava/lang/String;Lcom/uhf/api/cls/Reader$deviceVersion;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 13

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 2633
    invoke-static {p0, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetDeviceVersion(Ljava/lang/String;[B)I

    move-result p0

    .line 2634
    invoke-static {p0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    .line 2635
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p0, v1, :cond_1

    const/4 v1, 0x0

    .line 2636
    aget-byte v2, v0, v1

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v11, "."

    if-ne v2, v10, :cond_0

    .line 2637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v2, v0, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    new-array v2, v10, [B

    .line 2648
    aget-byte v10, v0, v10

    aput-byte v10, v2, v1

    .line 2649
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2650
    aget-byte v9, v0, v9

    aput-byte v9, v2, v1

    .line 2651
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2652
    aget-byte v8, v0, v8

    aput-byte v8, v2, v1

    .line 2653
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2654
    aget-byte v7, v0, v7

    aput-byte v7, v2, v1

    .line 2655
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->hardwareVer:Ljava/lang/String;

    .line 2657
    aget-byte v6, v0, v6

    aput-byte v6, v2, v1

    .line 2658
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2659
    aget-byte v5, v0, v5

    aput-byte v5, v2, v1

    .line 2660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2661
    aget-byte v4, v0, v4

    aput-byte v4, v2, v1

    .line 2662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    .line 2663
    aget-byte v0, v0, v3

    aput-byte v0, v2, v1

    .line 2664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uhf/api/cls/Reader$deviceVersion;->softwareVer:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object p0
.end method

.method private GetIntFrByteArray([BI)I
    .locals 2

    .line 1859
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    return p1
.end method

.method public static GetSDKVersion()Ljava/lang/String;
    .locals 2

    .line 2627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jarVersion:20220322"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "soVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uhf/api/cls/JniModuleAPI;->GetSDKVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private GpiTriContains(Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3025
    :goto_0
    iget v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 3026
    iget-object v2, p2, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    iget-object v4, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    iget v2, v2, Lcom/uhf/api/cls/GpiState_ST;->State:I

    iget-object v3, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/uhf/api/cls/GpiState_ST;->State:I

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static RebootReader(Ljava/lang/String;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 0

    .line 2746
    invoke-static {p0}, Lcom/uhf/api/cls/JniModuleAPI;->RebootReader(Ljava/lang/String;)I

    move-result p0

    .line 2747
    invoke-static {p0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method private SendandRev([BILcom/uhf/api/cls/Reader$MsgObj;)I
    .locals 10

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 2907
    array-length v0, p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/uhf/api/cls/Reader;->DataTransportSend([BII)I

    move-result p1

    const p2, 0xfefd

    if-eqz p1, :cond_0

    return p2

    .line 2912
    :cond_0
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 2915
    iget-object v0, p3, Lcom/uhf/api/cls/Reader$MsgObj;->soh:[B

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v0

    .line 2916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lcom/uhf/api/cls/Reader$MsgObj;->soh:[B

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    if-eq v0, v4, :cond_11

    const/4 v4, -0x3

    if-ne v0, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    .line 2921
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->value()I

    move-result p1

    return p1

    :cond_2
    const/4 v5, -0x4

    if-ne v0, v5, :cond_5

    .line 2924
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->FlushDummyData2Mod()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p3, :cond_3

    .line 2925
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->value()I

    move-result p1

    return p1

    .line 2927
    :cond_3
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->TestModLive()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, p3, :cond_4

    return p2

    :cond_4
    const p1, 0xfefe

    return p1

    .line 2934
    :cond_5
    iget-object v0, p3, Lcom/uhf/api/cls/Reader$MsgObj;->soh:[B

    const/4 v5, 0x0

    aget-byte v0, v0, v5

    const/16 v6, 0xff

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_7

    .line 2935
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->FlushDummyData2Mod()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p3, :cond_6

    .line 2936
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->value()I

    move-result p1

    return p1

    :cond_6
    return p2

    .line 2944
    :cond_7
    iget-object v0, p3, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    invoke-virtual {p0, v0, v1, v2}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v0

    if-ne v0, v4, :cond_8

    return p2

    .line 2947
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    invoke-static {v3}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2949
    iget-object v3, p3, Lcom/uhf/api/cls/Reader$MsgObj;->opCode:[B

    invoke-virtual {p0, v3, v1, v2}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v3

    if-ne v3, v4, :cond_9

    return p2

    .line 2952
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/uhf/api/cls/Reader$MsgObj;->opCode:[B

    invoke-static {v0}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2954
    iget-object v3, p3, Lcom/uhf/api/cls/Reader$MsgObj;->status:[B

    const/4 v7, 0x2

    invoke-virtual {p0, v3, v7, v2}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v3

    if-ne v3, v4, :cond_a

    return p2

    .line 2957
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/uhf/api/cls/Reader$MsgObj;->status:[B

    invoke-static {v0}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2959
    iget-object v3, p3, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    aget-byte v3, v3, v5

    if-lez v3, :cond_c

    .line 2960
    iget-object v3, p3, Lcom/uhf/api/cls/Reader$MsgObj;->data:[B

    iget-object v8, p3, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    aget-byte v8, v8, v5

    invoke-virtual {p0, v3, v8, v2}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v3

    if-ne v3, v4, :cond_b

    return p2

    .line 2964
    :cond_b
    iget-object v3, p3, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    aget-byte v3, v3, v5

    new-array v3, v3, [B

    .line 2965
    iget-object v8, p3, Lcom/uhf/api/cls/Reader$MsgObj;->data:[B

    iget-object v9, p3, Lcom/uhf/api/cls/Reader$MsgObj;->dataLen:[B

    aget-byte v9, v9, v5

    invoke-static {v8, v5, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2966
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2969
    :cond_c
    iget-object v3, p3, Lcom/uhf/api/cls/Reader$MsgObj;->crc:[B

    invoke-virtual {p0, v3, v7, v2}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v2

    if-ne v2, v4, :cond_d

    return p2

    .line 2972
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/uhf/api/cls/Reader$MsgObj;->crc:[B

    invoke-static {v0}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 2974
    iget-object v0, p3, Lcom/uhf/api/cls/Reader$MsgObj;->crc:[B

    aget-byte v0, v0, v5

    and-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p3, Lcom/uhf/api/cls/Reader$MsgObj;->crc:[B

    aget-byte v1, v2, v1

    and-int/2addr v1, v6

    or-int/2addr v0, v1

    int-to-short v0, v0

    .line 2976
    invoke-virtual {p3}, Lcom/uhf/api/cls/Reader$MsgObj;->getcheckcrcdata()[B

    move-result-object p3

    invoke-static {p3}, Lcom/uhf/api/cls/R2000_calibration;->calcCrc_short([B)S

    move-result p3

    if-eq p3, v0, :cond_f

    .line 2978
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->FlushDummyData2Mod()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p3, :cond_e

    .line 2979
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->value()I

    move-result p1

    return p1

    :cond_e
    return p2

    .line 2985
    :cond_f
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p2, :cond_10

    .line 2986
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->FlushDummyData2Mod()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, p2, :cond_10

    .line 2987
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_IO_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    invoke-virtual {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->value()I

    move-result p1

    return p1

    :cond_10
    return v5

    :cond_11
    :goto_0
    return p2
.end method

.method static synthetic access$000(Lcom/uhf/api/cls/Reader;I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->errhandle(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/uhf/api/cls/Reader;->GpiTriContains(Lcom/uhf/api/cls/GpiInfo_ST;Lcom/uhf/api/cls/GpiInfo_ST;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->ALOGS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->errhandle2(Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->errhandle_IT(Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/uhf/api/cls/Reader;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/uhf/api/cls/Reader;->toDlog(Ljava/lang/String;)V

    return-void
.end method

.method public static bytes_Hexstr([B)Ljava/lang/String;
    .locals 6

    .line 2473
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2475
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 2476
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 2477
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 2478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2479
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2481
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bytestochars([B)[C
    .locals 3

    .line 1325
    array-length v0, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 1327
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1328
    aget-byte v2, p1, v1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private charstobytes([C)[B
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1339
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1340
    aget-char v3, p1, v1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1345
    :cond_1
    new-array v1, v2, [B

    :goto_1
    if-ge v0, v2, :cond_2

    .line 1347
    aget-char v3, p1, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private errhandle(I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 3179
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 3180
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_1

    .line 3181
    iput p1, p0, Lcom/uhf/api/cls/Reader;->m_gError:I

    .line 3182
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean p1, p1, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1f4

    .line 3184
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3189
    :catch_0
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_0
    const/4 p1, 0x0

    .line 3191
    iput-boolean p1, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 3192
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3193
    new-instance p1, Lcom/uhf/api/cls/Reader$Exceptionotify;

    invoke-direct {p1, p0, p0, v0}, Lcom/uhf/api/cls/Reader$Exceptionotify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V

    .line 3194
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3195
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object v0
.end method

.method private errhandle2(Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 2

    .line 3203
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, v0, :cond_1

    .line 3204
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v0, v0, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 3206
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3211
    :catch_0
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_0
    const/4 v0, 0x0

    .line 3213
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 3214
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3215
    new-instance v0, Lcom/uhf/api/cls/Reader$Exceptionotify;

    invoke-direct {v0, p0, p0, p1}, Lcom/uhf/api/cls/Reader$Exceptionotify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V

    .line 3216
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3217
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-object p1
.end method

.method private errhandle_IT(Lcom/uhf/api/cls/Reader$READER_ERR;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 3964
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq p1, v0, :cond_4

    .line 3965
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3966
    iput-boolean v2, p0, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    goto :goto_0

    .line 3967
    :cond_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_S2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_1

    .line 3968
    iput-boolean v2, p0, Lcom/uhf/api/cls/Reader;->isIT_S2_run:Z

    goto :goto_0

    .line 3969
    :cond_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_3

    .line 3970
    :cond_2
    iput-boolean v2, p0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    .line 3972
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 3973
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3974
    new-instance v0, Lcom/uhf/api/cls/Reader$Exceptionotify;

    invoke-direct {v0, p0, p0, p1}, Lcom/uhf/api/cls/Reader$Exceptionotify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader$READER_ERR;)V

    .line 3975
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3976
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_4
    return-object p1
.end method

.method private toDlog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MYINFO"

    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private toDlogAPI(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ModuleAPI"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AsyncGetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 10

    .line 2581
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_0
    new-array v0, v0, [B

    .line 2584
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncGetNextTag_BaseType(I[B)I

    move-result v1

    .line 2585
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 2587
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_0

    .line 2589
    aget-byte v2, v0, v3

    iput v2, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    const/4 v2, 0x1

    .line 2590
    aget-byte v4, v0, v2

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 2591
    aget-byte v6, v0, v5

    iput-byte v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    .line 2592
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/4 v6, 0x5

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    const/4 v4, 0x7

    .line 2595
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/16 v6, 0x9

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/16 v6, 0xa

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    const/16 v4, 0xb

    .line 2598
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v9, 0xc

    aget-byte v4, v0, v4

    aput-byte v4, v6, v3

    .line 2599
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v6, 0xd

    aget-byte v9, v0, v9

    aput-byte v9, v4, v2

    .line 2600
    aget-byte v4, v0, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    const/16 v6, 0xe

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    const/16 v6, 0xf

    .line 2602
    iget-object v9, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    aget-byte v6, v0, v6

    aput-byte v6, v9, v3

    .line 2603
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    const/16 v9, 0x11

    aget-byte v7, v0, v7

    aput-byte v7, v6, v2

    .line 2604
    new-array v6, v4, [B

    iput-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    int-to-short v6, v4

    .line 2605
    iput-short v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 2606
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    invoke-static {v0, v9, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v4

    .line 2608
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v7, v0, v9

    aput-byte v7, v4, v3

    .line 2609
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v7, 0x1

    .line 2610
    aget-byte v4, v0, v7

    invoke-static {v4}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->valueOf(I)Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    move-result-object v4

    iput-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->protocol:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 2611
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    add-int/2addr v2, v5

    .line 2613
    new-array v5, v4, [B

    iput-object v5, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    int-to-short v5, v4

    .line 2614
    iput-short v5, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    if-lez v4, :cond_0

    .line 2616
    iget-object p1, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    invoke-static {v0, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2621
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 2622
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public AsyncGetTagCount([I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 2548
    monitor-enter p0

    .line 2549
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncGetTagCount(I[I)I

    move-result p1

    .line 2551
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2552
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2553
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncStartReading- [] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 2513
    monitor-enter p0

    .line 2514
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStartReading(I[III)I

    move-result p1

    .line 2515
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2516
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2517
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public AsyncStartReadingEx([III[B)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 2521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncStartReadingEx- [] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 2522
    monitor-enter p0

    .line 2523
    :try_start_0
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v2, v0, v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStartReadingEx(I[III[B)I

    move-result p1

    .line 2524
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2525
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2526
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public AsyncStartReading_IT(Lcom/uhf/api/cls/Reader$IT_MODE;[III)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 1

    .line 3474
    iput-object p1, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    .line 3475
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne p1, v0, :cond_0

    .line 3476
    invoke-virtual {p0, p2, p3, p4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading_IT_CT([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 3477
    :cond_0
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne p1, v0, :cond_1

    .line 3478
    invoke-direct {p0, p2, p3, p4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading_IT_E7([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 3479
    :cond_1
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne p1, v0, :cond_2

    .line 3480
    invoke-direct {p0, p2, p3, p4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading_IT_E7v2([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1

    .line 3482
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lcom/uhf/api/cls/Reader;->AsyncStartReading_IT_S2([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1
.end method

.method public AsyncStartReading_IT_CT([III)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/uhf/api/cls/Reader$Region_Conf;

    .line 3492
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 3494
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_11

    const/4 v2, 0x0

    .line 3495
    aget-object v3, v1, v2

    sget-object v4, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

    if-eq v3, v4, :cond_0

    aget-object v3, v1, v2

    sget-object v4, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

    if-ne v3, v4, :cond_11

    .line 3496
    :cond_0
    new-instance v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    invoke-direct {v3, p0}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3497
    sget-object v4, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v4, v3}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3502
    sget-object v5, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v4, v5, :cond_11

    .line 3503
    aget-object v5, v1, v2

    sget-object v6, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_NA:Lcom/uhf/api/cls/Reader$Region_Conf;

    if-ne v5, v6, :cond_8

    .line 3504
    iget v1, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    const/16 v5, 0x32

    if-ne v1, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_4

    .line 3506
    :cond_1
    iget v1, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    iget-object v5, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_NA:[I

    array-length v5, v5

    if-ne v1, v5, :cond_7

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 3508
    :goto_0
    iget v6, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    if-ge v1, v6, :cond_6

    const/4 v6, 0x0

    .line 3510
    :goto_1
    iget-object v7, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_NA:[I

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 3511
    iget-object v7, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v7, v7, v1

    iget-object v8, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_NA:[I

    aget v8, v8, v6

    if-ne v7, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_4

    goto :goto_3

    .line 3521
    :cond_4
    iget v6, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    sub-int/2addr v6, v0

    if-ne v1, v6, :cond_5

    const/4 v5, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    move v2, v5

    :cond_7
    :goto_4
    if-eqz v2, :cond_10

    .line 3527
    new-instance v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    invoke-direct {v1, p0}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3528
    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_NA:[I

    array-length v3, v2

    iput v3, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    .line 3529
    iput-object v2, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    .line 3531
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3533
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v1, :cond_10

    return-object v4

    .line 3538
    :cond_8
    aget-object v1, v1, v2

    sget-object v5, Lcom/uhf/api/cls/Reader$Region_Conf;->RG_PRC:Lcom/uhf/api/cls/Reader$Region_Conf;

    if-ne v1, v5, :cond_10

    .line 3539
    iget v1, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    const/16 v5, 0x10

    if-ne v1, v5, :cond_9

    const/4 v2, 0x1

    goto :goto_9

    .line 3541
    :cond_9
    iget v1, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    iget-object v5, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_cn:[I

    array-length v5, v5

    if-ne v1, v5, :cond_f

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 3542
    :goto_5
    iget v6, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    if-ge v1, v6, :cond_e

    const/4 v6, 0x0

    .line 3544
    :goto_6
    iget-object v7, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_NA:[I

    array-length v7, v7

    if-ge v6, v7, :cond_b

    .line 3545
    iget-object v7, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v7, v7, v1

    iget-object v8, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_NA:[I

    aget v8, v8, v6

    if-ne v7, v8, :cond_a

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_7
    if-nez v6, :cond_c

    goto :goto_8

    .line 3555
    :cond_c
    iget v6, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    sub-int/2addr v6, v0

    if-ne v1, v6, :cond_d

    const/4 v5, 0x1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    :goto_8
    move v2, v5

    :cond_f
    :goto_9
    if-eqz v2, :cond_10

    .line 3561
    new-instance v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    invoke-direct {v1, p0}, Lcom/uhf/api/cls/Reader$HoptableData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3562
    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_fres_cn:[I

    array-length v3, v2

    iput v3, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    .line 3563
    iput-object v2, v1, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    .line 3565
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_HOPTABLE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v4

    .line 3567
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v1, :cond_10

    return-object v4

    .line 3573
    :cond_10
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v4, v1, :cond_11

    return-object v4

    .line 3580
    :cond_11
    iput-object p1, p0, Lcom/uhf/api/cls/Reader;->pants:[I

    .line 3581
    iput p2, p0, Lcom/uhf/api/cls/Reader;->pantcnt:I

    .line 3582
    iput p3, p0, Lcom/uhf/api/cls/Reader;->poption:I

    .line 3584
    invoke-virtual {p0, p1, p2, p3}, Lcom/uhf/api/cls/Reader;->AsyncStartReading([III)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 3586
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->Reset_IT_CT()V

    .line 3587
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    .line 3589
    new-instance p2, Lcom/uhf/api/cls/Reader$IT_CT_notify;

    invoke-direct {p2, p0, p0}, Lcom/uhf/api/cls/Reader$IT_CT_notify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V

    .line 3590
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p3, p0, Lcom/uhf/api/cls/Reader;->IT_CT_thread:Ljava/lang/Thread;

    .line 3591
    iget p2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_step_init:I

    iput p2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 3592
    iget-object p2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_thread:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p1
.end method

.method public AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    const-string v0, "AsyncStopReading"

    .line 2530
    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 2531
    monitor-enter p0

    .line 2532
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStopReading(I)I

    move-result v0

    .line 2533
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2534
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2535
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public AsyncStopReadingEx()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    const-string v0, "AsyncStopReadingEx"

    .line 2539
    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 2540
    monitor-enter p0

    .line 2541
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStopReadingEx(I)I

    move-result v0

    .line 2542
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2543
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2544
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public AsyncStopReading_IT()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 4

    .line 3893
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_0

    .line 3894
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading_IT_CT()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    return-object v0

    .line 3896
    :cond_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 3913
    :cond_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_S2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_3

    .line 3914
    iput-boolean v2, p0, Lcom/uhf/api/cls/Reader;->isIT_S2_run:Z

    .line 3915
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 3916
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->IT_S2_thread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 3918
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3921
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0

    .line 3926
    :cond_3
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_INVALID:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    .line 3897
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/uhf/api/cls/Reader;->isIT_E7_run:Z

    .line 3899
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 3900
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->IT_E7_thread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    .line 3902
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 3905
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3908
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_centrefre:I

    iget v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 3909
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v2, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v1, v2, :cond_6

    .line 3910
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_lowfre:I

    iget v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    .line 3911
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->pants:[I

    iget v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_highfre:I

    iget v3, p0, Lcom/uhf/api/cls/Reader;->IT_E7_pow:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/uhf/api/cls/Reader;->SetFilterSessioninTargetA([III)I

    :cond_6
    return-object v0
.end method

.method public AsyncStopReading_IT_CT()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 2

    const/4 v0, 0x0

    .line 3879
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->isIT_CT_run:Z

    .line 3880
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 3881
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_thread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 3883
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3886
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public BlockErase(IIII[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 8

    .line 1698
    monitor-enter p0

    .line 1699
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/uhf/api/cls/JniModuleAPI;->BlockErase(IIIII[BS)I

    move-result p1

    .line 1700
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1701
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1702
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public BlockPermaLock(IIII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 11

    move-object v1, p0

    .line 1689
    monitor-enter p0

    .line 1690
    :try_start_0
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->BlockPermaLock(IIIII[B[BS)I

    move-result v0

    .line 1691
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1692
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1693
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public CloseReader()V
    .locals 3

    const-string v0, "CloseReader-"

    .line 1429
    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 1430
    monitor-enter p0

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->CloseReader(I)V

    const-string v0, ""

    .line 1432
    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->addr:Ljava/lang/String;

    .line 1433
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    aput v2, v0, v2

    .line 1434
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1435
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1436
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1437
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1438
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public CustomCmd(ILcom/uhf/api/cls/Reader$CustomCmdType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 17

    move-object/from16 v1, p0

    .line 1730
    monitor-enter p0

    .line 1732
    :try_start_0
    sget-object v0, Lcom/uhf/api/cls/Reader$1;->$SwitchMap$com$uhf$api$cls$Reader$CustomCmdType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/uhf/api/cls/Reader$CustomCmdType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x7

    const/4 v5, 0x5

    const v6, 0xff00

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/16 v9, 0x8

    if-eq v0, v3, :cond_4

    const/4 v10, 0x2

    if-eq v0, v10, :cond_3

    const/4 v11, 0x3

    if-eq v0, v11, :cond_2

    if-eq v0, v8, :cond_1

    if-eq v0, v5, :cond_0

    .line 1799
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_NOT_SUPPORTED:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v0

    .line 1792
    :cond_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;

    .line 1793
    iget-object v0, v0, Lcom/uhf/api/cls/Reader$NXP_U8_InventoryModePara;->Mode:[B

    new-array v2, v3, [B

    :goto_0
    move-object v15, v0

    move-object/from16 v16, v2

    goto/16 :goto_2

    :cond_1
    new-array v0, v5, [B

    new-array v2, v5, [B

    .line 1782
    move-object/from16 v4, p3

    check-cast v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;

    .line 1783
    iget-byte v5, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->DR:B

    aput-byte v5, v0, v7

    const/16 v5, 0xb

    .line 1784
    iput-byte v5, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->MC:B

    aput-byte v5, v0, v3

    .line 1785
    iget-byte v3, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->TrExt:B

    aput-byte v3, v0, v10

    .line 1786
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->TimeOut:S

    and-int/2addr v3, v6

    shr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v0, v11

    .line 1787
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$NXPEASAlarmPara;->TimeOut:S

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    goto :goto_0

    :cond_2
    new-array v0, v4, [B

    new-array v3, v4, [B

    .line 1772
    move-object/from16 v4, p3

    check-cast v4, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;

    .line 1773
    iget-object v10, v4, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->AccessPwd:[B

    invoke-static {v10, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1774
    iget v10, v4, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->isSet:I

    int-to-byte v10, v10

    aput-byte v10, v0, v8

    .line 1775
    iget-short v8, v4, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->TimeOut:S

    and-int/2addr v6, v8

    shr-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1776
    iget-short v4, v4, Lcom/uhf/api/cls/Reader$NXPChangeEASPara;->TimeOut:S

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    goto :goto_1

    :cond_3
    new-array v0, v4, [B

    new-array v3, v4, [B

    .line 1762
    move-object/from16 v4, p3

    check-cast v4, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;

    .line 1763
    iget-object v10, v4, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->AccessPwd:[B

    invoke-static {v10, v7, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1764
    iget-byte v10, v4, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->BlkBits:B

    aput-byte v10, v0, v8

    .line 1765
    iget-short v8, v4, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->TimeOut:S

    and-int/2addr v6, v8

    shr-int/2addr v6, v9

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 1766
    iget-short v4, v4, Lcom/uhf/api/cls/Reader$ALIENHiggs3BlockReadLockPara;->TimeOut:S

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    :goto_1
    move-object v15, v0

    move-object/from16 v16, v3

    goto/16 :goto_2

    .line 1734
    :cond_4
    move-object/from16 v0, p3

    check-cast v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;

    const/16 v3, 0x16

    new-array v3, v3, [B

    const/16 v10, 0xa

    new-array v10, v10, [B

    .line 1737
    iget-object v11, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->AccessPwd:[B

    invoke-static {v11, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1738
    iget v11, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    const/high16 v12, -0x1000000

    and-int/2addr v11, v12

    shr-int/lit8 v11, v11, 0x18

    int-to-byte v11, v11

    aput-byte v11, v3, v8

    .line 1739
    iget v8, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    const/high16 v11, 0xff0000

    and-int/2addr v8, v11

    const/16 v13, 0x10

    shr-int/2addr v8, v13

    int-to-byte v8, v8

    aput-byte v8, v3, v5

    .line 1740
    iget v5, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    and-int/2addr v5, v6

    shr-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 1741
    iget v2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->CmdType:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 1742
    iget v2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int/2addr v2, v12

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v9

    const/16 v2, 0x9

    .line 1743
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int/2addr v4, v11

    shr-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xa

    .line 1744
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int/2addr v4, v6

    shr-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xb

    .line 1745
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->MemType:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xc

    .line 1746
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int/2addr v4, v12

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xd

    .line 1747
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int/2addr v4, v11

    shr-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xe

    .line 1748
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int/2addr v4, v6

    shr-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0xf

    .line 1749
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->PersistType:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 1750
    iget v2, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int/2addr v2, v12

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v3, v13

    const/16 v2, 0x11

    .line 1751
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int/2addr v4, v11

    shr-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0x12

    .line 1752
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int/2addr v4, v6

    shr-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0x13

    .line 1753
    iget v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->RangeType:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0x14

    .line 1755
    iget-short v4, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->TimeOut:S

    and-int/2addr v4, v6

    shr-int/2addr v4, v9

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/16 v2, 0x15

    .line 1756
    iget-short v0, v0, Lcom/uhf/api/cls/Reader$IMPINJM4QtPara;->TimeOut:S

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    move-object v15, v3

    move-object/from16 v16, v10

    .line 1801
    :goto_2
    iget-object v11, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v12, v0, v7

    invoke-virtual/range {p2 .. p2}, Lcom/uhf/api/cls/Reader$CustomCmdType;->value()I

    move-result v14

    move/from16 v13, p1

    invoke-virtual/range {v11 .. v16}, Lcom/uhf/api/cls/JniModuleAPI;->CustomCmd_BaseType(III[B[B)I

    move-result v0

    .line 1802
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1804
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1805
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public CustomCmd_BaseType(II[B[B)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 1809
    monitor-enter p0

    .line 1810
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->CustomCmd_BaseType(III[B[B)I

    move-result p1

    .line 1811
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1812
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1813
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public DataTransportRecv([BII)I
    .locals 3

    .line 2760
    monitor-enter p0

    .line 2761
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->DataTransportRecv(I[BII)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 2762
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public DataTransportSend([BII)I
    .locals 3

    .line 2753
    monitor-enter p0

    .line 2754
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->DataTransportSend(I[BII)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 2755
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public EraseDataOnReader()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1706
    monitor-enter p0

    .line 1707
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->EraseDataOnReader(I)I

    move-result v0

    .line 1708
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1709
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1710
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method FlushDummyData2Mod()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 5

    const/16 v0, 0xff

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    const/4 v4, -0x6

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v3, 0x3

    :goto_0
    if-ge v3, v0, :cond_0

    .line 2855
    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d0

    .line 2857
    invoke-virtual {p0, v1, v0, v2}, Lcom/uhf/api/cls/Reader;->DataTransportSend([BII)I

    .line 2859
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0
.end method

.method public GetGPI(I[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1825
    monitor-enter p0

    .line 1826
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->GetGPI(II[I)I

    move-result p1

    .line 1827
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1828
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1829
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetGPIEx(Lcom/uhf/api/cls/GpiInfo_ST;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 1833
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_0
    new-array v0, v0, [B

    .line 1835
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetGPIEx_BaseType(I[B)I

    move-result v1

    .line 1836
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1837
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_0

    .line 1838
    aget-byte v2, v0, v3

    iput v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    .line 1839
    :goto_0
    iget v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-ge v3, v2, :cond_0

    .line 1840
    iget-object v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v2, v2, v3

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v0, v5

    iput v5, v2, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    .line 1841
    iget-object v2, p1, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v2, v2, v3

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v0, v4

    iput v4, v2, Lcom/uhf/api/cls/GpiState_ST;->State:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1844
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1845
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 5

    .line 1392
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_0
    new-array v0, v0, [B

    .line 1394
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetHardwareDetails_BaseType(I[B)I

    move-result v1

    .line 1395
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1396
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_6

    .line 1397
    aget-byte v2, v0, v3

    invoke-static {v2}, Lcom/uhf/api/cls/Reader$Module_Type;->valueOf(I)Lcom/uhf/api/cls/Reader$Module_Type;

    move-result-object v2

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->module:Lcom/uhf/api/cls/Reader$Module_Type;

    const/4 v2, 0x1

    .line 1399
    aget-byte v3, v0, v2

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    if-eq v3, v4, :cond_3

    const/4 v2, 0x3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 1416
    :cond_0
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_0

    .line 1413
    :cond_1
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_0

    .line 1410
    :cond_2
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_WIFI:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_0

    .line 1407
    :cond_3
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_SERIAL:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_0

    .line 1404
    :cond_4
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM7:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    goto :goto_0

    .line 1401
    :cond_5
    sget-object v2, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_NONE:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    iput-object v2, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    .line 1419
    :goto_0
    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/uhf/api/cls/Reader$Reader_Type;->valueOf(I)Lcom/uhf/api/cls/Reader$Reader_Type;

    move-result-object v0

    iput-object v0, p1, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    .line 1421
    :cond_6
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1422
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetLastDetailError(Lcom/uhf/api/cls/ErrInfo;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 2712
    monitor-enter p0

    const/16 v0, 0x1f4

    :try_start_0
    new-array v0, v0, [B

    .line 2714
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetLastDetailError_BaseType(I[B)I

    move-result v1

    .line 2715
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 2717
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_0

    .line 2718
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    const/4 v4, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    iput v2, p1, Lcom/uhf/api/cls/ErrInfo;->derrcode:I

    const/4 v2, 0x4

    .line 2720
    aget-byte v4, v0, v2

    new-array v4, v4, [B

    const/4 v5, 0x5

    .line 2721
    aget-byte v2, v0, v2

    invoke-static {v0, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "ascii"

    invoke-direct {v0, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p1, Lcom/uhf/api/cls/ErrInfo;->errstr:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2727
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 2728
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 10

    .line 1610
    monitor-enter p0

    const/16 v0, 0xe6

    :try_start_0
    new-array v0, v0, [B

    .line 1613
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/uhf/api/cls/JniModuleAPI;->GetNextTag_BaseType(I[B)I

    move-result v1

    .line 1614
    invoke-static {v1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v1

    .line 1616
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v1, v2, :cond_0

    .line 1618
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    iput v2, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    const/4 v2, 0x1

    .line 1619
    aget-byte v4, v0, v2

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 1620
    aget-byte v6, v0, v5

    iput-byte v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    .line 1621
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/4 v6, 0x5

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    const/4 v4, 0x7

    .line 1624
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v7

    or-int/2addr v4, v6

    const/16 v6, 0x9

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    const/16 v6, 0xa

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    const/16 v4, 0xb

    .line 1627
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v9, 0xc

    aget-byte v4, v0, v4

    aput-byte v4, v6, v3

    .line 1628
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Res:[B

    const/16 v6, 0xd

    aget-byte v9, v0, v9

    aput-byte v9, v4, v2

    .line 1629
    aget-byte v4, v0, v6

    shl-int/2addr v4, v8

    const/16 v6, 0xe

    aget-byte v6, v0, v6

    or-int/2addr v4, v6

    const/16 v6, 0xf

    .line 1631
    iget-object v9, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    aget-byte v6, v0, v6

    aput-byte v6, v9, v3

    .line 1632
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    const/16 v9, 0x11

    aget-byte v7, v0, v7

    aput-byte v7, v6, v2

    .line 1633
    new-array v6, v4, [B

    iput-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    int-to-short v6, v4

    .line 1634
    iput-short v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 1635
    iget-object v6, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    invoke-static {v0, v9, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v4

    .line 1637
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v7, v0, v9

    aput-byte v7, v4, v3

    .line 1638
    iget-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v0, v6

    aput-byte v6, v4, v2

    .line 1639
    aget-byte v2, v0, v7

    shl-int/2addr v2, v8

    add-int/lit8 v4, v7, 0x1

    aget-byte v4, v0, v4

    or-int/2addr v2, v4

    add-int/2addr v7, v5

    .line 1641
    new-array v4, v2, [B

    iput-object v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    int-to-short v4, v2

    .line 1642
    iput-short v4, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    if-lez v2, :cond_0

    .line 1644
    iget-object p1, p1, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    invoke-static {v0, v7, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1649
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1650
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetNextTag_BaseType([B)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1654
    monitor-enter p0

    .line 1655
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/uhf/api/cls/JniModuleAPI;->GetNextTag_BaseType(I[B)I

    move-result p1

    .line 1656
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1657
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1658
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetReaderAddress()Ljava/lang/String;
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->addr:Ljava/lang/String;

    return-object v0
.end method

.method public GetSerialNumber(Lcom/uhf/api/cls/Reader$DeviceSerialNumber;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 8

    .line 2675
    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 2677
    new-instance v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;

    invoke-direct {v1, p0}, Lcom/uhf/api/cls/Reader$CustomParam_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    const-string v2, "reader/rdrdetails"

    .line 2678
    iput-object v2, v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    .line 2679
    sget-object v2, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_CUSTOM:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v2, v1}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 2680
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v2, v3, :cond_0

    .line 2681
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 2684
    iget-object v5, v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    const/16 v6, 0x1c

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2685
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v3, 0xc

    if-ge v7, v3, :cond_1

    .line 2688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    add-int/lit8 v4, v7, 0x10

    aget-byte v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2691
    :cond_1
    new-instance v1, Lcom/uhf/api/cls/Reader$HardwareDetails;

    invoke-direct {v1, p0}, Lcom/uhf/api/cls/Reader$HardwareDetails;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2692
    invoke-virtual {p0, v1}, Lcom/uhf/api/cls/Reader;->GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 2693
    iget-object v3, v1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    sget-object v4, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM9:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    if-ne v3, v4, :cond_2

    .line 2694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A9"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2695
    :cond_2
    iget-object v1, v1, Lcom/uhf/api/cls/Reader$HardwareDetails;->board:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    sget-object v3, Lcom/uhf/api/cls/Reader$MaindBoard_Type;->MAINBOARD_ARM7:Lcom/uhf/api/cls/Reader$MaindBoard_Type;

    if-ne v1, v3, :cond_3

    .line 2696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A7"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2698
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SE"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2699
    :goto_1
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$DeviceSerialNumber;->serailNumber:Ljava/lang/String;

    .line 2700
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 2701
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public GetTagData(ICII[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 11

    move-object v1, p0

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetTagData-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 1445
    monitor-enter p0

    .line 1446
    :try_start_0
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->GetTagData(IICII[B[BS)I

    move-result v0

    .line 1447
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1448
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1449
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Hex2Str([BI[C)V
    .locals 5

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 1314
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 1317
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    div-int/2addr v4, v0

    aget-char v4, v1, v4

    aput-char v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    .line 1318
    array-length v4, p3

    if-ge v3, v4, :cond_0

    .line 1319
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    rem-int/2addr v4, v0

    aget-char v4, v1, v4

    aput-char v4, p3, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public InitReader(Ljava/lang/String;Lcom/uhf/api/cls/Reader$Reader_Type;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 2

    .line 1356
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    invoke-virtual {p2}, Lcom/uhf/api/cls/Reader$Reader_Type;->value()I

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->InitReader([ILjava/lang/String;I)I

    move-result p1

    .line 1357
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    return-object p1
.end method

.method public InitReader_Notype(Ljava/lang/String;I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitReader_Notype-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 1369
    monitor-enter p0

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->InitReader_Notype([ILjava/lang/String;I)I

    move-result p2

    .line 1371
    invoke-static {p2}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p2

    .line 1372
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 1373
    iput-object p1, p0, Lcom/uhf/api/cls/Reader;->addr:Ljava/lang/String;

    .line 1374
    new-instance p1, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    invoke-direct {p1, p0}, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    const/4 v0, 0x1

    .line 1375
    iput v0, p1, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    new-array v0, v0, [Lcom/uhf/api/cls/Reader$Inv_Potl;

    .line 1376
    iput-object v0, p1, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    .line 1377
    iget-object v0, p1, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    new-instance v2, Lcom/uhf/api/cls/Reader$Inv_Potl;

    invoke-direct {v2, p0}, Lcom/uhf/api/cls/Reader$Inv_Potl;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v2, v0, v1

    .line 1378
    iget-object v0, p1, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v0, v0, v1

    const/16 v2, 0x1e

    iput v2, v0, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    .line 1379
    iget-object v0, p1, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v0, v0, v1

    sget-object v1, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->SL_TAG_PROTOCOL_GEN2:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    iput-object v1, v0, Lcom/uhf/api/cls/Reader$Inv_Potl;->potl:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 1380
    sget-object v0, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_INVPOTL:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v0, p1}, Lcom/uhf/api/cls/Reader;->ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    goto :goto_0

    .line 1382
    :cond_0
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    aput v1, p1, v1

    .line 1383
    :goto_0
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    .line 1384
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public KillTag(I[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1671
    monitor-enter p0

    .line 1672
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->KillTag(II[BS)I

    move-result p1

    .line 1673
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1674
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1675
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Lock180006BTag(IIIS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 1680
    monitor-enter p0

    .line 1681
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->Lock180006BTag(IIIIS)I

    move-result p1

    .line 1682
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1683
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1684
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public LockTag(IBS[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 1663
    monitor-enter p0

    .line 1664
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uhf/api/cls/JniModuleAPI;->LockTag(IIBS[BS)I

    move-result p1

    .line 1665
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1666
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1667
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 16

    move-object/from16 v1, p0

    .line 1866
    monitor-enter p0

    const/16 v2, 0x1f4

    :try_start_0
    new-array v2, v2, [B

    .line 1869
    sget-object v3, Lcom/uhf/api/cls/Reader$1;->$SwitchMap$com$uhf$api$cls$Reader$Mtr_Param:[I

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const v4, 0xff00

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0x8

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v3, :pswitch_data_0

    .line 2157
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    goto/16 :goto_10

    .line 2090
    :pswitch_0
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Default_Param;

    .line 2092
    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v5}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v15

    .line 2093
    iget-boolean v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->isdefault:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    int-to-byte v5, v5

    aput-byte v5, v2, v14

    .line 2094
    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE_BAUD:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-eq v5, v6, :cond_5

    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-eq v5, v6, :cond_5

    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 2097
    :cond_1
    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 2098
    :cond_2
    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_3

    goto :goto_2

    .line 2099
    :cond_3
    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_4

    .line 2100
    iget-object v5, v3, Lcom/uhf/api/cls/Reader$Default_Param;->subkey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2101
    array-length v6, v5

    int-to-byte v6, v6

    aput-byte v6, v2, v12

    const/4 v6, 0x0

    const/4 v7, 0x3

    .line 2102
    :goto_1
    array-length v9, v5

    if-ge v6, v9, :cond_6

    add-int/lit8 v9, v7, 0x1

    .line 2103
    aget-byte v10, v5, v6

    aput-byte v10, v2, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_1

    .line 2105
    :cond_4
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v2

    :cond_5
    :goto_2
    const/4 v7, 0x2

    .line 2107
    :cond_6
    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v6, v6, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v9

    invoke-virtual {v5, v6, v9, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 2110
    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v9, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE_BAUD:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-eq v6, v9, :cond_d

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v9, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-eq v6, v9, :cond_d

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v9, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v6, v9, :cond_7

    goto/16 :goto_5

    .line 2118
    :cond_7
    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v9, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v6, v9, :cond_9

    .line 2119
    new-instance v4, Lcom/uhf/api/cls/Reader$AntPowerConf;

    invoke-direct {v4, v1}, Lcom/uhf/api/cls/Reader$AntPowerConf;-><init>(Lcom/uhf/api/cls/Reader;)V

    add-int/lit8 v6, v7, 0x1

    .line 2120
    aget-byte v7, v2, v7

    iput v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    .line 2121
    iget v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    new-array v7, v7, [Lcom/uhf/api/cls/Reader$AntPower;

    .line 2122
    :goto_3
    iget v8, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v15, v8, :cond_8

    .line 2123
    new-instance v8, Lcom/uhf/api/cls/Reader$AntPower;

    invoke-direct {v8, v1}, Lcom/uhf/api/cls/Reader$AntPower;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v8, v7, v15

    .line 2124
    aget-object v8, v7, v15

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, v2, v6

    iput v6, v8, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    .line 2125
    aget-object v6, v7, v15

    aget-byte v8, v2, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v13

    add-int/lit8 v10, v9, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    int-to-short v8, v8

    iput-short v8, v6, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    add-int/lit8 v9, v9, 0x2

    .line 2127
    aget-object v6, v7, v15

    aget-byte v8, v2, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v13

    add-int/lit8 v10, v9, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    int-to-short v8, v8

    iput-short v8, v6, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v6, v9, 0x2

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2132
    :cond_8
    iput-object v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    .line 2133
    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    goto/16 :goto_11

    .line 2134
    :cond_9
    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v9, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v6, v9, :cond_a

    .line 2135
    aget-byte v2, v2, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, v3, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    goto/16 :goto_11

    .line 2136
    :cond_a
    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v9, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v6, v9, :cond_15

    .line 2137
    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->subkey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v6, v14

    add-int/2addr v7, v6

    .line 2138
    iget-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->subkey:Ljava/lang/String;

    const-string v9, "modulesave/hpupload"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    new-array v6, v8, [I

    :goto_4
    if-ge v15, v8, :cond_b

    add-int/lit8 v9, v7, 0x1

    .line 2143
    aget v10, v6, v15

    const/high16 v11, -0x1000000

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x18

    int-to-byte v10, v10

    aput-byte v10, v2, v7

    add-int/lit8 v7, v9, 0x1

    .line 2144
    aget v10, v6, v15

    const/high16 v11, 0xff0000

    and-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    add-int/lit8 v9, v7, 0x1

    .line 2145
    aget v10, v6, v15

    and-int/2addr v10, v4

    shr-int/2addr v10, v13

    int-to-byte v10, v10

    aput-byte v10, v2, v7

    add-int/lit8 v7, v9, 0x1

    .line 2146
    aget v10, v6, v15

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 2149
    :cond_b
    iput-object v6, v3, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    goto/16 :goto_11

    .line 2151
    :cond_c
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v2

    .line 2114
    :cond_d
    :goto_5
    aget-byte v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    add-int/lit8 v6, v7, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    add-int/lit8 v6, v7, 0x2

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v13

    or-int/2addr v4, v6

    add-int/2addr v7, v11

    aget-byte v2, v2, v7

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    .line 2117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    goto/16 :goto_11

    .line 2085
    :pswitch_1
    move-object/from16 v2, p2

    check-cast v2, [B

    .line 2086
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    goto/16 :goto_11

    .line 2063
    :pswitch_2
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$CustomParam_ST;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    :try_start_1
    iget-object v4, v3, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    const-string v6, "US-ASCII"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    const/4 v5, 0x0

    .line 2070
    :goto_6
    :try_start_2
    array-length v4, v5

    invoke-static {v5, v15, v2, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2071
    array-length v4, v5

    aput-byte v15, v2, v4

    .line 2072
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v5, v5, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 2074
    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v6, v2, v14

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget-byte v6, v2, v12

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v13

    or-int/2addr v4, v6

    aget-byte v6, v2, v11

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x32

    .line 2078
    new-array v6, v4, [B

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    const/16 v6, 0x32

    .line 2079
    iget-object v3, v3, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    invoke-static {v2, v6, v3, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_11

    .line 2049
    :pswitch_3
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 2051
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    aget-byte v4, v2, v15

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    .line 2052
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    aget-byte v4, v2, v14

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    .line 2053
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    aget-byte v4, v2, v12

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->gateway:[B

    .line 2056
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    aget-byte v4, v2, v15

    invoke-static {v2, v11, v3, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2057
    aget-byte v3, v2, v15

    add-int/2addr v3, v11

    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    aget-byte v6, v2, v14

    invoke-static {v2, v3, v4, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2058
    aget-byte v3, v2, v15

    add-int/2addr v3, v11

    aget-byte v4, v2, v14

    add-int/2addr v3, v4

    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Reader_Ip;->gateway:[B

    aget-byte v6, v2, v12

    invoke-static {v2, v3, v4, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_11

    .line 2011
    :pswitch_4
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;

    .line 2012
    iget v5, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->andid:I

    int-to-byte v5, v5

    aput-byte v5, v2, v15

    .line 2013
    iget-object v5, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->region:Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v5}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v14

    .line 2014
    iget-short v5, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->power:S

    and-int/2addr v4, v5

    shr-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v2, v12

    .line 2015
    iget-short v4, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->power:S

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v11

    .line 2016
    iget v4, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v10

    .line 2017
    iget v4, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v9

    .line 2018
    iget v4, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    shr-int/2addr v4, v13

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v8

    .line 2019
    iget v4, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v7

    .line 2020
    iget v4, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    and-int/lit16 v4, v4, -0x100

    if-lez v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    .line 2021
    :goto_7
    iget v5, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_f

    mul-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v13

    .line 2023
    iget-object v8, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    add-int/lit8 v8, v7, 0x1

    .line 2024
    iget-object v9, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/lit8 v9, v9, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v8, v7, 0x2

    .line 2025
    iget-object v9, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/2addr v9, v13

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    add-int/lit8 v7, v7, 0x3

    .line 2026
    iget-object v8, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    shr-int/2addr v8, v15

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2028
    :cond_f
    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v6, v6, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 2030
    aget-byte v6, v2, v15

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    .line 2031
    :goto_9
    iget v6, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->frecount:I

    if-ge v15, v6, :cond_15

    .line 2032
    iget-object v6, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v6, v6, v15

    mul-int/lit8 v7, v15, 0x5

    add-int/2addr v7, v14

    aget-byte v8, v2, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v13

    or-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    iput v8, v6, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->frequency:I

    if-eqz v4, :cond_10

    add-int/lit8 v7, v7, 0x4

    .line 2037
    aget-byte v6, v2, v7

    int-to-float v6, v6

    .line 2038
    iget-object v7, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v7, v7, v15

    iput v6, v7, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->vswr:F

    goto :goto_a

    :cond_10
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    add-int/lit8 v7, v7, 0x4

    .line 2040
    aget-byte v6, v2, v7

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 2042
    iget-object v7, v3, Lcom/uhf/api/cls/Reader$AntPortsVSWR;->vswrs:[Lcom/uhf/api/cls/Reader$FrequencyVSWR;

    aget-object v7, v7, v15

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v6, v9

    div-float/2addr v8, v6

    iput v8, v7, Lcom/uhf/api/cls/Reader$FrequencyVSWR;->vswr:F

    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1992
    :pswitch_5
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1994
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    aget-byte v4, v2, v15

    iput v4, v3, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    const/4 v3, 0x0

    .line 1996
    :goto_b
    aget-byte v4, v2, v15

    if-ge v3, v4, :cond_15

    .line 2002
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    mul-int/lit8 v6, v3, 0x4

    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v6, 0x2

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v6, 0x3

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v13

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x4

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1983
    :pswitch_6
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1985
    aget-byte v3, v2, v15

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    aget-byte v4, v2, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    aget-byte v4, v2, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v13

    or-int/2addr v3, v4

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    .line 1987
    move-object/from16 v3, p2

    check-cast v3, [Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-static {v2}, Lcom/uhf/api/cls/Reader$Region_Conf;->valueOf(I)Lcom/uhf/api/cls/Reader$Region_Conf;

    move-result-object v2

    aput-object v2, v3, v15

    goto/16 :goto_11

    .line 1946
    :pswitch_7
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1948
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$ReaderVersion;

    .line 1949
    aget-byte v4, v2, v15

    if-ne v4, v14, :cond_11

    aget-byte v4, v2, v14

    if-nez v4, :cond_11

    aget-byte v4, v2, v12

    if-nez v4, :cond_11

    .line 1950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v6, v2, v15

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v14

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v12

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1955
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v6, v2, v10

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v9

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v6, v2, v8

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    goto/16 :goto_11

    :cond_11
    new-array v4, v14, [B

    .line 1961
    aget-byte v6, v2, v15

    aput-byte v6, v4, v15

    .line 1962
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1963
    aget-byte v6, v2, v14

    aput-byte v6, v4, v15

    .line 1964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1965
    aget-byte v6, v2, v12

    aput-byte v6, v4, v15

    .line 1966
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1967
    aget-byte v6, v2, v11

    aput-byte v6, v4, v15

    .line 1968
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->hardwareVer:Ljava/lang/String;

    .line 1970
    aget-byte v6, v2, v10

    aput-byte v6, v4, v15

    .line 1971
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1972
    aget-byte v6, v2, v9

    aput-byte v6, v4, v15

    .line 1973
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1974
    aget-byte v6, v2, v8

    aput-byte v6, v4, v15

    .line 1975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    .line 1976
    aget-byte v2, v2, v7

    aput-byte v2, v4, v15

    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/uhf/api/cls/Reader;->bytes_Hexstr([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/uhf/api/cls/Reader$ReaderVersion;->softwareVer:Ljava/lang/String;

    goto/16 :goto_11

    .line 1936
    :pswitch_8
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1938
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$ConnAnts_ST;

    aget-byte v4, v2, v15

    iput v4, v3, Lcom/uhf/api/cls/Reader$ConnAnts_ST;->antcnt:I

    const/4 v3, 0x0

    .line 1939
    :goto_c
    aget-byte v4, v2, v15

    if-ge v3, v4, :cond_15

    .line 1940
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$ConnAnts_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$ConnAnts_ST;->connectedants:[I

    add-int/lit8 v6, v3, 0x1

    aget-byte v7, v2, v6

    aput v7, v4, v3

    move v3, v6

    goto :goto_c

    .line 1923
    :pswitch_9
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1925
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    aget-byte v4, v2, v15

    iput v4, v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    .line 1926
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    aget-byte v4, v2, v15

    new-array v4, v4, [Lcom/uhf/api/cls/Reader$Inv_Potl;

    iput-object v4, v3, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    const/4 v3, 0x0

    .line 1927
    :goto_d
    aget-byte v4, v2, v15

    if-ge v3, v4, :cond_15

    .line 1928
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    new-instance v6, Lcom/uhf/api/cls/Reader$Inv_Potl;

    invoke-direct {v6, v1}, Lcom/uhf/api/cls/Reader$Inv_Potl;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v6, v4, v3

    .line 1929
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v4, v4, v3

    mul-int/lit8 v6, v3, 0x5

    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v2, v7

    invoke-static {v7}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->valueOf(I)Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    move-result-object v7

    iput-object v7, v4, Lcom/uhf/api/cls/Reader$Inv_Potl;->potl:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    .line 1930
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v4, v4, v3

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v1, v2, v6}, Lcom/uhf/api/cls/Reader;->GetIntFrByteArray([BI)I

    move-result v6

    iput v6, v4, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1909
    :pswitch_a
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1911
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    aget-byte v4, v2, v14

    iput v4, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bank:I

    .line 1912
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    aget-byte v4, v2, v12

    shl-int/lit8 v4, v4, 0x18

    aget-byte v11, v2, v11

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v4, v11

    aget-byte v11, v2, v10

    shl-int/2addr v11, v13

    or-int/2addr v4, v11

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v4, v9

    iput v4, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    .line 1913
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    aget-byte v4, v2, v8

    shl-int/lit8 v4, v4, 0x18

    aget-byte v7, v2, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    aget-byte v7, v2, v13

    shl-int/2addr v7, v13

    or-int/2addr v4, v7

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    iput v4, v3, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    .line 1914
    aget-byte v3, v2, v15

    const/16 v4, 0xe

    if-ne v3, v4, :cond_12

    const/16 v3, 0xa

    .line 1915
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    invoke-static {v2, v3, v4, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_11

    .line 1916
    :cond_12
    aget-byte v2, v2, v15

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    .line 1917
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    goto/16 :goto_11

    .line 1895
    :pswitch_b
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1897
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    aget-byte v4, v2, v15

    iput v4, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    .line 1898
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    aget-byte v4, v2, v14

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v12, v2, v12

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v4, v12

    aget-byte v11, v2, v11

    shl-int/2addr v11, v13

    or-int/2addr v4, v11

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v4, v10

    iput v4, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    .line 1899
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    aget-byte v4, v2, v9

    shl-int/lit8 v4, v4, 0x18

    aget-byte v8, v2, v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v4, v8

    aget-byte v7, v2, v7

    shl-int/2addr v7, v13

    or-int/2addr v4, v7

    aget-byte v7, v2, v13

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    iput v4, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    .line 1900
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v3, v3, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    div-int/2addr v3, v13

    .line 1901
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    rem-int/2addr v4, v13

    if-eqz v4, :cond_13

    add-int/lit8 v3, v3, 0x1

    .line 1903
    :cond_13
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    invoke-static {v2, v6, v4, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1904
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    add-int/2addr v3, v6

    aget-byte v2, v2, v3

    iput v2, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    goto/16 :goto_11

    .line 1871
    :pswitch_c
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 1873
    move-object/from16 v3, p2

    check-cast v3, Lcom/uhf/api/cls/Reader$AntPowerConf;

    aget-byte v4, v2, v15

    iput v4, v3, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    const/4 v3, 0x0

    .line 1874
    :goto_e
    aget-byte v4, v2, v15

    if-ge v3, v4, :cond_14

    .line 1875
    new-instance v4, Lcom/uhf/api/cls/Reader$AntPower;

    invoke-direct {v4, v1}, Lcom/uhf/api/cls/Reader$AntPower;-><init>(Lcom/uhf/api/cls/Reader;)V

    mul-int/lit8 v6, v3, 0x5

    add-int/lit8 v7, v6, 0x1

    .line 1876
    aget-byte v7, v2, v7

    iput v7, v4, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    add-int/lit8 v7, v6, 0x2

    .line 1877
    aget-byte v7, v2, v7

    shl-int/2addr v7, v13

    add-int/lit8 v8, v6, 0x3

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    iput-short v7, v4, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    add-int/lit8 v7, v6, 0x4

    .line 1878
    aget-byte v7, v2, v7

    shl-int/2addr v7, v13

    add-int/lit8 v6, v6, 0x5

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v7

    int-to-short v6, v6

    iput-short v6, v4, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    .line 1879
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aput-object v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1882
    :cond_14
    iget-boolean v2, v1, Lcom/uhf/api/cls/Reader;->isfilterpw:Z

    if-eqz v2, :cond_15

    .line 1883
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    if-eqz v2, :cond_15

    .line 1884
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget v3, v3, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    iput v3, v2, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    .line 1885
    :goto_f
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget v2, v2, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v15, v2, :cond_15

    .line 1886
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v2, v2, v15

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v3, v3, v15

    iget-short v3, v3, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    iput-short v3, v2, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    .line 1887
    move-object/from16 v2, p2

    check-cast v2, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v2, v2, v15

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v3, v3, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v3, v3, v15

    iget-short v3, v3, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    iput-short v3, v2, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 2157
    :goto_10
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v4, v4, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/uhf/api/cls/JniModuleAPI;->ParamGet_BaseType(II[B)I

    move-result v5

    if-nez v5, :cond_15

    .line 2159
    move-object/from16 v3, p2

    check-cast v3, [I

    .line 2160
    aget-byte v4, v2, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    aget-byte v6, v2, v14

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget-byte v6, v2, v12

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v13

    or-int/2addr v4, v6

    aget-byte v2, v2, v11

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v4

    aput v2, v3, v15

    .line 2169
    :cond_15
    :goto_11
    invoke-static {v5}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 2170
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2171
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ParamSet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 16

    move-object/from16 v1, p0

    .line 2175
    monitor-enter p0

    const/16 v2, 0x1f4

    :try_start_0
    new-array v3, v2, [B

    .line 2178
    sget-object v4, Lcom/uhf/api/cls/Reader$1;->$SwitchMap$com$uhf$api$cls$Reader$Mtr_Param:[I

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/high16 v9, 0xff0000

    const/high16 v10, -0x1000000

    const/4 v11, 0x3

    const/16 v12, 0x10

    const v13, 0xff00

    const/4 v15, 0x1

    const/4 v2, 0x0

    packed-switch v4, :pswitch_data_0

    .line 2457
    :pswitch_0
    move-object/from16 v4, p2

    check-cast v4, [I

    goto/16 :goto_14

    .line 2344
    :pswitch_1
    move-object/from16 v4, p2

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2346
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2348
    :cond_0
    new-instance v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;

    invoke-direct {v5, v1}, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 2349
    array-length v7, v4

    if-eqz v7, :cond_9

    array-length v7, v4

    if-le v7, v12, :cond_1

    goto/16 :goto_5

    .line 2352
    :cond_1
    array-length v7, v4

    iput v7, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectorcnt:I

    const/4 v7, 0x0

    .line 2353
    :goto_0
    array-length v11, v4

    if-ge v7, v11, :cond_6

    .line 2354
    aget-object v11, v4, v7

    if-nez v11, :cond_2

    .line 2355
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v2

    .line 2356
    :cond_2
    aget-object v11, v4, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v14, 0x30

    if-gt v11, v14, :cond_5

    aget-object v11, v4, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    rem-int/2addr v11, v8

    if-eqz v11, :cond_3

    goto :goto_2

    .line 2358
    :cond_3
    iget-object v11, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v11, v11, v7

    iput v15, v11, Lcom/uhf/api/cls/Reader$TagSelector_ST;->bank:I

    .line 2359
    aget-object v11, v4, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_4

    .line 2360
    iget-object v11, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v11, v11, v7

    iput v12, v11, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    .line 2361
    iget-object v11, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v11, v11, v7

    iput v6, v11, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    .line 2362
    iget-object v11, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v11, v11, v7

    iget-object v11, v11, Lcom/uhf/api/cls/Reader$TagSelector_ST;->sdata:[B

    aput-byte v2, v11, v2

    goto :goto_1

    .line 2365
    :cond_4
    iget-object v11, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v11, v11, v7

    const/16 v14, 0x20

    iput v14, v11, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    .line 2366
    iget-object v11, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v11, v11, v7

    aget-object v14, v4, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v14, v14, 0x4

    iput v14, v11, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    .line 2367
    aget-object v11, v4, v7

    aget-object v14, v4, v7

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    iget-object v6, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$TagSelector_ST;->sdata:[B

    invoke-virtual {v1, v11, v14, v6}, Lcom/uhf/api/cls/Reader;->Str2Hex(Ljava/lang/String;I[B)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x5

    goto :goto_0

    .line 2357
    :cond_5
    :goto_2
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v2

    .line 2373
    :cond_6
    iget v4, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectorcnt:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 2374
    :goto_3
    iget v7, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectorcnt:I

    if-ge v4, v7, :cond_8

    add-int/lit8 v7, v6, 0x1

    .line 2375
    iget-object v8, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->bank:I

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v7, 0x1

    .line 2376
    iget-object v8, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/2addr v8, v10

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v6, 0x1

    .line 2377
    iget-object v8, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/2addr v8, v9

    shr-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v7, 0x1

    .line 2378
    iget-object v8, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/2addr v8, v13

    const/16 v11, 0x8

    shr-int/2addr v8, v11

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v6, 0x1

    .line 2379
    iget-object v8, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->startaddr:I

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v7, 0x1

    .line 2380
    iget-object v8, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v4

    iget v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 2381
    iget-object v7, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    const/16 v8, 0x8

    rem-int/2addr v7, v8

    if-nez v7, :cond_7

    iget-object v7, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    div-int/2addr v7, v8

    goto :goto_4

    .line 2382
    :cond_7
    iget-object v7, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/uhf/api/cls/Reader$TagSelector_ST;->slen:I

    const/16 v8, 0x8

    div-int/2addr v7, v8

    add-int/2addr v7, v15

    .line 2383
    :goto_4
    iget-object v8, v5, Lcom/uhf/api/cls/Reader$MultiTagSelectors_ST;->tagselectors:[Lcom/uhf/api/cls/Reader$TagSelector_ST;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$TagSelector_ST;->sdata:[B

    invoke-static {v8, v2, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2386
    :cond_8
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2350
    :cond_9
    :goto_5
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v2

    .line 2408
    :pswitch_2
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Default_Param;

    .line 2410
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {v5}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    .line 2411
    iget-boolean v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->isdefault:Z

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    int-to-byte v5, v5

    aput-byte v5, v3, v15

    .line 2412
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE_BAUD:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-eq v5, v6, :cond_11

    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_SESSION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-eq v5, v6, :cond_11

    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_POTL_GEN2_Q:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_b

    goto/16 :goto_a

    .line 2420
    :cond_b
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_RF_ANTPOWER:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_c

    .line 2421
    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    check-cast v4, Lcom/uhf/api/cls/Reader$AntPowerConf;

    .line 2422
    iget v5, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    const/4 v5, 0x0

    .line 2424
    :goto_7
    iget v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v5, v6, :cond_12

    add-int/lit8 v6, v11, 0x1

    .line 2425
    iget-object v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    int-to-byte v7, v7

    aput-byte v7, v3, v11

    add-int/lit8 v7, v6, 0x1

    .line 2426
    iget-object v8, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    and-int/2addr v8, v13

    const/16 v9, 0x8

    shr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v7, 0x1

    .line 2427
    iget-object v8, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v6, 0x1

    .line 2428
    iget-object v8, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    and-int/2addr v8, v13

    const/16 v9, 0x8

    shr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v7, 0x1

    .line 2429
    iget-object v8, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v6, 0x1

    .line 2430
    aput-byte v2, v3, v6

    add-int/lit8 v11, v7, 0x1

    .line 2431
    aput-byte v2, v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2433
    :cond_c
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_FREQUENCY_REGION:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_d

    .line 2434
    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v7

    goto/16 :goto_b

    .line 2435
    :cond_d
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->key:Lcom/uhf/api/cls/Reader$Mtr_Param;

    sget-object v6, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_SAVEINMODULE:Lcom/uhf/api/cls/Reader$Mtr_Param;

    if-ne v5, v6, :cond_10

    .line 2436
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->subkey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 2437
    array-length v6, v5

    int-to-byte v6, v6

    aput-byte v6, v3, v7

    const/4 v6, 0x0

    .line 2438
    :goto_8
    array-length v7, v5

    if-ge v6, v7, :cond_e

    add-int/lit8 v7, v11, 0x1

    .line 2439
    aget-byte v8, v5, v6

    aput-byte v8, v3, v11

    add-int/lit8 v6, v6, 0x1

    move v11, v7

    goto :goto_8

    .line 2440
    :cond_e
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$Default_Param;->subkey:Ljava/lang/String;

    const-string v6, "modulesave/hpupload"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2441
    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    check-cast v4, [I

    const/4 v5, 0x0

    :goto_9
    const/4 v6, 0x6

    if-ge v5, v6, :cond_12

    add-int/lit8 v6, v11, 0x1

    .line 2444
    aget v7, v4, v5

    and-int/2addr v7, v10

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v3, v11

    add-int/lit8 v7, v6, 0x1

    .line 2445
    aget v8, v4, v5

    and-int/2addr v8, v9

    shr-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, v3, v6

    add-int/lit8 v6, v7, 0x1

    .line 2446
    aget v8, v4, v5

    and-int/2addr v8, v13

    const/16 v11, 0x8

    shr-int/2addr v8, v11

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v11, v6, 0x1

    .line 2447
    aget v7, v4, v5

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 2450
    :cond_f
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v2

    .line 2452
    :cond_10
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    monitor-exit p0

    return-object v2

    .line 2415
    :cond_11
    :goto_a
    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Default_Param;->val:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int v5, v4, v10

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    and-int v5, v4, v9

    shr-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v3, v11

    and-int v5, v4, v13

    const/16 v6, 0x8

    shr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x5

    aput-byte v4, v3, v5

    .line 2453
    :cond_12
    :goto_b
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2318
    :pswitch_3
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    move-object/from16 v5, p2

    check-cast v5, [B

    invoke-virtual {v3, v2, v4, v5}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2392
    :pswitch_4
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$CustomParam_ST;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2395
    :try_start_1
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamName:Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2399
    :catch_0
    :try_start_2
    array-length v6, v5

    invoke-static {v5, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2400
    array-length v5, v5

    aput-byte v2, v3, v5

    const/16 v5, 0x30

    .line 2401
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    array-length v6, v6

    and-int/2addr v6, v13

    const/16 v7, 0x8

    shr-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    const/16 v5, 0x31

    .line 2402
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    array-length v6, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 2403
    iget-object v5, v4, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    const/16 v6, 0x32

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$CustomParam_ST;->ParamVal:[B

    array-length v4, v4

    invoke-static {v5, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2404
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2305
    :pswitch_5
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    array-length v4, v4

    .line 2306
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    array-length v5, v5

    .line 2307
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$Reader_Ip;->gateway:[B

    array-length v6, v6

    int-to-byte v8, v4

    aput-byte v8, v3, v2

    int-to-byte v8, v5

    aput-byte v8, v3, v15

    int-to-byte v8, v6

    aput-byte v8, v3, v7

    .line 2311
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Reader_Ip;->ip:[B

    invoke-static {v7, v2, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2312
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Reader_Ip;->mask:[B

    add-int/2addr v4, v11

    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2313
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Reader_Ip;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Reader_Ip;->gateway:[B

    add-int/2addr v4, v5

    invoke-static {v7, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2314
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2291
    :pswitch_6
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$HoptableData_ST;->lenhtb:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/4 v4, 0x0

    .line 2293
    :goto_c
    aget-byte v5, v3, v2

    if-ge v4, v5, :cond_13

    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v6, v5, 0x1

    .line 2294
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v7, v7, v4

    and-int/2addr v7, v10

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    .line 2295
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v7, v7, v4

    and-int/2addr v7, v9

    shr-int/2addr v7, v12

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x3

    .line 2296
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v7, v7, v4

    and-int/2addr v7, v13

    const/16 v8, 0x8

    shr-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x4

    .line 2297
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$HoptableData_ST;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$HoptableData_ST;->htb:[I

    aget v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2299
    :cond_13
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2282
    :pswitch_7
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Region_Conf;

    invoke-virtual {v4}, Lcom/uhf/api/cls/Reader$Region_Conf;->value()I

    move-result v4

    and-int v5, v4, v10

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    and-int v5, v4, v9

    shr-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v3, v15

    and-int v5, v4, v13

    const/16 v6, 0x8

    shr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    .line 2287
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2269
    :pswitch_8
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potlcnt:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    const/4 v4, 0x0

    .line 2270
    :goto_d
    aget-byte v5, v3, v2

    if-ge v4, v5, :cond_14

    mul-int/lit8 v5, v4, 0x5

    add-int/lit8 v6, v5, 0x1

    .line 2271
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v7, v7, v4

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potl;->potl:Lcom/uhf/api/cls/Reader$SL_TagProtocol;

    invoke-virtual {v7}, Lcom/uhf/api/cls/Reader$SL_TagProtocol;->value()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x2

    .line 2272
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/2addr v7, v10

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x3

    .line 2273
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/2addr v7, v9

    shr-int/2addr v7, v12

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v6, v5, 0x4

    .line 2274
    move-object/from16 v7, p2

    check-cast v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/2addr v7, v13

    const/16 v8, 0x8

    shr-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x5

    .line 2275
    move-object/from16 v6, p2

    check-cast v6, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$Inv_Potls_ST;->potls:[Lcom/uhf/api/cls/Reader$Inv_Potl;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/uhf/api/cls/Reader$Inv_Potl;->weight:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2278
    :cond_14
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2245
    :pswitch_9
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    if-eqz v4, :cond_17

    .line 2246
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    if-nez v4, :cond_15

    const/16 v4, 0xa

    aput-byte v4, v3, v2

    goto :goto_e

    :cond_15
    const/16 v4, 0xe

    aput-byte v4, v3, v2

    .line 2250
    :goto_e
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bank:I

    int-to-byte v4, v4

    aput-byte v4, v3, v15

    .line 2251
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/2addr v4, v10

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    .line 2252
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/2addr v4, v9

    shr-int/2addr v4, v12

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    .line 2253
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/2addr v4, v13

    const/16 v5, 0x8

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 2254
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->startaddr:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x5

    aput-byte v4, v3, v5

    const/4 v4, 0x6

    .line 2256
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v5, v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/2addr v5, v10

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    .line 2257
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v5, v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/2addr v5, v9

    shr-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2258
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/2addr v4, v13

    const/16 v5, 0x8

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    const/16 v4, 0x9

    .line 2259
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget v5, v5, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2260
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    if-eqz v4, :cond_16

    .line 2261
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    iget-object v4, v4, Lcom/uhf/api/cls/Reader$EmbededData_ST;->accesspwd:[B

    const/16 v5, 0xa

    invoke-static {v4, v2, v3, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2262
    :cond_16
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2264
    :cond_17
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2221
    :pswitch_a
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    if-eqz v4, :cond_19

    .line 2222
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->bank:I

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 2223
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/2addr v4, v10

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v3, v15

    .line 2224
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/2addr v4, v9

    shr-int/2addr v4, v12

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    .line 2225
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/2addr v4, v13

    const/16 v5, 0x8

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    .line 2226
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->startaddr:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 2228
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/2addr v4, v10

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    const/4 v5, 0x5

    aput-byte v4, v3, v5

    const/4 v4, 0x6

    .line 2229
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v5, v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/2addr v5, v9

    shr-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v4, 0x7

    .line 2230
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v5, v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/2addr v5, v13

    const/16 v6, 0x8

    shr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2231
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 2233
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v4, v4, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    div-int/2addr v4, v6

    .line 2234
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v5, v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;->flen:I

    rem-int/2addr v5, v6

    if-eqz v5, :cond_18

    add-int/lit8 v4, v4, 0x1

    .line 2236
    :cond_18
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;->fdata:[B

    const/16 v6, 0x9

    invoke-static {v5, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x9

    .line 2237
    move-object/from16 v5, p2

    check-cast v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;

    iget v5, v5, Lcom/uhf/api/cls/Reader$TagFilter_ST;->isInvert:I

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 2238
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2240
    :cond_19
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v4, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto/16 :goto_15

    .line 2180
    :pswitch_b
    move-object/from16 v4, p2

    check-cast v4, Lcom/uhf/api/cls/Reader$AntPowerConf;

    .line 2181
    iget-boolean v6, v1, Lcom/uhf/api/cls/Reader;->isfilterpw:Z

    if-eqz v6, :cond_21

    const/4 v6, 0x0

    .line 2183
    :goto_f
    iget v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v6, v7, :cond_1b

    .line 2184
    iget-object v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v7, v7, v6

    iget-short v7, v7, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    const/16 v8, 0x1f4

    if-lt v7, v8, :cond_1c

    iget-object v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v7, v7, v6

    iget-short v7, v7, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    if-ge v7, v8, :cond_1a

    goto :goto_10

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1b
    const/4 v15, 0x0

    :cond_1c
    :goto_10
    if-eqz v15, :cond_20

    .line 2190
    new-instance v5, Lcom/uhf/api/cls/Reader$AntPowerConf;

    invoke-direct {v5, v1}, Lcom/uhf/api/cls/Reader$AntPowerConf;-><init>(Lcom/uhf/api/cls/Reader;)V

    iput-object v5, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    .line 2191
    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    iput v6, v5, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    const/4 v5, 0x0

    .line 2192
    :goto_11
    iget v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v5, v6, :cond_1d

    .line 2193
    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    new-instance v7, Lcom/uhf/api/cls/Reader$AntPower;

    invoke-direct {v7, v1}, Lcom/uhf/api/cls/Reader$AntPower;-><init>(Lcom/uhf/api/cls/Reader;)V

    aput-object v7, v6, v5

    .line 2194
    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v6, v6, v5

    iget-object v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v7, v7, v5

    iget-short v7, v7, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    iput-short v7, v6, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    .line 2195
    iget-object v6, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v6, v6, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v6, v6, v5

    iget-object v7, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v7, v7, v5

    iget-short v7, v7, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    iput-short v7, v6, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    .line 2198
    :goto_12
    iget v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    if-ge v5, v6, :cond_22

    .line 2199
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v6, v6, v5

    iget-short v6, v6, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    const/16 v7, 0x1f4

    if-ge v6, v7, :cond_1e

    .line 2200
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v6, v6, v5

    iput-short v7, v6, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    .line 2201
    :cond_1e
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v6, v6, v5

    iget-short v6, v6, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    const/16 v7, 0x1f4

    if-ge v6, v7, :cond_1f

    .line 2202
    iget-object v6, v4, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v6, v6, v5

    iput-short v7, v6, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2206
    :cond_20
    iput-object v5, v1, Lcom/uhf/api/cls/Reader;->setpower:Lcom/uhf/api/cls/Reader$AntPowerConf;

    :cond_21
    move-object/from16 v4, p2

    .line 2209
    :cond_22
    move-object v5, v4

    check-cast v5, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget v5, v5, Lcom/uhf/api/cls/Reader$AntPowerConf;->antcnt:I

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    const/4 v5, 0x0

    .line 2210
    :goto_13
    aget-byte v6, v3, v2

    if-ge v5, v6, :cond_23

    mul-int/lit8 v6, v5, 0x5

    add-int/lit8 v7, v6, 0x1

    .line 2211
    move-object v8, v4

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->antid:I

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v6, 0x2

    .line 2212
    move-object v8, v4

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    and-int/2addr v8, v13

    const/16 v9, 0x8

    shr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v6, 0x3

    .line 2213
    move-object v8, v4

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->readPower:S

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v6, 0x4

    .line 2214
    move-object v8, v4

    check-cast v8, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v8, v8, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v8, v8, v5

    iget-short v8, v8, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    and-int/2addr v8, v13

    const/16 v9, 0x8

    shr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v6, v6, 0x5

    .line 2215
    move-object v7, v4

    check-cast v7, Lcom/uhf/api/cls/Reader$AntPowerConf;

    iget-object v7, v7, Lcom/uhf/api/cls/Reader$AntPowerConf;->Powers:[Lcom/uhf/api/cls/Reader$AntPower;

    aget-object v7, v7, v5

    iget-short v7, v7, Lcom/uhf/api/cls/Reader$AntPower;->writePower:S

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 2217
    :cond_23
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    goto :goto_15

    .line 2457
    :goto_14
    aget v4, v4, v2

    and-int v5, v4, v10

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    and-int v5, v4, v9

    shr-int/2addr v5, v12

    int-to-byte v5, v5

    aput-byte v5, v3, v15

    and-int v5, v4, v13

    const/16 v6, 0x8

    shr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v7

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    .line 2462
    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v5, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v2, v5, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uhf/api/cls/Reader$Mtr_Param;->value()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Lcom/uhf/api/cls/JniModuleAPI;->ParamSet_BaseType(II[B)I

    move-result v2

    .line 2467
    :goto_15
    invoke-static {v2}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 2468
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 2469
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public PsamTransceiver(II[B[I[B[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 11

    move-object v1, p0

    .line 1850
    monitor-enter p0

    .line 1851
    :try_start_0
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->PsamTransceiver(III[B[I[B[BS)I

    move-result v0

    .line 1853
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1854
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1855
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ReadDataOnReader(I[BI)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1722
    monitor-enter p0

    .line 1723
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->ReadDataOnReader(II[BI)I

    move-result p1

    .line 1724
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1725
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1726
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ReadTagLED(ISSLcom/uhf/api/cls/R2000_calibration$TagLED_DATA;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 10

    .line 2803
    monitor-enter p0

    const/16 v0, 0x12c

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 2806
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v9, 0x0

    aget v2, v2, v9

    move v3, p1

    move v4, p3

    move v5, p2

    move-object v6, v0

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/uhf/api/cls/JniModuleAPI;->ReadTagLED(IISS[B[I)I

    move-result p1

    if-nez p1, :cond_0

    .line 2808
    new-instance p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;

    new-instance p3, Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p3}, Lcom/uhf/api/cls/R2000_calibration;-><init>()V

    aget v1, v8, v9

    invoke-direct {p2, p3, v0, v1}, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;[BI)V

    .line 2809
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtAntenna:I

    .line 2810
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtFrequency:I

    .line 2811
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtLqi:I

    .line 2812
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPhase:I

    .line 2813
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtPro:I

    .line 2814
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtReadCount:I

    .line 2815
    iget p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    iput p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->pvtTsmp:I

    const/4 p3, 0x2

    new-array v0, p3, [B

    .line 2816
    iput-object v0, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    new-array v0, p3, [B

    .line 2817
    iput-object v0, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    .line 2818
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    .line 2819
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    iget-object v1, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagcrc:[B

    invoke-static {v0, v9, v1, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2820
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    iget-object v1, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    iget-object v2, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagepc:[B

    array-length v2, v2

    invoke-static {v0, v9, v1, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2821
    iget-object v0, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    iget-object v1, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->tagpc:[B

    invoke-static {v0, v9, v1, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2822
    iget-object p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    if-eqz p3, :cond_0

    .line 2823
    iget-object p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    array-length p3, p3

    new-array p3, p3, [B

    iput-object p3, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    .line 2824
    iget-object p3, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    iget-object p4, p4, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    iget-object p2, p2, Lcom/uhf/api/cls/R2000_calibration$TagLED_DATA;->BankData:[B

    array-length p2, p2

    invoke-static {p3, v9, p4, v9, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2828
    :cond_0
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 2829
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2830
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ReadTagTemperature(ICIIIIIS[BLcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p10

    .line 2768
    monitor-enter p0

    const/16 v2, 0x12c

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x1

    new-array v15, v3, [I

    .line 2771
    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v4, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v14, 0x0

    aget v4, v4, v14

    add-int v5, p5, p6

    add-int v9, v5, p7

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move-object v14, v2

    invoke-virtual/range {v3 .. v15}, Lcom/uhf/api/cls/JniModuleAPI;->ReadTagTemperature(IICIIIIIS[B[B[I)I

    move-result v3

    if-nez v3, :cond_1

    .line 2775
    new-instance v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;

    new-instance v5, Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {v5}, Lcom/uhf/api/cls/R2000_calibration;-><init>()V

    move/from16 v6, p4

    invoke-direct {v4, v5, v2, v6}, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;[BI)V

    .line 2776
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtAntenna:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtAntenna:I

    .line 2777
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtFrequency:I

    .line 2778
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtLqi:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtLqi:I

    .line 2779
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPhase:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPhase:I

    .line 2780
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPro:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtPro:I

    .line 2781
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtReadCount:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtReadCount:I

    .line 2782
    iget v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    iput v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->pvtTsmp:I

    const/4 v2, 0x2

    new-array v5, v2, [B

    .line 2783
    iput-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagcrc:[B

    new-array v5, v2, [B

    .line 2784
    iput-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagpc:[B

    .line 2785
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    array-length v5, v5

    new-array v5, v5, [B

    iput-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    .line 2786
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagcrc:[B

    iget-object v6, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagcrc:[B

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2787
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    iget-object v6, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    iget-object v8, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagepc:[B

    array-length v8, v8

    invoke-static {v5, v7, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2788
    iget-object v5, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagpc:[B

    iget-object v6, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->tagpc:[B

    invoke-static {v5, v7, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2789
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    if-eqz v2, :cond_0

    .line 2790
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    .line 2791
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    iget-object v5, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    iget-object v6, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->BankData:[B

    array-length v6, v6

    invoke-static {v2, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2793
    :cond_0
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    .line 2794
    iget-object v2, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    iget-object v0, v0, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    iget-object v4, v4, Lcom/uhf/api/cls/R2000_calibration$Tagtemperture_DATA;->temperdata:[B

    array-length v4, v4

    invoke-static {v2, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2796
    :cond_1
    invoke-static {v3}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2797
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2798
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ResetRfidModule()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 2732
    monitor-enter p0

    .line 2733
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/uhf/api/cls/JniModuleAPI;->ResetRfidModule(I)I

    move-result v0

    .line 2734
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 2735
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2736
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Reset_IT()V
    .locals 4

    .line 3952
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_0

    .line 3953
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->Reset_IT_CT()V

    goto :goto_1

    .line 3954
    :cond_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3957
    :cond_1
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->it_mode_V:Lcom/uhf/api/cls/Reader$IT_MODE;

    sget-object v1, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_S2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne v0, v1, :cond_3

    .line 3958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->IT_S2_start:J

    .line 3959
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uhf/api/cls/Reader;->IT_S2_start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    goto :goto_1

    .line 3955
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    .line 3956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uhf/api/cls/Reader;->IT_E7_start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    :cond_3
    :goto_1
    return-void
.end method

.method public Reset_IT_CT()V
    .locals 4

    .line 3935
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->quetagstr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .line 3939
    iput v0, p0, Lcom/uhf/api/cls/Reader;->totalcount:I

    .line 3940
    iput v0, p0, Lcom/uhf/api/cls/Reader;->totalcountlast:I

    .line 3942
    iget v1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_step_init:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3943
    iput v1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    goto :goto_0

    .line 3945
    :cond_0
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_CT_step:I

    .line 3946
    :goto_0
    iput v0, p0, Lcom/uhf/api/cls/Reader;->IT_CT_c:I

    .line 3947
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    .line 3948
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/uhf/api/cls/Reader;->IT_CT_start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->vstaticstarttick:J

    return-void
.end method

.method public SaveDataOnReader(I[BI)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1714
    monitor-enter p0

    .line 1715
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/JniModuleAPI;->SaveDataOnReader(II[BI)I

    move-result p1

    .line 1716
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1717
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1718
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method SetFilterSessioninTargetA([III)I
    .locals 2

    .line 2835
    new-instance v0, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;

    new-instance v1, Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {v1}, Lcom/uhf/api/cls/R2000_calibration;-><init>()V

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;-><init>(Lcom/uhf/api/cls/R2000_calibration;[III)V

    .line 2836
    new-instance p1, Lcom/uhf/api/cls/R2000_calibration;

    invoke-direct {p1}, Lcom/uhf/api/cls/R2000_calibration;-><init>()V

    .line 2837
    sget-object p2, Lcom/uhf/api/cls/R2000_calibration$R2000cmd;->S2TA:Lcom/uhf/api/cls/R2000_calibration$R2000cmd;

    invoke-virtual {v0}, Lcom/uhf/api/cls/R2000_calibration$FilterS2inA_DATA;->ToByteData()[B

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/uhf/api/cls/R2000_calibration;->GetSendCmd(Lcom/uhf/api/cls/R2000_calibration$R2000cmd;[B)[B

    move-result-object p1

    .line 2840
    new-instance p2, Lcom/uhf/api/cls/Reader$MsgObj;

    invoke-direct {p2, p0}, Lcom/uhf/api/cls/Reader$MsgObj;-><init>(Lcom/uhf/api/cls/Reader;)V

    const/16 p3, 0x3e8

    .line 2841
    invoke-direct {p0, p1, p3, p2}, Lcom/uhf/api/cls/Reader;->SendandRev([BILcom/uhf/api/cls/Reader$MsgObj;)I

    move-result p1

    if-eqz p1, :cond_0

    return p1

    .line 2845
    :cond_0
    iget-object p1, p2, Lcom/uhf/api/cls/Reader$MsgObj;->status:[B

    const/4 p3, 0x0

    aget-byte p1, p1, p3

    shl-int/lit8 p1, p1, 0x8

    iget-object p2, p2, Lcom/uhf/api/cls/Reader$MsgObj;->status:[B

    const/4 p3, 0x1

    aget-byte p2, p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public SetGPO(II)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 3

    .line 1817
    monitor-enter p0

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1, p2}, Lcom/uhf/api/cls/JniModuleAPI;->SetGPO(III)I

    move-result p1

    .line 1819
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1820
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1821
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Set_IT_Params(Lcom/uhf/api/cls/Reader$IT_MODE;[Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1235
    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_CT:Lcom/uhf/api/cls/Reader$IT_MODE;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v0, :cond_0

    .line 1238
    :try_start_0
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m1_keep:I

    .line 1239
    aget-object p1, p2, v5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m1_toma:I

    .line 1250
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cycleread:I

    .line 1251
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cyclestop:I

    .line 1252
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_toma:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 1256
    :catch_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Length must be 5 and type must be Integer."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1260
    :cond_0
    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_S2:Lcom/uhf/api/cls/Reader$IT_MODE;

    const-string v6, "Length must be 4 and type must be Integer."

    if-ne p1, v0, :cond_1

    .line 1264
    :try_start_1
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_S2_m1_cycle:I

    .line 1265
    aget-object p1, p2, v5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_S2_ctagcount:I

    .line 1267
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_S2_m1_cycle2:I

    .line 1268
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_S2_ctagcount2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v5

    .line 1271
    :catch_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1275
    :cond_1
    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/uhf/api/cls/Reader$IT_MODE;->IT_MODE_E7v2:Lcom/uhf/api/cls/Reader$IT_MODE;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    .line 1279
    :cond_3
    :goto_0
    :try_start_2
    aget-object p1, p2, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle:I

    .line 1280
    aget-object p1, p2, v5

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount:I

    .line 1282
    aget-object p1, p2, v3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_E7_m1_cycle2:I

    .line 1283
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_E7_ctagcount2:I

    .line 1285
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_E7_rfm:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return v5

    .line 1287
    :catch_2
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Setdutycycle(I)V
    .locals 4

    if-ltz p1, :cond_1

    const/16 v0, 0xb

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double v0, v0, v2

    const-wide v2, 0x407f400000000000L    # 500.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 1298
    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cyclestop:I

    .line 1299
    iget p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cyclestop:I

    rsub-int p1, p1, 0x1f4

    iput p1, p0, Lcom/uhf/api/cls/Reader;->IT_CT_m3_cycleread:I

    :cond_1
    :goto_0
    return-void
.end method

.method Sort([II)[I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    .line 3675
    aget v3, p1, v1

    aget v4, p1, v2

    if-ge v3, v4, :cond_0

    .line 3676
    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3677
    aget v4, p1, v2

    aput v4, p1, v1

    .line 3678
    aput v3, p1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3682
    :cond_2
    new-array v1, p2, [I

    .line 3683
    invoke-static {p1, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public StartReading([IILcom/uhf/api/cls/BackReadOption;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 3034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartReading- [] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v1, :cond_0

    const-string v1, "t"

    goto :goto_0

    :cond_0
    const-string v1, "f"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 3035
    invoke-direct {p0}, Lcom/uhf/api/cls/Reader;->CLOGS()V

    .line 3036
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 3037
    iget-boolean v1, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-eqz v1, :cond_1

    .line 3038
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OP_EXECING:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 3039
    iput-boolean v1, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 3040
    iput-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    .line 3043
    iget-boolean v2, p3, Lcom/uhf/api/cls/BackReadOption;->IsGPITrigger:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    .line 3044
    iget-object v2, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v2, v2, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v4, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-eq v2, v4, :cond_2

    iget-object v2, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v2, v2, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v4, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1ORTRI2START_TIMEOUTSTOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v2, v4, :cond_3

    .line 3046
    :cond_2
    iget-object v2, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget v2, v2, Lcom/uhf/api/cls/GPITrigger;->StopTriggerTimeout:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 3047
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 3050
    :cond_3
    new-instance v2, Lcom/uhf/api/cls/Reader$HardwareDetails;

    invoke-direct {v2, p0}, Lcom/uhf/api/cls/Reader$HardwareDetails;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 3051
    invoke-virtual {p0, v2}, Lcom/uhf/api/cls/Reader;->GetHardwareDetails(Lcom/uhf/api/cls/Reader$HardwareDetails;)Lcom/uhf/api/cls/Reader$READER_ERR;

    .line 3052
    iget-object v4, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v5, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-eq v4, v5, :cond_5

    iget-object v4, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v5, Lcom/uhf/api/cls/Reader$Reader_Type;->M6E_ARM7_FOUR_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-eq v4, v5, :cond_5

    iget-object v4, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v5, Lcom/uhf/api/cls/Reader$Reader_Type;->MODULE_ARM7_TWO_ANTS:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-eq v4, v5, :cond_5

    iget-object v2, v2, Lcom/uhf/api/cls/Reader$HardwareDetails;->logictype:Lcom/uhf/api/cls/Reader$Reader_Type;

    sget-object v4, Lcom/uhf/api/cls/Reader$Reader_Type;->SL_COMMN_READER:Lcom/uhf/api/cls/Reader$Reader_Type;

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x4

    .line 3060
    :goto_2
    iget-object v4, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v4, v4, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v4, v4, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-le v4, v2, :cond_6

    .line 3061
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_6
    const/4 v4, 0x0

    .line 3063
    :goto_3
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-ge v4, v5, :cond_9

    .line 3064
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-lt v5, v1, :cond_8

    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger1States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-le v5, v2, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3066
    :cond_8
    :goto_4
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 3068
    :cond_9
    iget-object v4, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v4, v4, Lcom/uhf/api/cls/GPITrigger;->TriggerType:Lcom/uhf/api/cls/GpiTrigger_Type;

    sget-object v5, Lcom/uhf/api/cls/GpiTrigger_Type;->GPITRIGGER_TRI1START_TRI2STOP:Lcom/uhf/api/cls/GpiTrigger_Type;

    if-ne v4, v5, :cond_d

    .line 3069
    iget-object v4, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v4, v4, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v4, v4, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-le v4, v2, :cond_a

    .line 3070
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    :cond_a
    const/4 v4, 0x0

    .line 3071
    :goto_5
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiCount:I

    if-ge v4, v5, :cond_d

    .line 3072
    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-lt v5, v1, :cond_c

    iget-object v5, p3, Lcom/uhf/api/cls/BackReadOption;->GpiTrigger:Lcom/uhf/api/cls/GPITrigger;

    iget-object v5, v5, Lcom/uhf/api/cls/GPITrigger;->GpiTrigger2States:Lcom/uhf/api/cls/GpiInfo_ST;

    iget-object v5, v5, Lcom/uhf/api/cls/GpiInfo_ST;->gpiStats:[Lcom/uhf/api/cls/GpiState_ST;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uhf/api/cls/GpiState_ST;->GpiId:I

    if-le v5, v2, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 3074
    :cond_c
    :goto_6
    sget-object p1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_INVALID_PARA:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object p1

    .line 3079
    :cond_d
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean p3, p3, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz p3, :cond_15

    .line 3081
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object p3, p3, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean p3, p3, Lcom/uhf/api/cls/TagMetaFlags;->IsReadCnt:Z

    if-eqz p3, :cond_e

    int-to-short p3, v1

    goto :goto_7

    :cond_e
    const/4 p3, 0x0

    .line 3083
    :goto_7
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsRSSI:Z

    if-eqz v1, :cond_f

    or-int/lit8 p3, p3, 0x2

    int-to-short p3, p3

    .line 3085
    :cond_f
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsAntennaID:Z

    if-eqz v1, :cond_10

    or-int/lit8 p3, p3, 0x4

    int-to-short p3, p3

    .line 3087
    :cond_10
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsFrequency:Z

    if-eqz v1, :cond_11

    or-int/lit8 p3, p3, 0x8

    int-to-short p3, p3

    .line 3089
    :cond_11
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsTimestamp:Z

    if-eqz v1, :cond_12

    or-int/lit8 p3, p3, 0x10

    int-to-short p3, p3

    .line 3091
    :cond_12
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsRFU:Z

    if-eqz v1, :cond_13

    or-int/lit8 p3, p3, 0x20

    int-to-short p3, p3

    .line 3093
    :cond_13
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-object v1, v1, Lcom/uhf/api/cls/BackReadOption;->TMFlags:Lcom/uhf/api/cls/TagMetaFlags;

    iget-boolean v1, v1, Lcom/uhf/api/cls/TagMetaFlags;->IsEmdData:Z

    if-eqz v1, :cond_14

    or-int/lit16 p3, p3, 0x80

    int-to-short p3, p3

    .line 3095
    :cond_14
    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iput-short v3, v1, Lcom/uhf/api/cls/BackReadOption;->ReadDuration:S

    const/16 v2, 0x32

    .line 3096
    iput v2, v1, Lcom/uhf/api/cls/BackReadOption;->ReadInterval:I

    shl-int/lit8 p3, p3, 0x8

    .line 3097
    iget-char v1, v1, Lcom/uhf/api/cls/BackReadOption;->FastReadDutyRation:C

    or-int/2addr p3, v1

    or-int/lit16 p3, p3, 0x80

    iput p3, p0, Lcom/uhf/api/cls/Reader;->m_FastReadOption:I

    .line 3098
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean p3, p3, Lcom/uhf/api/cls/BackReadOption;->IsGPITrigger:Z

    if-nez p3, :cond_15

    .line 3099
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v0, v0, v3

    iget v1, p0, Lcom/uhf/api/cls/Reader;->m_FastReadOption:I

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/uhf/api/cls/JniModuleAPI;->AsyncStartReading(I[III)I

    move-result p3

    .line 3100
    invoke-direct {p0, p3}, Lcom/uhf/api/cls/Reader;->errhandle(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 3101
    sget-object p3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, p3, :cond_15

    return-object v0

    .line 3106
    :cond_15
    iput p2, p0, Lcom/uhf/api/cls/Reader;->m_BackReadAntsCnt:I

    :goto_8
    if-ge v3, p2, :cond_16

    .line 3108
    iget-object p3, p0, Lcom/uhf/api/cls/Reader;->m_BackReadAnts:[I

    aget v1, p1, v3

    aput v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3111
    :cond_16
    new-instance p1, Lcom/uhf/api/cls/Reader$Tagnotify;

    invoke-direct {p1, p0, p0}, Lcom/uhf/api/cls/Reader$Tagnotify;-><init>(Lcom/uhf/api/cls/Reader;Lcom/uhf/api/cls/Reader;)V

    .line 3112
    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    .line 3117
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAllid:J

    .line 3118
    iget-object p1, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public StopReading()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 5

    const-string v0, "StopReading"

    .line 3124
    invoke-direct {p0, v0}, Lcom/uhf/api/cls/Reader;->toDlogAPI(Ljava/lang/String;)V

    .line 3126
    iget-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    if-nez v0, :cond_0

    .line 3127
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3128
    iput-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadingForAll:Z

    .line 3129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3130
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAllid:J

    .line 3131
    iget-wide v0, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAllid:J

    iget-object v2, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 3132
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v0, v0, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v0, :cond_1

    .line 3133
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_1

    .line 3134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err 1892"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uhf/api/cls/Reader;->ALOGS(Ljava/lang/String;)V

    return-object v0

    .line 3137
    :cond_1
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    .line 3141
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/uhf/api/cls/Reader;->m_IsReadThRunning:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 3150
    iput-object v0, p0, Lcom/uhf/api/cls/Reader;->m_ThreadForAll:Ljava/lang/Thread;

    .line 3151
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->m_BackReadOp:Lcom/uhf/api/cls/BackReadOption;

    iget-boolean v0, v0, Lcom/uhf/api/cls/BackReadOption;->IsFastRead:Z

    if-eqz v0, :cond_3

    .line 3152
    invoke-virtual {p0}, Lcom/uhf/api/cls/Reader;->AsyncStopReading()Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-eq v0, v1, :cond_3

    .line 3153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err 1920"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/uhf/api/cls/Reader;->ALOGS(Ljava/lang/String;)V

    return-object v0

    .line 3156
    :cond_3
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_4
    const-wide/16 v0, 0x14

    .line 3144
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3147
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public Str2Binary(Ljava/lang/String;I[B)V
    .locals 6

    .line 2498
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    add-int v4, v1, v2

    add-int/lit8 v5, v4, 0x1

    .line 2505
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    rsub-int/lit8 v5, v2, 0x7

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2507
    :cond_1
    div-int/lit8 v2, v1, 0x8

    aget-byte v4, p3, v2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Str2Hex(Ljava/lang/String;I[B)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 2489
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    int-to-byte v2, v2

    add-int/lit8 v5, v1, 0x2

    if-gt v5, p2, :cond_1

    .line 2492
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 2493
    :goto_1
    rem-int/lit8 v4, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :goto_2
    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    move v1, v5

    goto :goto_0

    :cond_3
    return-void
.end method

.method public TagInventory([IIS[Lcom/uhf/api/cls/Reader$TAGINFO;[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 1474
    monitor-enter p0

    .line 1475
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_Raw(I[IIS[I)I

    move-result p1

    .line 1476
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1478
    sget-object p2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne p1, p2, :cond_1

    const/4 p2, 0x0

    .line 1479
    :goto_0
    aget p3, p5, v6

    if-ge p2, p3, :cond_1

    .line 1480
    new-instance p3, Lcom/uhf/api/cls/Reader$TAGINFO;

    invoke-direct {p3, p0}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1481
    invoke-virtual {p0, p3}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1482
    sget-object v1, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v0, v1, :cond_0

    .line 1483
    aput-object p3, p4, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1487
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1488
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public TagInventory_BaseType([IIS[B[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 1602
    monitor-enter p0

    .line 1603
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_BaseType(I[IIS[B[I)I

    move-result p1

    .line 1604
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1605
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1606
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public TagInventory_Raw([IIS[I)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 6

    .line 1493
    monitor-enter p0

    .line 1494
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_Raw(I[IIS[I)I

    move-result p1

    .line 1495
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1496
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1497
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public TagInventory_Single([IIS[ILcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 15

    move-object v1, p0

    move/from16 v0, p3

    move-object/from16 v8, p5

    .line 1502
    new-instance v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;

    invoke-direct {v2, p0}, Lcom/uhf/api/cls/Reader$EmbededData_ST;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1503
    sget-object v3, Lcom/uhf/api/cls/Reader$Mtr_Param;->MTR_PARAM_TAG_EMBEDEDDATA:Lcom/uhf/api/cls/Reader$Mtr_Param;

    invoke-virtual {p0, v3, v2}, Lcom/uhf/api/cls/Reader;->ParamGet(Lcom/uhf/api/cls/Reader$Mtr_Param;Ljava/lang/Object;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v3

    .line 1506
    sget-object v4, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v3, v4, :cond_1

    .line 1507
    iget v2, v2, Lcom/uhf/api/cls/Reader$EmbededData_ST;->bytecnt:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v11, 0x0

    .line 1512
    :goto_1
    monitor-enter p0

    .line 1514
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1515
    sget-object v2, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v14, 0x0

    .line 1519
    :cond_2
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v3, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    aget v3, v3, v10

    const/16 v6, 0x14

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/uhf/api/cls/JniModuleAPI;->TagInventory_Raw(I[IIS[I)I

    move-result v2

    .line 1521
    invoke-static {v2}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v2

    .line 1522
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_3

    aget v3, p4, v10

    if-lez v3, :cond_3

    goto :goto_2

    .line 1524
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    int-to-long v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    .line 1526
    :goto_2
    sget-object v3, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v2, v3, :cond_7

    const/4 v3, 0x0

    .line 1527
    :goto_3
    aget v4, p4, v10

    if-ge v3, v4, :cond_7

    .line 1529
    new-instance v4, Lcom/uhf/api/cls/Reader$TAGINFO;

    invoke-direct {v4, p0}, Lcom/uhf/api/cls/Reader$TAGINFO;-><init>(Lcom/uhf/api/cls/Reader;)V

    .line 1530
    invoke-virtual {p0, v4}, Lcom/uhf/api/cls/Reader;->GetNextTag(Lcom/uhf/api/cls/Reader$TAGINFO;)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v5

    .line 1531
    sget-object v6, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    if-ne v5, v6, :cond_6

    const/4 v5, 0x2

    if-eqz v11, :cond_4

    .line 1535
    iget-short v6, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    if-lez v6, :cond_6

    .line 1536
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    .line 1537
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    .line 1538
    iget-byte v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    iput-byte v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    .line 1539
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    .line 1540
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    .line 1541
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    invoke-static {v3, v10, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1542
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    invoke-static {v3, v10, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1544
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    new-array v3, v3, [B

    iput-object v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    .line 1545
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    iput-short v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 1546
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    iget-short v7, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    invoke-static {v3, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1548
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    invoke-static {v3, v10, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1550
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    new-array v3, v3, [B

    iput-object v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    .line 1551
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    iput-short v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    .line 1553
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    iget-object v4, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    iget-short v5, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    invoke-static {v3, v10, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1555
    aput v9, p4, v10

    goto :goto_4

    .line 1561
    :cond_4
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->ReadCnt:I

    .line 1562
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->RSSI:I

    .line 1563
    iget-byte v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    iput-byte v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->AntennaID:B

    .line 1564
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Frequency:I

    .line 1565
    iget v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    iput v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->TimeStamp:I

    .line 1566
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    invoke-static {v3, v10, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1567
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->PC:[B

    invoke-static {v3, v10, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1569
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    new-array v3, v3, [B

    iput-object v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    .line 1570
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    iput-short v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    .line 1571
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EpcId:[B

    iget-short v7, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->Epclen:S

    invoke-static {v3, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1573
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    iget-object v6, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->CRC:[B

    invoke-static {v3, v10, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1575
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    new-array v3, v3, [B

    iput-object v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    .line 1576
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    iput-short v3, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    .line 1577
    iget-short v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    if-lez v3, :cond_5

    .line 1578
    iget-object v3, v4, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    iget-object v4, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededData:[B

    iget-short v5, v8, Lcom/uhf/api/cls/Reader$TAGINFO;->EmbededDatalen:S

    invoke-static {v3, v10, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1582
    :cond_5
    aput v9, p4, v10

    :goto_4
    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_7
    :goto_5
    if-eqz v14, :cond_8

    goto :goto_6

    .line 1593
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    int-to-long v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_2

    :goto_6
    if-nez v14, :cond_9

    .line 1595
    aput v10, p4, v10

    .line 1596
    :cond_9
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    .line 1597
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method TestModLive()Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 2887
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_OK_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    const/4 v1, 0x5

    new-array v2, v1, [B

    .line 2888
    fill-array-data v2, :array_0

    const/16 v3, 0x32

    new-array v4, v3, [B

    new-array v3, v3, [B

    .line 2891
    array-length v5, v2

    const/16 v6, 0x3e8

    invoke-virtual {p0, v2, v5, v6}, Lcom/uhf/api/cls/Reader;->DataTransportSend([BII)I

    .line 2892
    invoke-virtual {p0, v4, v1, v6}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2893
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 2894
    aget-byte v1, v4, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v3, v1, v6}, Lcom/uhf/api/cls/Reader;->DataTransportRecv([BII)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2895
    sget-object v0, Lcom/uhf/api/cls/Reader$READER_ERR;->MT_CMD_FAILED_ERR:Lcom/uhf/api/cls/Reader$READER_ERR;

    :cond_1
    return-object v0

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x3t
        0x1dt
        0xct
    .end array-data
.end method

.method public WriteTagData(ICI[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 11

    move-object v1, p0

    .line 1455
    monitor-enter p0

    .line 1456
    :try_start_0
    iget-object v2, v1, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v0, v1, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/uhf/api/cls/JniModuleAPI;->WriteTagData(IICI[BI[BS)I

    move-result v0

    .line 1457
    invoke-static {v0}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object v0

    .line 1458
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1459
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public WriteTagEpcEx(I[BI[BS)Lcom/uhf/api/cls/Reader$READER_ERR;
    .locals 7

    .line 1464
    monitor-enter p0

    .line 1465
    :try_start_0
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->japi:Lcom/uhf/api/cls/JniModuleAPI;

    iget-object v1, p0, Lcom/uhf/api/cls/Reader;->hReader:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/uhf/api/cls/JniModuleAPI;->WriteTagEpcEx(II[BI[BS)I

    move-result p1

    .line 1466
    invoke-static {p1}, Lcom/uhf/api/cls/Reader$READER_ERR;->valueOf(I)Lcom/uhf/api/cls/Reader$READER_ERR;

    move-result-object p1

    .line 1467
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1468
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addGpiTriggerBoundaryListener(Lcom/uhf/api/cls/GpiTriggerBoundaryListener;)V
    .locals 1

    .line 3017
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGpiTriggerListener(Lcom/uhf/api/cls/GpiTriggerListener;)V
    .locals 1

    .line 3009
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReadExceptionListener(Lcom/uhf/api/cls/ReadExceptionListener;)V
    .locals 1

    .line 3001
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReadListener(Lcom/uhf/api/cls/ReadListener;)V
    .locals 1

    .line 2993
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGpiTriggerBoundaryListener(Lcom/uhf/api/cls/GpiTriggerBoundaryListener;)V
    .locals 1

    .line 3021
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriboundListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGpiTriggerListener(Lcom/uhf/api/cls/GpiTriggerListener;)V
    .locals 1

    .line 3013
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->gpitriListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeReadExceptionListener(Lcom/uhf/api/cls/ReadExceptionListener;)V
    .locals 1

    .line 3005
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readExceptionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeReadListener(Lcom/uhf/api/cls/ReadListener;)V
    .locals 1

    .line 2997
    iget-object v0, p0, Lcom/uhf/api/cls/Reader;->readListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
