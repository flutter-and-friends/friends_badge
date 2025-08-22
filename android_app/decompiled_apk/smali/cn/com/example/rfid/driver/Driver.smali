.class public abstract Lcn/com/example/rfid/driver/Driver;
.super Ljava/lang/Object;
.source "Driver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Authenticate(Ljava/lang/String;IIILjava/lang/String;IIIIILjava/lang/String;)I
.end method

.method public abstract BlockEraseMemory(Ljava/lang/String;IIILjava/lang/String;III)I
.end method

.method public abstract BlockPerMalock(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;I)I
.end method

.method public abstract BlockWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I
.end method

.method public abstract Close_Com()I
.end method

.method public abstract Close_Net()I
.end method

.method public abstract Down_LoadFw(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract GetAccessControlEAS()Ljava/lang/String;
.end method

.method public abstract GetAccessControlNumberOfPeople()Ljava/lang/String;
.end method

.method public abstract GetAccessControlTriggerPara()Ljava/lang/String;
.end method

.method public abstract GetAntLoss()I
.end method

.method public abstract GetBufData()Ljava/lang/String;
.end method

.method public abstract GetCWStatus()Ljava/lang/String;
.end method

.method public abstract GetFastIDStatus()I
.end method

.method public abstract GetFreqTable()Ljava/lang/String;
.end method

.method public abstract GetGPIOStatus(I)I
.end method

.method public abstract GetGen2Para()Ljava/lang/String;
.end method

.method public abstract GetLinkCombination()I
.end method

.method public abstract GetModuleID()Ljava/lang/String;
.end method

.method public abstract GetQTPara(Ljava/lang/String;IIILjava/lang/String;)I
.end method

.method public abstract GetTagFocusStatus()I
.end method

.method public abstract GetTxPower()Ljava/lang/String;
.end method

.method public abstract GetWhiteList(I)Ljava/lang/String;
.end method

.method public abstract Get_Ant()Ljava/lang/String;
.end method

.method public abstract Get_AntStatus()Ljava/lang/String;
.end method

.method public abstract Get_Temp()F
.end method

.method public abstract Get_TmpProt()I
.end method

.method public abstract Inventory_Model_Get()I
.end method

.method public abstract Inventory_Model_Set(IZ)Z
.end method

.method public abstract Kill_Tag(Ljava/lang/String;IIILjava/lang/String;)I
.end method

.method public abstract Lock_Tag_Data(Ljava/lang/String;IIILjava/lang/String;II)I
.end method

.method public abstract Net_Init(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract QTReadMemory(Ljava/lang/String;IIILjava/lang/String;IIII)Ljava/lang/String;
.end method

.method public abstract QTWriteMemory(Ljava/lang/String;IIILjava/lang/String;IIIILjava/lang/String;)I
.end method

.method public abstract Read_Data_Tag(Ljava/lang/String;IIILjava/lang/String;III)Ljava/lang/String;
.end method

.method public abstract Read_Tag_Mode_Get()Ljava/lang/String;
.end method

.method public abstract Read_Tag_Mode_Set(IIII)Z
.end method

.method public abstract Reset()I
.end method

.method public abstract RestoreFactory()I
.end method

.method public abstract ScanWaitTime_Get()Ljava/lang/String;
.end method

.method public abstract ScanWaitTime_Set(IIZ)Z
.end method

.method public abstract SetAccessControlEAS(III[B[BI)I
.end method

.method public abstract SetAccessControlNumberOfPeople(III)I
.end method

.method public abstract SetAccessControlTriggerPara(IIII)I
.end method

.method public abstract SetCWStatus(I)I
.end method

.method public abstract SetCommunicationBaud(I)I
.end method

.method public abstract SetFastIDStatus(I)I
.end method

.method public abstract SetFreqTable(II[I)I
.end method

.method public abstract SetGPIOStatus(III)I
.end method

.method public abstract SetGen2Para(I[I)I
.end method

.method public abstract SetLinkCombination(II)I
.end method

.method public abstract SetQTPara(Ljava/lang/String;IIILjava/lang/String;I)I
.end method

.method public abstract SetRegion(I)I
.end method

.method public abstract SetTagFocusStatus(I)I
.end method

.method public abstract SetTxPower(IIII)I
.end method

.method public abstract SetWhiteList(II[B)I
.end method

.method public abstract Set_Ant_More([III)I
.end method

.method public abstract Set_Filter_Data(IIILjava/lang/String;I)I
.end method

.method public abstract Set_TmpProt(I)I
.end method

.method public abstract SingleRead(I)Ljava/lang/String;
.end method

.method public abstract TransmissionCMD([BI)Ljava/lang/String;
.end method

.method public abstract Untraceable(Ljava/lang/String;IIILjava/lang/String;IIIIII)I
.end method

.method public abstract WriteEPCRFUUSRAndLock([BI)I
.end method

.method public abstract Write_Data_Tag(Ljava/lang/String;IIILjava/lang/String;IIILjava/lang/String;)I
.end method

.method public abstract Write_Epc_Data(Ljava/lang/String;IILjava/lang/String;)I
.end method

.method public abstract getRegion()Ljava/lang/String;
.end method

.method public abstract getRssiOnce()Ljava/lang/String;
.end method

.method public abstract initRFID(Ljava/lang/String;I)I
.end method

.method public abstract readMore(I)I
.end method

.method public abstract readUM7fwOnce()Ljava/lang/String;
.end method

.method public abstract readUM7hwOnce()Ljava/lang/String;
.end method

.method public abstract stopRead()V
.end method

.method public abstract unLock_Tag_Data(Ljava/lang/String;IIILjava/lang/String;II)I
.end method
