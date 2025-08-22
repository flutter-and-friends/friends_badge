.class public Lcn/pda/serialport/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SerialPort"

.field public static TNCOM_EVENPARITY:I = 0x0

.field public static TNCOM_ODDPARITY:I = 0x1


# instance fields
.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field test:[B

.field private trig_on:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "devapi"

    .line 155
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "irdaSerialPort"

    .line 156
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcn/pda/serialport/SerialPort;->trig_on:Z

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 47
    iput-boolean p3, p0, Lcn/pda/serialport/SerialPort;->trig_on:Z

    .line 55
    invoke-static {p1, p2}, Lcn/pda/serialport/SerialPort;->open(II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcn/pda/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    .line 57
    iget-object p1, p0, Lcn/pda/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_0

    .line 63
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Lcn/pda/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    .line 64
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcn/pda/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcn/pda/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-void

    :cond_0
    const-string p1, "SerialPort"

    const-string p2, "native open returns null"

    .line 58
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method private static native open(II)Ljava/io/FileDescriptor;
.end method

.method private static native open(III)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public native close(I)V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/pda/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/pda/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public native irdapoweroff()V
.end method

.method public native irdapoweron()V
.end method

.method public native power3v3off()V
.end method

.method public native power3v3on()V
.end method

.method public power_3v3off()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->power3v3off()V

    return-void
.end method

.method public power_3v3on()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->power3v3on()V

    return-void
.end method

.method public power_5Voff()V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->zigbeepoweroff()V

    return-void
.end method

.method public power_5Von()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->zigbeepoweron()V

    return-void
.end method

.method public psam_poweroff()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->psampoweroff()V

    return-void
.end method

.method public psam_poweron()V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->psampoweron()V

    return-void
.end method

.method public native psampoweroff()V
.end method

.method public native psampoweron()V
.end method

.method public native rfidPoweroff()V
.end method

.method public native rfidPoweron()V
.end method

.method public rfid_poweroff()V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->rfidPoweroff()V

    return-void
.end method

.method public rfid_poweron()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->rfidPoweron()V

    return-void
.end method

.method public scaner_poweroff()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->scanerpoweroff()V

    return-void
.end method

.method public scaner_poweron()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->scanerpoweron()V

    .line 103
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->scaner_trigoff()V

    return-void
.end method

.method public scaner_trig_stat()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcn/pda/serialport/SerialPort;->trig_on:Z

    return v0
.end method

.method public scaner_trigoff()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->scanertrigeroff()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcn/pda/serialport/SerialPort;->trig_on:Z

    return-void
.end method

.method public scaner_trigon()V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcn/pda/serialport/SerialPort;->scanertrigeron()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcn/pda/serialport/SerialPort;->trig_on:Z

    return-void
.end method

.method public native scanerpoweroff()V
.end method

.method public native scanerpoweron()V
.end method

.method public native scanertrigeroff()V
.end method

.method public native scanertrigeron()V
.end method

.method public native setGPIOhigh(I)V
.end method

.method public native setGPIOlow(I)V
.end method

.method public native test([B)V
.end method

.method public native usbOTGpowerOff()V
.end method

.method public native usbOTGpowerOn()V
.end method

.method public native zigbeepoweroff()V
.end method

.method public native zigbeepoweron()V
.end method
