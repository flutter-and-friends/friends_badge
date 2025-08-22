.class Lcom/android/usbserial/client/AndroidUsbSerialClient$3;
.super Ljava/lang/Object;
.source "AndroidUsbSerialClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/usbserial/client/AndroidUsbSerialClient;->onConnectFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;


# direct methods
.method constructor <init>(Lcom/android/usbserial/client/AndroidUsbSerialClient;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$3;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$3;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object v0, v0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->deviceListener:Lcom/android/usbserial/client/OnUsbSerialDeviceListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/usbserial/client/AndroidUsbSerialClient$3;->this$0:Lcom/android/usbserial/client/AndroidUsbSerialClient;

    iget-object v0, v0, Lcom/android/usbserial/client/AndroidUsbSerialClient;->deviceListener:Lcom/android/usbserial/client/OnUsbSerialDeviceListener;

    invoke-interface {v0}, Lcom/android/usbserial/client/OnUsbSerialDeviceListener;->onDeviceConnectFailed()V

    :cond_0
    return-void
.end method
