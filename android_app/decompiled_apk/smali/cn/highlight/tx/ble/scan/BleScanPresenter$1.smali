.class Lcn/highlight/tx/ble/scan/BleScanPresenter$1;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/scan/BleScanPresenter;->handleResult(Lcn/highlight/tx/ble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

.field final synthetic val$bleDevice:Lcn/highlight/tx/ble/data/BleDevice;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;Lcn/highlight/tx/ble/data/BleDevice;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    iput-object p2, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$1;->val$bleDevice:Lcn/highlight/tx/ble/data/BleDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$1;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    iget-object v1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$1;->val$bleDevice:Lcn/highlight/tx/ble/data/BleDevice;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->onLeScan(Lcn/highlight/tx/ble/data/BleDevice;)V

    return-void
.end method
