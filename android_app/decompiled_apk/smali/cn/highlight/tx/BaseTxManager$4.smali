.class Lcn/highlight/tx/BaseTxManager$4;
.super Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;
.source "BaseTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/BaseTxManager;->oPenNotify(Lcn/highlight/tx/ble/data/BleDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/BaseTxManager;


# direct methods
.method constructor <init>(Lcn/highlight/tx/BaseTxManager;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager$4;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleNotifyCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged([B)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager$4;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {v0, p1}, Lcn/highlight/tx/BaseTxManager;->access$100(Lcn/highlight/tx/BaseTxManager;[B)V

    return-void
.end method

.method public onNotifyFailure(Lcn/highlight/tx/ble/exception/BleException;)V
    .locals 0

    return-void
.end method

.method public onNotifySuccess()V
    .locals 0

    return-void
.end method
