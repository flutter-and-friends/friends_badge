.class public final enum Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;
.super Ljava/lang/Enum;
.source "ProlificSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/usbserial/driver/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_01:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_HX:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field public static final enum DEVICE_TYPE_T:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    new-instance v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v1, 0x0

    const-string v2, "DEVICE_TYPE_01"

    invoke-direct {v0, v2, v1}, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    new-instance v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v2, 0x1

    const-string v3, "DEVICE_TYPE_T"

    invoke-direct {v0, v3, v2}, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    new-instance v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v3, 0x2

    const-string v4, "DEVICE_TYPE_HX"

    invoke-direct {v0, v4, v3}, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    new-instance v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v4, 0x3

    const-string v5, "DEVICE_TYPE_HXN"

    invoke-direct {v0, v5, v4}, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v5, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->$VALUES:[Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    .locals 1

    .line 38
    const-class v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->$VALUES:[Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {v0}, [Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    return-object v0
.end method
