.class public final Lcom/android/usbserial/driver/UsbId;
.super Ljava/lang/Object;
.source "UsbId.java"


# static fields
.field public static final ARDUINO_LEONARDO:I = 0x8036

.field public static final ARDUINO_MEGA_2560:I = 0x10

.field public static final ARDUINO_MEGA_2560_R3:I = 0x42

.field public static final ARDUINO_MEGA_ADK:I = 0x3f

.field public static final ARDUINO_MEGA_ADK_R3:I = 0x44

.field public static final ARDUINO_MICRO:I = 0x8037

.field public static final ARDUINO_SERIAL_ADAPTER:I = 0x3b

.field public static final ARDUINO_SERIAL_ADAPTER_R3:I = 0x44

.field public static final ARDUINO_UNO:I = 0x1

.field public static final ARDUINO_UNO_R3:I = 0x43

.field public static final ARM_MBED:I = 0x204

.field public static final ATMEL_LUFA_CDC_DEMO_APP:I = 0x2044

.field public static final FTDI_FT2232H:I = 0x6010

.field public static final FTDI_FT231X:I = 0x6015

.field public static final FTDI_FT232H:I = 0x6014

.field public static final FTDI_FT232R:I = 0x6001

.field public static final FTDI_FT4232H:I = 0x6011

.field public static final LEAFLABS_MAPLE:I = 0x4

.field public static final PROLIFIC_PL2303:I = 0x2303

.field public static final PROLIFIC_PL2303GB:I = 0x23b3

.field public static final PROLIFIC_PL2303GC:I = 0x23a3

.field public static final PROLIFIC_PL2303GE:I = 0x23e3

.field public static final PROLIFIC_PL2303GL:I = 0x23e3

.field public static final PROLIFIC_PL2303GS:I = 0x23f3

.field public static final PROLIFIC_PL2303GT:I = 0x23cd

.field public static final PROLIFIC_PL23C3:I = 0x23c3

.field public static final QINHENG_CH340:I = 0x7523

.field public static final QINHENG_CH341A:I = 0x5523

.field public static final SILABS_CP2102:I = 0xea60

.field public static final SILABS_CP2105:I = 0xea70

.field public static final SILABS_CP2108:I = 0xea71

.field public static final ST_CDC:I = 0x5740

.field public static final VAN_OOIJEN_TECH_TEENSYDUINO_SERIAL:I = 0x483

.field public static final VENDOR_ARDUINO:I = 0x2341

.field public static final VENDOR_ARM:I = 0xd28

.field public static final VENDOR_ATMEL:I = 0x3eb

.field public static final VENDOR_FTDI:I = 0x403

.field public static final VENDOR_LEAFLABS:I = 0x1eaf

.field public static final VENDOR_PROLIFIC:I = 0x67b

.field public static final VENDOR_QINHENG:I = 0x1a86

.field public static final VENDOR_SILABS:I = 0x10c4

.field public static final VENDOR_ST:I = 0x483

.field public static final VENDOR_VAN_OOIJEN_TECH:I = 0x16c0


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Non-instantiable class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
