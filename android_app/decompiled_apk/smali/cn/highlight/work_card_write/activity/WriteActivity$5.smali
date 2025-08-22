.class Lcn/highlight/work_card_write/activity/WriteActivity$5;
.super Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;
.source "WriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/WriteActivity;->sendImageDataBWR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

.field final synthetic val$c:[B

.field final synthetic val$errorList:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;Ljava/util/concurrent/CopyOnWriteArrayList;[B)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$5;->this$0:Lcn/highlight/work_card_write/activity/WriteActivity;

    iput-object p2, p0, Lcn/highlight/work_card_write/activity/WriteActivity$5;->val$errorList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcn/highlight/work_card_write/activity/WriteActivity$5;->val$c:[B

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V
    .locals 1

    const-string p1, "TAG"

    const-string v0, "sendImageDataBWR: false"

    .line 1043
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity$5;->val$errorList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity$5;->val$c:[B

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 0

    const-string p1, "TAG"

    const-string p2, "sendImageDataBWR: true"

    .line 1038
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
