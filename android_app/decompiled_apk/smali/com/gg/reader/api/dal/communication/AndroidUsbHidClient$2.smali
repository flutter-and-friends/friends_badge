.class Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;
.super Ljava/lang/Object;
.source "AndroidUsbHidClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->openDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;


# direct methods
.method constructor <init>(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->deviceListener:Lcom/gg/reader/api/dal/communication/OnUsbHidDeviceListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 199
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    new-instance v1, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;

    invoke-direct {v1}, Lcom/gg/reader/api/protocol/gx/MsgAppGetBaseVersion;-><init>()V

    invoke-virtual {v0, v1}, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->send(Lcom/gg/reader/api/protocol/gx/Message;)V

    .line 200
    iget-object v0, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    iget-object v0, v0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;->deviceListener:Lcom/gg/reader/api/dal/communication/OnUsbHidDeviceListener;

    iget-object v1, p0, Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient$2;->this$0:Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;

    invoke-interface {v0, v1}, Lcom/gg/reader/api/dal/communication/OnUsbHidDeviceListener;->onDeviceConnected(Lcom/gg/reader/api/dal/communication/AndroidUsbHidClient;)V

    :cond_0
    return-void
.end method
