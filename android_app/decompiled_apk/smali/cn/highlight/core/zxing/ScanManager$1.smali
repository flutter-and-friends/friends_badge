.class Lcn/highlight/core/zxing/ScanManager$1;
.super Ljava/lang/Object;
.source "ScanManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/core/zxing/ScanManager;->scanningImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/zxing/ScanManager;

.field final synthetic val$photo_path2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/highlight/core/zxing/ScanManager;Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcn/highlight/core/zxing/ScanManager$1;->this$0:Lcn/highlight/core/zxing/ScanManager;

    iput-object p2, p0, Lcn/highlight/core/zxing/ScanManager$1;->val$photo_path2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 300
    invoke-static {}, Lcn/highlight/core/zxing/decode/DecodeThread;->getHints()Ljava/util/Map;

    move-result-object v0

    .line 301
    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager$1;->val$photo_path2:Ljava/lang/String;

    const/16 v2, 0x258

    invoke-static {v1, v2, v2}, Lcn/highlight/core/zxing/utils/BitmapUtil;->decodeBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 306
    new-instance v2, Lcn/highlight/core/zxing/decode/RGBLuminanceSource;

    invoke-direct {v2, v1}, Lcn/highlight/core/zxing/decode/RGBLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v1, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 308
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    .line 309
    new-instance v2, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v2}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 311
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x1

    .line 312
    iput v4, v3, Landroid/os/Message;->what:I

    .line 313
    invoke-virtual {v2, v1, v0}, Lcom/google/zxing/MultiFormatReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcn/highlight/core/zxing/ScanManager$1;->this$0:Lcn/highlight/core/zxing/ScanManager;

    iget-object v0, v0, Lcn/highlight/core/zxing/ScanManager;->photoScanHandler:Lcn/highlight/core/zxing/decode/PhotoScanHandler;

    invoke-virtual {v0, v3}, Lcn/highlight/core/zxing/decode/PhotoScanHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 317
    iput v1, v0, Landroid/os/Message;->what:I

    .line 318
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u56fe\u7247\u6709\u8bef\uff0c\u6216\u8005\u56fe\u7247\u6a21\u7cca\uff01"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcn/highlight/core/zxing/ScanManager$1;->this$0:Lcn/highlight/core/zxing/ScanManager;

    iget-object v1, v1, Lcn/highlight/core/zxing/ScanManager;->photoScanHandler:Lcn/highlight/core/zxing/decode/PhotoScanHandler;

    invoke-virtual {v1, v0}, Lcn/highlight/core/zxing/decode/PhotoScanHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
