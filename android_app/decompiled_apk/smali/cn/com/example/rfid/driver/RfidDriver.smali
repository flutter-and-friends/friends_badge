.class public Lcn/com/example/rfid/driver/RfidDriver;
.super Lcn/com/example/rfid/driver/Driver;
.source "RfidDriver.java"


# static fields
.field private static loadinglib:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "jni_rfid_driver"

    .line 13
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcn/com/example/rfid/driver/RfidDriver;->loadinglib:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcn/com/example/rfid/driver/Driver;-><init>()V

    return-void
.end method

.method private native CloseNet()I
.end method

.method private native CloseUart()I
.end method

.method private native DownLoad(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native GetAntStatus()Ljava/lang/String;
.end method

.method private native GetDataFromBuf()Ljava/lang/String;
.end method

.method private native GetLoss()I
.end method

.method private native GetRFIDAccessControlEAS()Ljava/lang/String;
.end method

.method private native GetRFIDAccessControlNumberOfPeople()Ljava/lang/String;
.end method

.method private native GetRFIDAccessControlTriggerPara()Ljava/lang/String;
.end method

.method private native GetRFIDAntenna()Ljava/lang/String;
.end method

.method private native GetRFIDCWStatus()Ljava/lang/String;
.end method

.method private native GetRFIDDualSingelStatus()I
.end method

.method private native GetRFIDEnvRssi()F
.end method

.method private native GetRFIDFastIDStatus()I
.end method

.method private native GetRFIDFreqTable()Ljava/lang/String;
.end method

.method private native GetRFIDGPIOStatus(I)I
.end method

.method private native GetRFIDGen2Para()Ljava/lang/String;
.end method

.method private native GetRFIDInventoryBankDataTogether()Ljava/lang/String;
.end method

.method private native GetRFIDLinkCombination()I
.end method

.method private native GetRFIDQuerWorkingMode()I
.end method

.method private native GetRFIDTagFocusStatus()I
.end method

.method private native GetRFIDWhiteList(I)Ljava/lang/String;
.end method

.method private native GetScanWorkWaitTime()Ljava/lang/String;
.end method

.method private native GetTemp()F
.end method

.method private native GetTempProt()I
.end method

.method private native GetUm7Fw()Ljava/lang/String;
.end method

.method private native GetUm7Hw()Ljava/lang/String;
.end method

.method private native GetUm7ModuleID()Ljava/lang/String;
.end method

.method private native GetUm7Region()Ljava/lang/String;
.end method

.method private native InventorySingle(I)Ljava/lang/String;
.end method

.method private native Kill(Ljava/lang/String;IIILjava/lang/String;)I
.end method

.method private native LockMemory(Ljava/lang/String;IIILjava/lang/String;II)I
.end method

.method private native NetInit(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native RFIDAuthenticate(Ljava/lang/String;IIILjava/lang/String;IIIIILjava/lang/String;)I
.end method

.method private native RFIDBlockEraseMemory(Ljava/lang/String;IIILjava/lang/String;III)I
.end method

.method private native RFIDBlockPerMalock(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;I)I
.end method

.method private native RFIDBlockWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I
.end method

.method private native RFIDGetQTPara(Ljava/lang/String;IIILjava/lang/String;)I
.end method

.method private native RFIDQTReadMemory(Ljava/lang/String;IIILjava/lang/String;IIII)Ljava/lang/String;
.end method

.method private native RFIDQTWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;)I
.end method

.method private native RFIDSetQTPara(Ljava/lang/String;IIILjava/lang/String;I)I
.end method

.method private native RFIDTransmissionCMD([BI)Ljava/lang/String;
.end method

.method private native RFIDUntraceable(Ljava/lang/String;IIILjava/lang/String;IIIIII)I
.end method

.method private native RFIDWriteEPCRFUUSRAndLock([BI)I
.end method

.method private native Read_Data(Ljava/lang/String;IIILjava/lang/String;III)Ljava/lang/String;
.end method

.method private native SetRFIDAccessControlEAS(III[B[BI)I
.end method

.method private native SetRFIDAccessControlNumberOfPeople(III)I
.end method

.method private native SetRFIDAccessControlTriggerPara(IIII)I
.end method

.method private native SetRFIDAntenna([III)I
.end method

.method private native SetRFIDBuzzerRing(I)I
.end method

.method private native SetRFIDCWStatus(I)I
.end method

.method private native SetRFIDCommunicationBaud(I)I
.end method

.method private native SetRFIDDualSingelStatus(II)I
.end method

.method private native SetRFIDFastIDStatus(I)I
.end method

.method private native SetRFIDFreqTable(II[I)I
.end method

.method private native SetRFIDGPIOStatus(III)I
.end method

.method private native SetRFIDGen2Para(I[I)I
.end method

.method private native SetRFIDInventoryBankDataTogether(IIII)I
.end method

.method private native SetRFIDInventoryFilter(IIILjava/lang/String;I)I
.end method

.method private native SetRFIDLinkCombination(II)I
.end method

.method private native SetRFIDNetPara([BI)Ljava/lang/String;
.end method

.method private native SetRFIDQuerWorkingMode(IZ)I
.end method

.method private native SetRFIDRestoreFactory()I
.end method

.method private native SetRFIDSoftReset()I
.end method

.method private native SetRFIDSubCommand([BI)Ljava/lang/String;
.end method

.method private native SetRFIDTagFocusStatus(I)I
.end method

.method private native SetRFIDWhiteList(II[B)I
.end method

.method private native SetRFIDWiFiPara([BI)Ljava/lang/String;
.end method

.method private native SetScanWorkWaitTime(IIZ)I
.end method

.method private native SetTempProt(I)I
.end method

.method private native SetUm7Region(I)I
.end method

.method private native StopContinueRead()V
.end method

.method private native Uartinit(Ljava/lang/String;I)I
.end method

.method private native Write_Data(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I
.end method

.method private native Write_Epc(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method private native getTxPower()Ljava/lang/String;
.end method

.method private native readmore(I)I
.end method

.method private native setRFIDTxPower(IIII)I
.end method

.method private native unLockMemory(Ljava/lang/String;IIILjava/lang/String;II)I
.end method


# virtual methods
.method public Authenticate(Ljava/lang/String;IIILjava/lang/String;IIIIILjava/lang/String;)I
    .locals 0

    .line 459
    invoke-direct/range {p0 .. p11}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDAuthenticate(Ljava/lang/String;IIILjava/lang/String;IIIIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public BlockEraseMemory(Ljava/lang/String;IIILjava/lang/String;III)I
    .locals 0

    .line 431
    invoke-direct/range {p0 .. p8}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDBlockEraseMemory(Ljava/lang/String;IIILjava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public BlockPerMalock(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;I)I
    .locals 0

    .line 451
    invoke-direct/range {p0 .. p11}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDBlockPerMalock(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public BlockWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I
    .locals 0

    .line 427
    invoke-direct/range {p0 .. p9}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDBlockWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Close_Com()I
    .locals 1

    .line 385
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->CloseUart()I

    move-result v0

    return v0
.end method

.method public Close_Net()I
    .locals 1

    .line 390
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->CloseNet()I

    move-result v0

    return v0
.end method

.method public Down_LoadFw(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 365
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->DownLoad(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public GetAccessControlEAS()Ljava/lang/String;
    .locals 1

    .line 512
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDAccessControlEAS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAccessControlNumberOfPeople()Ljava/lang/String;
    .locals 1

    .line 528
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDAccessControlNumberOfPeople()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAccessControlTriggerPara()Ljava/lang/String;
    .locals 1

    .line 520
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDAccessControlTriggerPara()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAntLoss()I
    .locals 1

    .line 313
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetLoss()I

    move-result v0

    return v0
.end method

.method public GetBufData()Ljava/lang/String;
    .locals 1

    .line 290
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetDataFromBuf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetCWStatus()Ljava/lang/String;
    .locals 1

    .line 252
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDCWStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetFastIDStatus()I
    .locals 1

    .line 355
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDFastIDStatus()I

    move-result v0

    return v0
.end method

.method public GetFreqTable()Ljava/lang/String;
    .locals 1

    .line 222
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDFreqTable()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetGPIOStatus(I)I
    .locals 0

    .line 342
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDGPIOStatus(I)I

    move-result p1

    return p1
.end method

.method public GetGen2Para()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDGen2Para()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLinkCombination()I
    .locals 1

    .line 349
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDLinkCombination()I

    move-result v0

    return v0
.end method

.method public GetModuleID()Ljava/lang/String;
    .locals 1

    .line 211
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetUm7ModuleID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetQTPara(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 0

    .line 439
    invoke-direct/range {p0 .. p5}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDGetQTPara(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public GetTagFocusStatus()I
    .locals 1

    .line 361
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDTagFocusStatus()I

    move-result v0

    return v0
.end method

.method public GetTxPower()Ljava/lang/String;
    .locals 1

    .line 216
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->getTxPower()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetWhiteList(I)Ljava/lang/String;
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDWhiteList(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Get_Ant()Ljava/lang/String;
    .locals 1

    .line 266
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDAntenna()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_AntStatus()Ljava/lang/String;
    .locals 1

    .line 318
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetAntStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_Temp()F
    .locals 1

    .line 324
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetTemp()F

    move-result v0

    return v0
.end method

.method public Get_TmpProt()I
    .locals 1

    .line 334
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetTempProt()I

    move-result v0

    return v0
.end method

.method public Inventory_Model_Get()I
    .locals 1

    .line 495
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDQuerWorkingMode()I

    move-result v0

    return v0
.end method

.method public Inventory_Model_Set(IZ)Z
    .locals 0

    .line 485
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDQuerWorkingMode(IZ)I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public Kill_Tag(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 0

    .line 423
    invoke-direct/range {p0 .. p5}, Lcn/com/example/rfid/driver/RfidDriver;->Kill(Ljava/lang/String;IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Lock_Tag_Data(Ljava/lang/String;IIILjava/lang/String;II)I
    .locals 0

    .line 405
    invoke-direct/range {p0 .. p7}, Lcn/com/example/rfid/driver/RfidDriver;->LockMemory(Ljava/lang/String;IIILjava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public Net_Init(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 308
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->NetInit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public QTReadMemory(Ljava/lang/String;IIILjava/lang/String;IIII)Ljava/lang/String;
    .locals 0

    .line 443
    invoke-direct/range {p0 .. p9}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDQTReadMemory(Ljava/lang/String;IIILjava/lang/String;IIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public QTWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;)I
    .locals 0

    .line 447
    invoke-direct/range {p0 .. p10}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDQTWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Read_Data_Tag(Ljava/lang/String;IIILjava/lang/String;III)Ljava/lang/String;
    .locals 0

    .line 419
    invoke-direct/range {p0 .. p8}, Lcn/com/example/rfid/driver/RfidDriver;->Read_Data(Ljava/lang/String;IIILjava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Read_Tag_Mode_Get()Ljava/lang/String;
    .locals 1

    .line 479
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDInventoryBankDataTogether()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Read_Tag_Mode_Set(IIII)Z
    .locals 0

    .line 469
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDInventoryBankDataTogether(IIII)I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public Reset()I
    .locals 1

    .line 375
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDSoftReset()I

    move-result v0

    return v0
.end method

.method public RestoreFactory()I
    .locals 1

    .line 380
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDRestoreFactory()I

    move-result v0

    return v0
.end method

.method public ScanWaitTime_Get()Ljava/lang/String;
    .locals 1

    .line 556
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetScanWorkWaitTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ScanWaitTime_Set(IIZ)Z
    .locals 0

    .line 548
    invoke-direct {p0, p1, p2, p3}, Lcn/com/example/rfid/driver/RfidDriver;->SetScanWorkWaitTime(IIZ)I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public SetAccessControlEAS(III[B[BI)I
    .locals 0

    .line 508
    invoke-direct/range {p0 .. p6}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDAccessControlEAS(III[B[BI)I

    move-result p1

    return p1
.end method

.method public SetAccessControlNumberOfPeople(III)I
    .locals 0

    .line 524
    invoke-direct {p0, p1, p2, p3}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDAccessControlNumberOfPeople(III)I

    move-result p1

    return p1
.end method

.method public SetAccessControlTriggerPara(IIII)I
    .locals 0

    .line 516
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDAccessControlTriggerPara(IIII)I

    move-result p1

    return p1
.end method

.method public SetCWStatus(I)I
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDCWStatus(I)I

    move-result p1

    return p1
.end method

.method public SetCommunicationBaud(I)I
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDCommunicationBaud(I)I

    move-result p1

    return p1
.end method

.method public SetFastIDStatus(I)I
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDFastIDStatus(I)I

    move-result p1

    return p1
.end method

.method public SetFreqTable(II[I)I
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDFreqTable(II[I)I

    move-result p1

    return p1
.end method

.method public SetGPIOStatus(III)I
    .locals 0

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDGPIOStatus(III)I

    move-result p1

    return p1
.end method

.method public SetGen2Para(I[I)I
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDGen2Para(I[I)I

    move-result p1

    return p1
.end method

.method public SetLinkCombination(II)I
    .locals 0

    .line 346
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDLinkCombination(II)I

    move-result p1

    return p1
.end method

.method public SetQTPara(Ljava/lang/String;IIILjava/lang/String;I)I
    .locals 0

    .line 435
    invoke-direct/range {p0 .. p6}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDSetQTPara(Ljava/lang/String;IIILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public SetRegion(I)I
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->SetUm7Region(I)I

    move-result p1

    return p1
.end method

.method public SetTagFocusStatus(I)I
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDTagFocusStatus(I)I

    move-result p1

    return p1
.end method

.method public SetTxPower(IIII)I
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/example/rfid/driver/RfidDriver;->setRFIDTxPower(IIII)I

    move-result p1

    return p1
.end method

.method public SetWhiteList(II[B)I
    .locals 0

    .line 500
    invoke-direct {p0, p1, p2, p3}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDWhiteList(II[B)I

    move-result p1

    return p1
.end method

.method public Set_Ant_More([III)I
    .locals 3

    const/16 v0, 0x64

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 259
    aget v2, p1, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDAntenna([III)I

    move-result p1

    return p1
.end method

.method public Set_Filter_Data(IIILjava/lang/String;I)I
    .locals 0

    .line 400
    invoke-direct/range {p0 .. p5}, Lcn/com/example/rfid/driver/RfidDriver;->SetRFIDInventoryFilter(IIILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public Set_TmpProt(I)I
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->SetTempProt(I)I

    move-result p1

    return p1
.end method

.method public SingleRead(I)Ljava/lang/String;
    .locals 5

    .line 532
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->InventorySingle(I)Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string p1, "\u83b7\u53d6\u5931\u8d25"

    return-object p1

    :cond_0
    const/4 v0, 0x4

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 539
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x10

    .line 540
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    div-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x4

    .line 541
    invoke-virtual {v2, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public TransmissionCMD([BI)Ljava/lang/String;
    .locals 0

    .line 561
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDTransmissionCMD([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Untraceable(Ljava/lang/String;IIILjava/lang/String;IIIIII)I
    .locals 0

    .line 455
    invoke-direct/range {p0 .. p11}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDUntraceable(Ljava/lang/String;IIILjava/lang/String;IIIIII)I

    move-result p1

    return p1
.end method

.method public WriteEPCRFUUSRAndLock([BI)I
    .locals 0

    .line 463
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->RFIDWriteEPCRFUUSRAndLock([BI)I

    move-result p1

    return p1
.end method

.method public Write_Data_Tag(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I
    .locals 0

    .line 415
    invoke-direct/range {p0 .. p9}, Lcn/com/example/rfid/driver/RfidDriver;->Write_Data(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public Write_Epc_Data(Ljava/lang/String;IILjava/lang/String;)I
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/com/example/rfid/driver/RfidDriver;->Write_Epc(Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 284
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetUm7Region()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRssiOnce()Ljava/lang/String;
    .locals 1

    .line 278
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetRFIDEnvRssi()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRFID(Ljava/lang/String;I)I
    .locals 1

    .line 189
    sget-boolean v0, Lcn/com/example/rfid/driver/RfidDriver;->loadinglib:Z

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 194
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/com/example/rfid/driver/RfidDriver;->Uartinit(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public readMore(I)I
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcn/com/example/rfid/driver/RfidDriver;->readmore(I)I

    move-result p1

    return p1
.end method

.method public readUM7fwOnce()Ljava/lang/String;
    .locals 1

    .line 207
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetUm7Fw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUM7hwOnce()Ljava/lang/String;
    .locals 1

    .line 202
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->GetUm7Hw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public stopRead()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcn/com/example/rfid/driver/RfidDriver;->StopContinueRead()V

    return-void
.end method

.method public unLock_Tag_Data(Ljava/lang/String;IIILjava/lang/String;II)I
    .locals 0

    .line 410
    invoke-direct/range {p0 .. p7}, Lcn/com/example/rfid/driver/RfidDriver;->unLockMemory(Ljava/lang/String;IIILjava/lang/String;II)I

    move-result p1

    return p1
.end method
