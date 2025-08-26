package com.uhf.api.cls;

/* loaded from: classes.dex */
public class JniModuleAPI {
    public static native int FirmwareLoadFromSerialPort(String str, String str2);

    public static native int GetDeviceVersion(String str, byte[] bArr);

    public static native int GetSDKVersion();

    public static native int RebootReader(String str);

    public native int AsyncGetNextTag_BaseType(int i, byte[] bArr);

    public native int AsyncGetTagCount(int i, int[] iArr);

    public native int AsyncStartReading(int i, int[] iArr, int i2, int i3);

    public native int AsyncStartReadingEx(int i, int[] iArr, int i2, int i3, byte[] bArr);

    public native int AsyncStopReading(int i);

    public native int AsyncStopReadingEx(int i);

    public native int BlockErase(int i, int i2, int i3, int i4, int i5, byte[] bArr, short s);

    public native int BlockPermaLock(int i, int i2, int i3, int i4, int i5, byte[] bArr, byte[] bArr2, short s);

    public native void CloseReader(int i);

    public native int CustomCmd_BaseType(int i, int i2, int i3, byte[] bArr, byte[] bArr2);

    public native int DataTransportRecv(int i, byte[] bArr, int i2, int i3);

    public native int DataTransportSend(int i, byte[] bArr, int i2, int i3);

    public native int EraseDataOnReader(int i);

    public native int GetGPI(int i, int i2, int[] iArr);

    public native int GetGPIEx_BaseType(int i, byte[] bArr);

    public native int GetHardwareDetails(int i, Object obj);

    public native int GetHardwareDetails_BaseType(int i, byte[] bArr);

    public native int GetLastDetailError_BaseType(int i, byte[] bArr);

    public native int GetNextTag_BaseType(int i, byte[] bArr);

    public native int GetTagData(int i, int i2, char c, int i3, int i4, byte[] bArr, byte[] bArr2, short s);

    public native int Get_GPIEx(int i, GpiInfo_ST gpiInfo_ST);

    public native int InitReader(int[] iArr, String str, int i);

    public native int InitReader_Notype(int[] iArr, String str, int i);

    public native int KillTag(int i, int i2, byte[] bArr, short s);

    public native int Lock180006BTag(int i, int i2, int i3, int i4, short s);

    public native int LockTag(int i, int i2, byte b, short s, byte[] bArr, short s2);

    public native int ParamGet_BaseType(int i, int i2, byte[] bArr);

    public native int ParamSet_BaseType(int i, int i2, byte[] bArr);

    public native int PsamTransceiver(int i, int i2, int i3, byte[] bArr, int[] iArr, byte[] bArr2, byte[] bArr3, short s);

    public native int ReadDataOnReader(int i, int i2, byte[] bArr, int i3);

    public native int ReadTagLED(int i, int i2, short s, short s2, byte[] bArr, int[] iArr);

    public native int ReadTagTemperature(int i, int i2, char c, int i3, int i4, int i5, int i6, int i7, short s, byte[] bArr, byte[] bArr2, int[] iArr);

    public native int ResetRfidModule(int i);

    public native int SaveDataOnReader(int i, int i2, byte[] bArr, int i3);

    public native int SetGPO(int i, int i2, int i3);

    public native int TagInventory_BaseType(int i, int[] iArr, int i2, short s, byte[] bArr, int[] iArr2);

    public native int TagInventory_Raw(int i, int[] iArr, int i2, short s, int[] iArr2);

    public native int WriteTagData(int i, int i2, char c, int i3, byte[] bArr, int i4, byte[] bArr2, short s);

    public native int WriteTagEpcEx(int i, int i2, byte[] bArr, int i3, byte[] bArr2, short s);

    static {
        System.loadLibrary("ModuleAPIJni");
    }
}
