.class Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort$1;
.super Ljava/lang/Object;
.source "ProlificSerialDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->getStatus()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;


# direct methods
.method constructor <init>(Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort$1;->this$1:Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort$1;->this$1:Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;

    invoke-static {v0}, Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;->access$100(Lcn/highlight/tx/usb/ProlificSerialDriver$ProlificSerialPort;)V

    return-void
.end method
