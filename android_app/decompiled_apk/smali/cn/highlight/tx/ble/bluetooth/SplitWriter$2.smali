.class Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;
.super Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;
.source "SplitWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/ble/bluetooth/SplitWriter;->write()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;


# direct methods
.method constructor <init>(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-direct {p0}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V
    .locals 4

    .line 107
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$300(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$300(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;

    move-result-object v0

    new-instance v1, Lcn/highlight/tx/ble/exception/OtherException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occur while writing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/highlight/tx/ble/exception/BleException;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcn/highlight/tx/ble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;->onWriteFailure(Lcn/highlight/tx/ble/exception/BleException;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$400(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$500(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$500(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {v1}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$600(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$100(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)I

    move-result p1

    iget-object p2, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p2}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$200(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result p2

    sub-int/2addr p1, p2

    .line 96
    iget-object p2, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p2}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$300(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 97
    iget-object p2, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p2}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$300(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;

    move-result-object p2

    iget-object v0, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {v0}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$100(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)I

    move-result v0

    invoke-virtual {p2, p1, v0, p3}, Lcn/highlight/tx/ble/callback/BleWriteCallbackHighlight;->onWriteSuccess(II[B)V

    .line 99
    :cond_0
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$400(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p1}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$500(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 101
    iget-object p2, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p2}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$500(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcn/highlight/tx/ble/bluetooth/SplitWriter$2;->this$0:Lcn/highlight/tx/ble/bluetooth/SplitWriter;

    invoke-static {p3}, Lcn/highlight/tx/ble/bluetooth/SplitWriter;->access$600(Lcn/highlight/tx/ble/bluetooth/SplitWriter;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
