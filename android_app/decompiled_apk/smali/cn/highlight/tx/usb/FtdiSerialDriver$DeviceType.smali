.class final enum Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;
.super Ljava/lang/Enum;
.source "FtdiSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/usb/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_2232C:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_2232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_4232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_AM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_BM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

.field public static final enum TYPE_R:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 102
    new-instance v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    const/4 v1, 0x0

    const-string v2, "TYPE_BM"

    invoke-direct {v0, v2, v1}, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_BM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    const/4 v2, 0x1

    const-string v3, "TYPE_AM"

    invoke-direct {v0, v3, v2}, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    const/4 v3, 0x2

    const-string v4, "TYPE_2232C"

    invoke-direct {v0, v4, v3}, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    const/4 v4, 0x3

    const-string v5, "TYPE_R"

    invoke-direct {v0, v5, v4}, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_R:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    const/4 v5, 0x4

    const-string v6, "TYPE_2232H"

    invoke-direct {v0, v6, v5}, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    new-instance v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    const/4 v6, 0x5

    const-string v7, "TYPE_4232H"

    invoke-direct {v0, v7, v6}, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    .line 101
    sget-object v7, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_BM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    aput-object v7, v0, v1

    sget-object v1, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_AM:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_2232C:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_R:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_2232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->TYPE_4232H:Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    aput-object v1, v0, v6

    sput-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->$VALUES:[Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;
    .locals 1

    .line 101
    const-class v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    return-object p0
.end method

.method public static values()[Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;
    .locals 1

    .line 101
    sget-object v0, Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->$VALUES:[Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    invoke-virtual {v0}, [Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/tx/usb/FtdiSerialDriver$DeviceType;

    return-object v0
.end method
