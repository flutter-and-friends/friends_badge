.class Lcn/highlight/tx/serialport/SerialPortTxManager$1;
.super Landroid/os/Handler;
.source "SerialPortTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/serialport/SerialPortTxManager;->startSendThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;


# direct methods
.method constructor <init>(Lcn/highlight/tx/serialport/SerialPortTxManager;Landroid/os/Looper;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$1;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 151
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    .line 153
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$1;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-static {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->access$000(Lcn/highlight/tx/serialport/SerialPortTxManager;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$1;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-static {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->access$000(Lcn/highlight/tx/serialport/SerialPortTxManager;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 156
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$1;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-static {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->access$100(Lcn/highlight/tx/serialport/SerialPortTxManager;)Lcn/highlight/tx/listener/OnSerialPortDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$1;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-static {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->access$100(Lcn/highlight/tx/serialport/SerialPortTxManager;)Lcn/highlight/tx/listener/OnSerialPortDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/highlight/tx/listener/OnSerialPortDataListener;->onDataSent([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
