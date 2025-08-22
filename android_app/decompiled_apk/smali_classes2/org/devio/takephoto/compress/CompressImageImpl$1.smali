.class Lorg/devio/takephoto/compress/CompressImageImpl$1;
.super Ljava/lang/Object;
.source "CompressImageImpl.java"

# interfaces
.implements Lorg/devio/takephoto/compress/CompressImageUtil$CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/devio/takephoto/compress/CompressImageImpl;->compress(Lorg/devio/takephoto/model/TImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/devio/takephoto/compress/CompressImageImpl;

.field final synthetic val$image:Lorg/devio/takephoto/model/TImage;


# direct methods
.method constructor <init>(Lorg/devio/takephoto/compress/CompressImageImpl;Lorg/devio/takephoto/model/TImage;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/devio/takephoto/compress/CompressImageImpl$1;->this$0:Lorg/devio/takephoto/compress/CompressImageImpl;

    iput-object p2, p0, Lorg/devio/takephoto/compress/CompressImageImpl$1;->val$image:Lorg/devio/takephoto/model/TImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lorg/devio/takephoto/compress/CompressImageImpl$1;->this$0:Lorg/devio/takephoto/compress/CompressImageImpl;

    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl$1;->val$image:Lorg/devio/takephoto/model/TImage;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1, v0, v2, v1}, Lorg/devio/takephoto/compress/CompressImageImpl;->access$000(Lorg/devio/takephoto/compress/CompressImageImpl;Lorg/devio/takephoto/model/TImage;Z[Ljava/lang/String;)V

    return-void
.end method

.method public onCompressSuccess(Ljava/lang/String;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl$1;->val$image:Lorg/devio/takephoto/model/TImage;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/TImage;->setCompressPath(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lorg/devio/takephoto/compress/CompressImageImpl$1;->this$0:Lorg/devio/takephoto/compress/CompressImageImpl;

    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressImageImpl$1;->val$image:Lorg/devio/takephoto/model/TImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v0, v2, v1}, Lorg/devio/takephoto/compress/CompressImageImpl;->access$000(Lorg/devio/takephoto/compress/CompressImageImpl;Lorg/devio/takephoto/model/TImage;Z[Ljava/lang/String;)V

    return-void
.end method
