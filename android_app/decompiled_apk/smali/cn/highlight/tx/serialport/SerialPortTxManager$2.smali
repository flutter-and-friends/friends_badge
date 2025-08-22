.class Lcn/highlight/tx/serialport/SerialPortTxManager$2;
.super Lcn/highlight/tx/serialport/thread/SerialPortReadThread;
.source "SerialPortTxManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/serialport/SerialPortTxManager;->startReadThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;


# direct methods
.method constructor <init>(Lcn/highlight/tx/serialport/SerialPortTxManager;Ljava/io/InputStream;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$2;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-direct {p0, p2}, Lcn/highlight/tx/serialport/thread/SerialPortReadThread;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public onDataReceived([B)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$2;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-static {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->access$100(Lcn/highlight/tx/serialport/SerialPortTxManager;)Lcn/highlight/tx/listener/OnSerialPortDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/highlight/tx/serialport/SerialPortTxManager$2;->this$0:Lcn/highlight/tx/serialport/SerialPortTxManager;

    invoke-static {v0}, Lcn/highlight/tx/serialport/SerialPortTxManager;->access$100(Lcn/highlight/tx/serialport/SerialPortTxManager;)Lcn/highlight/tx/listener/OnSerialPortDataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/highlight/tx/listener/OnSerialPortDataListener;->onDataReceived([B)V

    :cond_0
    return-void
.end method
