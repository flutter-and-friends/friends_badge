.class Lcn/highlight/tx/ble/scan/BleScanPresenter$2;
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


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$2;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 161
    invoke-static {}, Lcn/highlight/tx/ble/scan/BleScanner;->getInstance()Lcn/highlight/tx/ble/scan/BleScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/tx/ble/scan/BleScanner;->stopLeScan()V

    return-void
.end method
