.class Lcn/highlight/tx/BaseTxManager$2;
.super Ljava/lang/Object;
.source "BaseTxManager.java"

# interfaces
.implements Lcn/highlight/tx/listener/OnSerialPortDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/BaseTxManager;->init232SerialPort(Ljava/io/File;I)Lcn/highlight/tx/serialport/SerialPortTxManager;
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

    .line 114
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager$2;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived([B)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcn/highlight/tx/BaseTxManager$2;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {v0, p1}, Lcn/highlight/tx/BaseTxManager;->access$100(Lcn/highlight/tx/BaseTxManager;[B)V

    return-void
.end method

.method public onDataSent([B)V
    .locals 0

    return-void
.end method
