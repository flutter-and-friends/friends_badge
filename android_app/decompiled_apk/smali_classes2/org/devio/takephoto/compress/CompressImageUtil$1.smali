.class Lorg/devio/takephoto/compress/CompressImageUtil$1;
.super Ljava/lang/Object;
.source "CompressImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/devio/takephoto/compress/CompressImageUtil;->compressImageByQuality(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/devio/takephoto/compress/CompressImageUtil;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$imgPath:Ljava/lang/String;

.field final synthetic val$listener:Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;


# direct methods
.method constructor <init>(Lorg/devio/takephoto/compress/CompressImageUtil;Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->this$0:Lorg/devio/takephoto/compress/CompressImageUtil;

    iput-object p2, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$imgPath:Ljava/lang/String;

    iput-object p4, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$listener:Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->this$0:Lorg/devio/takephoto/compress/CompressImageUtil;

    invoke-static {v2}, Lorg/devio/takephoto/compress/CompressImageUtil;->access$000(Lorg/devio/takephoto/compress/CompressImageUtil;)Lorg/devio/takephoto/compress/CompressConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/devio/takephoto/compress/CompressConfig;->getMaxSize()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v3, v3, -0x5

    const/4 v1, 0x5

    if-gt v3, v1, :cond_1

    const/4 v3, 0x5

    .line 72
    :cond_1
    iget-object v2, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v4, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-ne v3, v1, :cond_0

    .line 81
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->this$0:Lorg/devio/takephoto/compress/CompressImageUtil;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$imgPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lorg/devio/takephoto/compress/CompressImageUtil;->access$100(Lorg/devio/takephoto/compress/CompressImageUtil;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 84
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 85
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 86
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->this$0:Lorg/devio/takephoto/compress/CompressImageUtil;

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$listener:Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;

    invoke-static {v0, v2, v1, v3, v4}, Lorg/devio/takephoto/compress/CompressImageUtil;->access$200(Lorg/devio/takephoto/compress/CompressImageUtil;ZLjava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->this$0:Lorg/devio/takephoto/compress/CompressImageUtil;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$imgPath:Ljava/lang/String;

    iget-object v4, p0, Lorg/devio/takephoto/compress/CompressImageUtil$1;->val$listener:Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;

    const-string v5, "\u8d28\u91cf\u538b\u7f29\u5931\u8d25"

    invoke-static {v1, v2, v3, v5, v4}, Lorg/devio/takephoto/compress/CompressImageUtil;->access$200(Lorg/devio/takephoto/compress/CompressImageUtil;ZLjava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
