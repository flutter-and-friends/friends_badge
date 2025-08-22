.class final enum Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;
.super Ljava/lang/Enum;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/ble/bluetooth/BleBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LastState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

.field public static final enum CONNECT_CONNECTED:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

.field public static final enum CONNECT_CONNECTING:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

.field public static final enum CONNECT_DISCONNECT:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

.field public static final enum CONNECT_FAILURE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

.field public static final enum CONNECT_IDLE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 609
    new-instance v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    const/4 v1, 0x0

    const-string v2, "CONNECT_IDLE"

    invoke-direct {v0, v2, v1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_IDLE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 610
    new-instance v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    const/4 v2, 0x1

    const-string v3, "CONNECT_CONNECTING"

    invoke-direct {v0, v3, v2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTING:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 611
    new-instance v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    const/4 v3, 0x2

    const-string v4, "CONNECT_CONNECTED"

    invoke-direct {v0, v4, v3}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTED:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 612
    new-instance v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    const/4 v4, 0x3

    const-string v5, "CONNECT_FAILURE"

    invoke-direct {v0, v5, v4}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 613
    new-instance v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    const/4 v5, 0x4

    const-string v6, "CONNECT_DISCONNECT"

    invoke-direct {v0, v6, v5}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_DISCONNECT:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    .line 608
    sget-object v6, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_IDLE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    aput-object v6, v0, v1

    sget-object v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTING:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    aput-object v1, v0, v2

    sget-object v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_CONNECTED:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_FAILURE:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->CONNECT_DISCONNECT:Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    aput-object v1, v0, v5

    sput-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->$VALUES:[Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 608
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;
    .locals 1

    .line 608
    const-class v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    return-object p0
.end method

.method public static values()[Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;
    .locals 1

    .line 608
    sget-object v0, Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->$VALUES:[Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    invoke-virtual {v0}, [Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/highlight/tx/ble/bluetooth/BleBluetooth$LastState;

    return-object v0
.end method
