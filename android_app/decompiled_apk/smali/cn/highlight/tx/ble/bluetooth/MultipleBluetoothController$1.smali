.class Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController$1;
.super Ljava/lang/Object;
.source "MultipleBluetoothController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;->getBleBluetoothList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcn/highlight/tx/ble/bluetooth/BleBluetooth;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController$1;->this$0:Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)I
    .locals 0

    .line 110
    invoke-virtual {p1}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;->getDeviceKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 107
    check-cast p1, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    check-cast p2, Lcn/highlight/tx/ble/bluetooth/BleBluetooth;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/tx/ble/bluetooth/MultipleBluetoothController$1;->compare(Lcn/highlight/tx/ble/bluetooth/BleBluetooth;Lcn/highlight/tx/ble/bluetooth/BleBluetooth;)I

    move-result p1

    return p1
.end method
