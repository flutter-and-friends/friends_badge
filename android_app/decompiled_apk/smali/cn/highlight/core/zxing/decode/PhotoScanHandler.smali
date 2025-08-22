.class public Lcn/highlight/core/zxing/decode/PhotoScanHandler;
.super Landroid/os/Handler;
.source "PhotoScanHandler.java"


# static fields
.field public static final PHOTODECODEERROR:I = 0x0

.field public static final PHOTODECODEOK:I = 0x1


# instance fields
.field scanManager:Lcn/highlight/core/zxing/ScanManager;


# direct methods
.method public constructor <init>(Lcn/highlight/core/zxing/ScanManager;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/highlight/core/zxing/decode/PhotoScanHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcn/highlight/core/zxing/decode/PhotoScanHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/highlight/core/zxing/Result;

    invoke-virtual {v1, p1, v0}, Lcn/highlight/core/zxing/ScanManager;->handleDecode(Lcn/highlight/core/zxing/Result;Landroid/os/Bundle;)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcn/highlight/core/zxing/decode/PhotoScanHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Lcn/highlight/core/zxing/ScanManager;->handleDecodeError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
