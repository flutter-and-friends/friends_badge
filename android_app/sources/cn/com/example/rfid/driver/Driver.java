package cn.com.example.rfid.driver;

/* loaded from: classes.dex */
public abstract class Driver {
    public abstract int Authenticate(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, int i8, String str3);

    public abstract int BlockEraseMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6);

    public abstract int BlockPerMalock(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, String str3, int i8);

    public abstract int BlockWriteMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, String str3);

    public abstract int Close_Com();

    public abstract int Close_Net();

    public abstract int Down_LoadFw(String str, String str2);

    public abstract String GetAccessControlEAS();

    public abstract String GetAccessControlNumberOfPeople();

    public abstract String GetAccessControlTriggerPara();

    public abstract int GetAntLoss();

    public abstract String GetBufData();

    public abstract String GetCWStatus();

    public abstract int GetFastIDStatus();

    public abstract String GetFreqTable();

    public abstract int GetGPIOStatus(int i);

    public abstract String GetGen2Para();

    public abstract int GetLinkCombination();

    public abstract String GetModuleID();

    public abstract int GetQTPara(String str, int i, int i2, int i3, String str2);

    public abstract int GetTagFocusStatus();

    public abstract String GetTxPower();

    public abstract String GetWhiteList(int i);

    public abstract String Get_Ant();

    public abstract String Get_AntStatus();

    public abstract float Get_Temp();

    public abstract int Get_TmpProt();

    public abstract int Inventory_Model_Get();

    public abstract boolean Inventory_Model_Set(int i, boolean z);

    public abstract int Kill_Tag(String str, int i, int i2, int i3, String str2);

    public abstract int Lock_Tag_Data(String str, int i, int i2, int i3, String str2, int i4, int i5);

    public abstract String Net_Init(String str, int i);

    public abstract String QTReadMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7);

    public abstract int QTWriteMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, String str3);

    public abstract String Read_Data_Tag(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6);

    public abstract String Read_Tag_Mode_Get();

    public abstract boolean Read_Tag_Mode_Set(int i, int i2, int i3, int i4);

    public abstract int Reset();

    public abstract int RestoreFactory();

    public abstract String ScanWaitTime_Get();

    public abstract boolean ScanWaitTime_Set(int i, int i2, boolean z);

    public abstract int SetAccessControlEAS(int i, int i2, int i3, byte[] bArr, byte[] bArr2, int i4);

    public abstract int SetAccessControlNumberOfPeople(int i, int i2, int i3);

    public abstract int SetAccessControlTriggerPara(int i, int i2, int i3, int i4);

    public abstract int SetCWStatus(int i);

    public abstract int SetCommunicationBaud(int i);

    public abstract int SetFastIDStatus(int i);

    public abstract int SetFreqTable(int i, int i2, int[] iArr);

    public abstract int SetGPIOStatus(int i, int i2, int i3);

    public abstract int SetGen2Para(int i, int[] iArr);

    public abstract int SetLinkCombination(int i, int i2);

    public abstract int SetQTPara(String str, int i, int i2, int i3, String str2, int i4);

    public abstract int SetRegion(int i);

    public abstract int SetTagFocusStatus(int i);

    public abstract int SetTxPower(int i, int i2, int i3, int i4);

    public abstract int SetWhiteList(int i, int i2, byte[] bArr);

    public abstract int Set_Ant_More(int[] iArr, int i, int i2);

    public abstract int Set_Filter_Data(int i, int i2, int i3, String str, int i4);

    public abstract int Set_TmpProt(int i);

    public abstract String SingleRead(int i);

    public abstract String TransmissionCMD(byte[] bArr, int i);

    public abstract int Untraceable(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, int i8, int i9);

    public abstract int WriteEPCRFUUSRAndLock(byte[] bArr, int i);

    public abstract int Write_Data_Tag(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, String str3);

    public abstract int Write_Epc_Data(String str, int i, int i2, String str2);

    public abstract String getRegion();

    public abstract String getRssiOnce();

    public abstract int initRFID(String str, int i);

    public abstract int readMore(int i);

    public abstract String readUM7fwOnce();

    public abstract String readUM7hwOnce();

    public abstract void stopRead();

    public abstract int unLock_Tag_Data(String str, int i, int i2, int i3, String str2, int i4, int i5);
}
