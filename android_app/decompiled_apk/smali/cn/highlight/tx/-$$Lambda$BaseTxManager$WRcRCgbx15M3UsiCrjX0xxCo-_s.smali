.class public final synthetic Lcn/highlight/tx/-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcn/highlight/tx/BaseTxManager;

.field private final synthetic f$1:Landroid/hardware/usb/UsbManager;


# direct methods
.method public synthetic constructor <init>(Lcn/highlight/tx/BaseTxManager;Landroid/hardware/usb/UsbManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s;->f$0:Lcn/highlight/tx/BaseTxManager;

    iput-object p2, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s;->f$1:Landroid/hardware/usb/UsbManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s;->f$0:Lcn/highlight/tx/BaseTxManager;

    iget-object v1, p0, Lcn/highlight/tx/-$$Lambda$BaseTxManager$WRcRCgbx15M3UsiCrjX0xxCo-_s;->f$1:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Lcn/highlight/tx/BaseTxManager;->lambda$initUSBserialPort$0$BaseTxManager(Landroid/hardware/usb/UsbManager;)V

    return-void
.end method
