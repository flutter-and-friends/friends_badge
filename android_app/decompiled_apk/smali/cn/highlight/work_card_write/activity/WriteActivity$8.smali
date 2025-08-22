.class Lcn/highlight/work_card_write/activity/WriteActivity$8;
.super Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;
.source "WriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/WriteActivity;->dataReSend(Ljava/util/concurrent/CopyOnWriteArrayList;)V
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

    .line 1167
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$8;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V
    .locals 0

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 0

    return-void
.end method
