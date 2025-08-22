.class Lcn/highlight/tx/ble/scan/BleScanPresenter$6;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/scan/BleScanPresenter;->notifyScanStopped()V
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

    .line 226
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$6;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$6;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    invoke-static {v0}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->access$100(Lcn/highlight/tx/ble/scan/BleScanPresenter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->onScanFinished(Ljava/util/List;)V

    return-void
.end method
