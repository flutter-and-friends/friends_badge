.class public final enum Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;
.super Ljava/lang/Enum;
.source "UsbSerialPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/UsbSerialPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlLine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum CD:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum CTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum DSR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum RI:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

.field public static final enum RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 61
    new-instance v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v1, 0x0

    const-string v2, "RTS"

    invoke-direct {v0, v2, v1}, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v2, 0x1

    const-string v3, "CTS"

    invoke-direct {v0, v3, v2}, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v3, 0x2

    const-string v4, "DTR"

    invoke-direct {v0, v4, v3}, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v4, 0x3

    const-string v5, "DSR"

    invoke-direct {v0, v5, v4}, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v5, 0x4

    const-string v6, "CD"

    invoke-direct {v0, v6, v5}, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    new-instance v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v6, 0x5

    const-string v7, "RI"

    invoke-direct {v0, v7, v6}, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    sget-object v7, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->$VALUES:[Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;
    .locals 1

    .line 61
    const-class v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    return-object p0
.end method

.method public static values()[Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->$VALUES:[Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v0}, [Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/usbserial/driver/UsbSerialPort$ControlLine;

    return-object v0
.end method
