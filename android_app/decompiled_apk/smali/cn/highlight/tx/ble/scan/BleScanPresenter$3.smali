.class Lcn/highlight/tx/ble/scan/BleScanPresenter$3;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/scan/BleScanPresenter;->correctDeviceAndNextStep(Lcn/highlight/tx/ble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

.field final synthetic val$bleDevice:Lcn/highlight/tx/ble/data/BleDevice;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;Ljava/lang/String;Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    iput-object p2, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;->val$bleDevice:Lcn/highlight/tx/ble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;->val$name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    iget-object v1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$3;->val$bleDevice:Lcn/highlight/tx/ble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->onScanning(Lcn/highlight/tx/ble/data/BleDevice;)V

    :cond_0
    return-void
.end method
