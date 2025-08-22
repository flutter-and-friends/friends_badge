.class public Lcn/highlight/core/zxing/decode/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final ALL_MODE:I = 0x300

.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"

.field public static final BARCODE_MODE:I = 0x100

.field public static final QRCODE_MODE:I = 0x200

.field static hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field handler:Landroid/os/Handler;

.field final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field final scanManager:Lcn/highlight/core/zxing/ScanManager;


# direct methods
.method public constructor <init>(Lcn/highlight/core/zxing/ScanManager;I)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 55
    iput-object p1, p0, Lcn/highlight/core/zxing/decode/DecodeThread;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    .line 56
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcn/highlight/core/zxing/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 58
    new-instance p1, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object p1, Lcn/highlight/core/zxing/decode/DecodeThread;->hints:Ljava/util/Map;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 62
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    const/16 v0, 0x100

    if-eq p2, v0, :cond_2

    const/16 v0, 0x200

    if-eq p2, v0, :cond_1

    const/16 v0, 0x300

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcn/highlight/core/zxing/decode/DecodeFormatManager;->getBarCodeFormats()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-static {}, Lcn/highlight/core/zxing/decode/DecodeFormatManager;->getQrCodeFormats()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcn/highlight/core/zxing/decode/DecodeFormatManager;->getQrCodeFormats()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcn/highlight/core/zxing/decode/DecodeFormatManager;->getBarCodeFormats()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 82
    :goto_0
    sget-object p2, Lcn/highlight/core/zxing/decode/DecodeThread;->hints:Ljava/util/Map;

    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getHints()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    sget-object v0, Lcn/highlight/core/zxing/decode/DecodeThread;->hints:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :catch_0
    iget-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 96
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 97
    new-instance v0, Lcn/highlight/core/zxing/decode/DecodeHandler;

    iget-object v1, p0, Lcn/highlight/core/zxing/decode/DecodeThread;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    sget-object v2, Lcn/highlight/core/zxing/decode/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcn/highlight/core/zxing/decode/DecodeHandler;-><init>(Lcn/highlight/core/zxing/ScanManager;Ljava/util/Map;)V

    iput-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeThread;->handler:Landroid/os/Handler;

    .line 98
    iget-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 99
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
