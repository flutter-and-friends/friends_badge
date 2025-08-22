.class public Lcom/uhf/api/cls/JniModuleAPI;
.super Ljava/lang/Object;
.source "JniModuleAPI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ModuleAPIJni"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native FirmwareLoadFromSerialPort(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native GetDeviceVersion(Ljava/lang/String;[B)I
.end method

.method public static native GetSDKVersion()I
.end method

.method public static native RebootReader(Ljava/lang/String;)I
.end method


# virtual methods
.method public native AsyncGetNextTag_BaseType(I[B)I
.end method

.method public native AsyncGetTagCount(I[I)I
.end method

.method public native AsyncStartReading(I[III)I
.end method

.method public native AsyncStartReadingEx(I[III[B)I
.end method

.method public native AsyncStopReading(I)I
.end method

.method public native AsyncStopReadingEx(I)I
.end method

.method public native BlockErase(IIIII[BS)I
.end method

.method public native BlockPermaLock(IIIII[B[BS)I
.end method

.method public native CloseReader(I)V
.end method

.method public native CustomCmd_BaseType(III[B[B)I
.end method

.method public native DataTransportRecv(I[BII)I
.end method

.method public native DataTransportSend(I[BII)I
.end method

.method public native EraseDataOnReader(I)I
.end method

.method public native GetGPI(II[I)I
.end method

.method public native GetGPIEx_BaseType(I[B)I
.end method

.method public native GetHardwareDetails(ILjava/lang/Object;)I
.end method

.method public native GetHardwareDetails_BaseType(I[B)I
.end method

.method public native GetLastDetailError_BaseType(I[B)I
.end method

.method public native GetNextTag_BaseType(I[B)I
.end method

.method public native GetTagData(IICII[B[BS)I
.end method

.method public native Get_GPIEx(ILcom/uhf/api/cls/GpiInfo_ST;)I
.end method

.method public native InitReader([ILjava/lang/String;I)I
.end method

.method public native InitReader_Notype([ILjava/lang/String;I)I
.end method

.method public native KillTag(II[BS)I
.end method

.method public native Lock180006BTag(IIIIS)I
.end method

.method public native LockTag(IIBS[BS)I
.end method

.method public native ParamGet_BaseType(II[B)I
.end method

.method public native ParamSet_BaseType(II[B)I
.end method

.method public native PsamTransceiver(III[B[I[B[BS)I
.end method

.method public native ReadDataOnReader(II[BI)I
.end method

.method public native ReadTagLED(IISS[B[I)I
.end method

.method public native ReadTagTemperature(IICIIIIIS[B[B[I)I
.end method

.method public native ResetRfidModule(I)I
.end method

.method public native SaveDataOnReader(II[BI)I
.end method

.method public native SetGPO(III)I
.end method

.method public native TagInventory_BaseType(I[IIS[B[I)I
.end method

.method public native TagInventory_Raw(I[IIS[I)I
.end method

.method public native WriteTagData(IICI[BI[BS)I
.end method

.method public native WriteTagEpcEx(II[BI[BS)I
.end method
