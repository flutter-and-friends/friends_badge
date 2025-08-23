package cn.com.example.rfid.driver;

/* loaded from: classes.dex */
public class RfidDriver extends Driver {
    private static boolean loadinglib = false;

    private native int CloseNet();

    private native int CloseUart();

    private native int DownLoad(String str, String str2);

    private native String GetAntStatus();

    private native String GetDataFromBuf();

    private native int GetLoss();

    private native String GetRFIDAccessControlEAS();

    private native String GetRFIDAccessControlNumberOfPeople();

    private native String GetRFIDAccessControlTriggerPara();

    private native String GetRFIDAntenna();

    private native String GetRFIDCWStatus();

    private native int GetRFIDDualSingelStatus();

    private native float GetRFIDEnvRssi();

    private native int GetRFIDFastIDStatus();

    private native String GetRFIDFreqTable();

    private native int GetRFIDGPIOStatus(int i);

    private native String GetRFIDGen2Para();

    private native String GetRFIDInventoryBankDataTogether();

    private native int GetRFIDLinkCombination();

    private native int GetRFIDQuerWorkingMode();

    private native int GetRFIDTagFocusStatus();

    private native String GetRFIDWhiteList(int i);

    private native String GetScanWorkWaitTime();

    private native float GetTemp();

    private native int GetTempProt();

    private native String GetUm7Fw();

    private native String GetUm7Hw();

    private native String GetUm7ModuleID();

    private native String GetUm7Region();

    private native String InventorySingle(int i);

    private native int Kill(String str, int i, int i2, int i3, String str2);

    private native int LockMemory(String str, int i, int i2, int i3, String str2, int i4, int i5);

    private native String NetInit(String str, int i);

    private native int RFIDAuthenticate(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, int i8, String str3);

    private native int RFIDBlockEraseMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6);

    private native int RFIDBlockPerMalock(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, String str3, int i8);

    private native int RFIDBlockWriteMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, String str3);

    private native int RFIDGetQTPara(String str, int i, int i2, int i3, String str2);

    private native String RFIDQTReadMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7);

    private native int RFIDQTWriteMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, String str3);

    private native int RFIDSetQTPara(String str, int i, int i2, int i3, String str2, int i4);

    private native String RFIDTransmissionCMD(byte[] bArr, int i);

    private native int RFIDUntraceable(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, int i8, int i9);

    private native int RFIDWriteEPCRFUUSRAndLock(byte[] bArr, int i);

    private native String Read_Data(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6);

    private native int SetRFIDAccessControlEAS(int i, int i2, int i3, byte[] bArr, byte[] bArr2, int i4);

    private native int SetRFIDAccessControlNumberOfPeople(int i, int i2, int i3);

    private native int SetRFIDAccessControlTriggerPara(int i, int i2, int i3, int i4);

    private native int SetRFIDAntenna(int[] iArr, int i, int i2);

    private native int SetRFIDBuzzerRing(int i);

    private native int SetRFIDCWStatus(int i);

    private native int SetRFIDCommunicationBaud(int i);

    private native int SetRFIDDualSingelStatus(int i, int i2);

    private native int SetRFIDFastIDStatus(int i);

    private native int SetRFIDFreqTable(int i, int i2, int[] iArr);

    private native int SetRFIDGPIOStatus(int i, int i2, int i3);

    private native int SetRFIDGen2Para(int i, int[] iArr);

    private native int SetRFIDInventoryBankDataTogether(int i, int i2, int i3, int i4);

    private native int SetRFIDInventoryFilter(int i, int i2, int i3, String str, int i4);

    private native int SetRFIDLinkCombination(int i, int i2);

    private native String SetRFIDNetPara(byte[] bArr, int i);

    private native int SetRFIDQuerWorkingMode(int i, boolean z);

    private native int SetRFIDRestoreFactory();

    private native int SetRFIDSoftReset();

    private native String SetRFIDSubCommand(byte[] bArr, int i);

    private native int SetRFIDTagFocusStatus(int i);

    private native int SetRFIDWhiteList(int i, int i2, byte[] bArr);

    private native String SetRFIDWiFiPara(byte[] bArr, int i);

    private native int SetScanWorkWaitTime(int i, int i2, boolean z);

    private native int SetTempProt(int i);

    private native int SetUm7Region(int i);

    private native void StopContinueRead();

    private native int Uartinit(String str, int i);

    private native int Write_Data(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, String str3);

    private native int Write_Epc(String str, int i, int i2, String str2);

    private native String getTxPower();

    private native int readmore(int i);

    private native int setRFIDTxPower(int i, int i2, int i3, int i4);

    private native int unLockMemory(String str, int i, int i2, int i3, String str2, int i4, int i5);

    static {
        try {
            System.loadLibrary("jni_rfid_driver");
            loadinglib = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int initRFID(String str, int i) {
        if (loadinglib) {
            return Uartinit(str, i);
        }
        return -1;
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetTxPower(int i, int i2, int i3, int i4) {
        return setRFIDTxPower(i, i2, i3, i4);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String readUM7hwOnce() {
        return GetUm7Hw();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String readUM7fwOnce() {
        return GetUm7Fw();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetModuleID() {
        return GetUm7ModuleID();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetTxPower() {
        return getTxPower();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetFreqTable() {
        return GetRFIDFreqTable();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetFreqTable(int i, int i2, int[] iArr) {
        return SetRFIDFreqTable(i, i2, iArr);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetGen2Para() {
        return GetRFIDGen2Para();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetGen2Para(int i, int[] iArr) {
        return SetRFIDGen2Para(i, iArr);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetCWStatus(int i) {
        return SetRFIDCWStatus(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetCWStatus() {
        return GetRFIDCWStatus();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Set_Ant_More(int[] iArr, int i, int i2) {
        int[] iArr2 = new int[100];
        for (int i3 = 0; i3 < i; i3++) {
            iArr2[i3] = iArr[i3];
        }
        return SetRFIDAntenna(iArr2, i, i2);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String Get_Ant() {
        return GetRFIDAntenna();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int readMore(int i) {
        return readmore(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String getRssiOnce() {
        return Float.toString(GetRFIDEnvRssi());
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String getRegion() {
        return GetUm7Region();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetBufData() {
        return GetDataFromBuf();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public void stopRead() {
        StopContinueRead();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetRegion(int i) {
        return SetUm7Region(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String Net_Init(String str, int i) {
        return NetInit(str, i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int GetAntLoss() {
        return GetLoss();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String Get_AntStatus() {
        return GetAntStatus();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public float Get_Temp() {
        return GetTemp();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Set_TmpProt(int i) {
        return SetTempProt(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Get_TmpProt() {
        return GetTempProt();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetGPIOStatus(int i, int i2, int i3) {
        return SetRFIDGPIOStatus(i, i2, i3);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int GetGPIOStatus(int i) {
        return GetRFIDGPIOStatus(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetLinkCombination(int i, int i2) {
        return SetRFIDLinkCombination(i, i2);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int GetLinkCombination() {
        return GetRFIDLinkCombination();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetFastIDStatus(int i) {
        return SetRFIDFastIDStatus(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int GetFastIDStatus() {
        return GetRFIDFastIDStatus();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetTagFocusStatus(int i) {
        return SetRFIDTagFocusStatus(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int GetTagFocusStatus() {
        return GetRFIDTagFocusStatus();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Down_LoadFw(String str, String str2) {
        return DownLoad(str, str2);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetCommunicationBaud(int i) {
        return SetRFIDCommunicationBaud(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Reset() {
        return SetRFIDSoftReset();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int RestoreFactory() {
        return SetRFIDRestoreFactory();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Close_Com() {
        return CloseUart();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Close_Net() {
        return CloseNet();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Write_Epc_Data(String str, int i, int i2, String str2) {
        return Write_Epc(str, i, i2, str2);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Set_Filter_Data(int i, int i2, int i3, String str, int i4) {
        return SetRFIDInventoryFilter(i, i2, i3, str, i4);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Lock_Tag_Data(String str, int i, int i2, int i3, String str2, int i4, int i5) {
        return LockMemory(str, i, i2, i3, str2, i4, i5);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int unLock_Tag_Data(String str, int i, int i2, int i3, String str2, int i4, int i5) {
        return unLockMemory(str, i, i2, i3, str2, i4, i5);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Write_Data_Tag(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, String str3) {
        return Write_Data(str, i, i2, i3, str2, i4, i5, i6, str3);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String Read_Data_Tag(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6) {
        return Read_Data(str, i, i2, i3, str2, i4, i5, i6);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Kill_Tag(String str, int i, int i2, int i3, String str2) {
        return Kill(str, i, i2, i3, str2);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int BlockWriteMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, String str3) {
        return RFIDBlockWriteMemory(str, i, i2, i3, str2, i4, i5, i6, str3);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int BlockEraseMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6) {
        return RFIDBlockEraseMemory(str, i, i2, i3, str2, i4, i5, i6);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetQTPara(String str, int i, int i2, int i3, String str2, int i4) {
        return RFIDSetQTPara(str, i, i2, i3, str2, i4);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int GetQTPara(String str, int i, int i2, int i3, String str2) {
        return RFIDGetQTPara(str, i, i2, i3, str2);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String QTReadMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7) {
        return RFIDQTReadMemory(str, i, i2, i3, str2, i4, i5, i6, i7);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int QTWriteMemory(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, String str3) {
        return RFIDQTWriteMemory(str, i, i2, i3, str2, i4, i5, i6, i7, str3);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int BlockPerMalock(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, String str3, int i8) {
        return RFIDBlockPerMalock(str, i, i2, i3, str2, i4, i5, i6, i7, str3, i8);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Untraceable(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, int i8, int i9) {
        return RFIDUntraceable(str, i, i2, i3, str2, i4, i5, i6, i7, i8, i9);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Authenticate(String str, int i, int i2, int i3, String str2, int i4, int i5, int i6, int i7, int i8, String str3) {
        return RFIDAuthenticate(str, i, i2, i3, str2, i4, i5, i6, i7, i8, str3);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int WriteEPCRFUUSRAndLock(byte[] bArr, int i) {
        return RFIDWriteEPCRFUUSRAndLock(bArr, i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public boolean Read_Tag_Mode_Set(int i, int i2, int i3, int i4) {
        return 1 == SetRFIDInventoryBankDataTogether(i, i2, i3, i4);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String Read_Tag_Mode_Get() {
        return GetRFIDInventoryBankDataTogether();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public boolean Inventory_Model_Set(int i, boolean z) {
        return 1 == SetRFIDQuerWorkingMode(i, z);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int Inventory_Model_Get() {
        return GetRFIDQuerWorkingMode();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetWhiteList(int i, int i2, byte[] bArr) {
        return SetRFIDWhiteList(i, i2, bArr);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetWhiteList(int i) {
        return GetRFIDWhiteList(i);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetAccessControlEAS(int i, int i2, int i3, byte[] bArr, byte[] bArr2, int i4) {
        return SetRFIDAccessControlEAS(i, i2, i3, bArr, bArr2, i4);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetAccessControlEAS() {
        return GetRFIDAccessControlEAS();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetAccessControlTriggerPara(int i, int i2, int i3, int i4) {
        return SetRFIDAccessControlTriggerPara(i, i2, i3, i4);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetAccessControlTriggerPara() {
        return GetRFIDAccessControlTriggerPara();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public int SetAccessControlNumberOfPeople(int i, int i2, int i3) {
        return SetRFIDAccessControlNumberOfPeople(i, i2, i3);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String GetAccessControlNumberOfPeople() {
        return GetRFIDAccessControlNumberOfPeople();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String SingleRead(int i) {
        String strInventorySingle = InventorySingle(i);
        return strInventorySingle.length() < 8 ? "获取失败" : strInventorySingle.substring(4).substring(0, (Integer.parseInt(strInventorySingle.substring(0, 2), 16) / 8) * 4);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public boolean ScanWaitTime_Set(int i, int i2, boolean z) {
        return 1 == SetScanWorkWaitTime(i, i2, z);
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String ScanWaitTime_Get() {
        return GetScanWorkWaitTime();
    }

    @Override // cn.com.example.rfid.driver.Driver
    public String TransmissionCMD(byte[] bArr, int i) {
        return RFIDTransmissionCMD(bArr, i);
    }
}
