.class Lcn/highlight/tx/ble/scan/BleScanPresenter$5;
.super Ljava/lang/Object;
.source "BleScanPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/scan/BleScanPresenter;->notifyScanStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/scan/BleScanPresenter;Z)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$5;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    iput-boolean p2, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$5;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$5;->this$0:Lcn/highlight/tx/ble/scan/BleScanPresenter;

    iget-boolean v1, p0, Lcn/highlight/tx/ble/scan/BleScanPresenter$5;->val$success:Z

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/scan/BleScanPresenter;->onScanStarted(Z)V

    return-void
.end method
