.class public abstract Lcn/manytag/rfidapi/ble/callback/BleScanCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 0

    return-void
.end method

.method public abstract onScanFinished(Ljava/util/List;)V
.end method
