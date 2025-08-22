.class Lcn/highlight/tx/BaseTxManager$5;
.super Landroid/os/Handler;
.source "BaseTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/tx/BaseTxManager;
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

    .line 312
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager$5;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 315
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 316
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 317
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/tx/usb/UsbSerialPort;

    .line 318
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager$5;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {v0, p1}, Lcn/highlight/tx/BaseTxManager;->access$402(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/usb/UsbSerialPort;)Lcn/highlight/tx/usb/UsbSerialPort;

    .line 319
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager$5;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {v0}, Lcn/highlight/tx/BaseTxManager;->access$500(Lcn/highlight/tx/BaseTxManager;)Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcn/highlight/tx/BaseTxManager;->access$600(Lcn/highlight/tx/BaseTxManager;Lcn/highlight/tx/usb/UsbSerialPort;Landroid/hardware/usb/UsbManager;)V

    :cond_0
    return-void
.end method
