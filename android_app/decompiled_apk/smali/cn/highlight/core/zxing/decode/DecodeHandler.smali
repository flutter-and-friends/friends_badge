.class public Lcn/highlight/core/zxing/decode/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field running:Z

.field final scanManager:Lcn/highlight/core/zxing/ScanManager;


# direct methods
.method public constructor <init>(Lcn/highlight/core/zxing/ScanManager;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/highlight/core/zxing/ScanManager;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->running:Z

    .line 49
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 50
    iget-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 51
    iput-object p1, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    return-void
.end method

.method static bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 6

    .line 127
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v3

    .line 129
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 130
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    move v2, v3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "barcode_bitmap"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 10

    .line 149
    iget-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    invoke-virtual {v0}, Lcn/highlight/core/zxing/ScanManager;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 154
    :cond_0
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method decode([BII)V
    .locals 5

    .line 80
    iget-object p2, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    invoke-virtual {p2}, Lcn/highlight/core/zxing/ScanManager;->getCameraManager()Lcn/highlight/core/zxing/camera/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lcn/highlight/core/zxing/camera/CameraManager;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 83
    array-length p3, p1

    new-array p3, p3, [B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    :goto_0
    iget v2, p2, Landroid/hardware/Camera$Size;->height:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 85
    :goto_1
    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    if-ge v2, v3, :cond_0

    .line 86
    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v3, v2

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    mul-int v4, v4, v1

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    aput-byte v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget p1, p2, Landroid/hardware/Camera$Size;->width:I

    .line 91
    iget v0, p2, Landroid/hardware/Camera$Size;->height:I

    iput v0, p2, Landroid/hardware/Camera$Size;->width:I

    .line 92
    iput p1, p2, Landroid/hardware/Camera$Size;->height:I

    const/4 p1, 0x0

    .line 95
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p0, p3, v0, p2}, Lcn/highlight/core/zxing/decode/DecodeHandler;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 97
    new-instance p3, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p3, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p3}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :catch_0
    iget-object p3, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 104
    throw p1

    .line 107
    :cond_2
    :goto_2
    iget-object p3, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->scanManager:Lcn/highlight/core/zxing/ScanManager;

    invoke-virtual {p3}, Lcn/highlight/core/zxing/ScanManager;->getHandler()Landroid/os/Handler;

    move-result-object p3

    if-eqz p1, :cond_3

    if-eqz p3, :cond_4

    .line 111
    sget v0, Lcn/highlight/core/R$id;->decode_succeeded:I

    invoke-static {p3, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 112
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 113
    invoke-static {p2, p3}, Lcn/highlight/core/zxing/decode/DecodeHandler;->bundleThumbnail(Lcom/google/zxing/PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_3
    if-eqz p3, :cond_4

    .line 119
    sget p1, Lcn/highlight/core/R$id;->decode_failed:I

    invoke-static {p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_3
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcn/highlight/core/R$id;->decode:I

    if-ne v0, v1, :cond_1

    .line 60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcn/highlight/core/zxing/decode/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 61
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    sget v0, Lcn/highlight/core/R$id;->quit:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcn/highlight/core/zxing/decode/DecodeHandler;->running:Z

    .line 63
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_2
    :goto_0
    return-void
.end method
