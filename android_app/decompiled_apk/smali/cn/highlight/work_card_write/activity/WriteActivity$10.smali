.class Lcn/highlight/work_card_write/activity/WriteActivity$10;
.super Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;
.source "WriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/WriteActivity;->sendEndData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/WriteActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$10;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onWriteFailure$0$WriteActivity$10()V
    .locals 1

    .line 1227
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$10;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->access$1500(Lcn/highlight/work_card_write/activity/WriteActivity;)V

    return-void
.end method

.method public onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V
    .locals 1

    const-string p1, "TAG"

    const-string v0, "sendEndData: false"

    .line 1226
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$10;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$10$TaWJrQvZR187_rmWx4uv6FXSyKE;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$WriteActivity$10$TaWJrQvZR187_rmWx4uv6FXSyKE;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity$10;)V

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 0

    const-string p1, "TAG"

    const-string p2, "sendEndData: true"

    .line 1221
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
