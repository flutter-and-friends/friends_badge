.class Lcn/highlight/tx/BaseTxManager$1;
.super Ljava/lang/Object;
.source "BaseTxManager.java"

# interfaces
.implements Lcn/highlight/tx/listener/OnOpenSerialPortListener;


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

    .line 89
    iput-object p1, p0, Lcn/highlight/tx/BaseTxManager$1;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/io/File;Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;)V
    .locals 1

    .line 99
    sget-object p1, Lcn/highlight/tx/BaseTxManager$7;->$SwitchMap$cn$highlight$tx$listener$OnOpenSerialPortListener$Status:[I

    invoke-virtual {p2}, Lcn/highlight/tx/listener/OnOpenSerialPortListener$Status;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 107
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$1;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {p1}, Lcn/highlight/tx/BaseTxManager;->access$000(Lcn/highlight/tx/BaseTxManager;)Lcn/highlight/tx/listener/OnOpen;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$1;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {p1}, Lcn/highlight/tx/BaseTxManager;->access$000(Lcn/highlight/tx/BaseTxManager;)Lcn/highlight/tx/listener/OnOpen;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcn/highlight/tx/listener/OnOpen;->OnOpenStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$1;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {p1}, Lcn/highlight/tx/BaseTxManager;->access$000(Lcn/highlight/tx/BaseTxManager;)Lcn/highlight/tx/listener/OnOpen;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$1;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {p1}, Lcn/highlight/tx/BaseTxManager;->access$000(Lcn/highlight/tx/BaseTxManager;)Lcn/highlight/tx/listener/OnOpen;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u4e32\u53e3\u6ca1\u6709\u8bfb\u5199\u6743\u9650"

    invoke-interface {p1, p2, v0}, Lcn/highlight/tx/listener/OnOpen;->OnOpenStatus(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$1;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {p1}, Lcn/highlight/tx/BaseTxManager;->access$000(Lcn/highlight/tx/BaseTxManager;)Lcn/highlight/tx/listener/OnOpen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcn/highlight/tx/BaseTxManager$1;->this$0:Lcn/highlight/tx/BaseTxManager;

    invoke-static {p1}, Lcn/highlight/tx/BaseTxManager;->access$000(Lcn/highlight/tx/BaseTxManager;)Lcn/highlight/tx/listener/OnOpen;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcn/highlight/tx/listener/OnOpen;->OnOpenStatus(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
