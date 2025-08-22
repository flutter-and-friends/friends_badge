.class final Lcn/manytag/rfidapi/ble/data/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/manytag/rfidapi/ble/data/BleDevice;
    .locals 1

    new-instance v0, Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-direct {v0, p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcn/manytag/rfidapi/ble/data/BleDevice;
    .locals 0

    new-array p1, p1, [Lcn/manytag/rfidapi/ble/data/BleDevice;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/manytag/rfidapi/ble/data/b;->a(Landroid/os/Parcel;)Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/manytag/rfidapi/ble/data/b;->a(I)[Lcn/manytag/rfidapi/ble/data/BleDevice;

    move-result-object p1

    return-object p1
.end method
