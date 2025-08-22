.class Lorg/devio/takephoto/compress/CompressWithLuBan$1;
.super Ljava/lang/Object;
.source "CompressWithLuBan.java"

# interfaces
.implements Lme/shaohui/advancedluban/OnCompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/devio/takephoto/compress/CompressWithLuBan;->compressOne()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/devio/takephoto/compress/CompressWithLuBan;


# direct methods
.method constructor <init>(Lorg/devio/takephoto/compress/CompressWithLuBan;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan$1;->this$0:Lorg/devio/takephoto/compress/CompressWithLuBan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 81
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan$1;->this$0:Lorg/devio/takephoto/compress/CompressWithLuBan;

    invoke-static {v0}, Lorg/devio/takephoto/compress/CompressWithLuBan;->access$100(Lorg/devio/takephoto/compress/CompressWithLuBan;)Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan$1;->this$0:Lorg/devio/takephoto/compress/CompressWithLuBan;

    invoke-static {v1}, Lorg/devio/takephoto/compress/CompressWithLuBan;->access$000(Lorg/devio/takephoto/compress/CompressWithLuBan;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is compress failures"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan$1;->this$0:Lorg/devio/takephoto/compress/CompressWithLuBan;

    invoke-static {v0}, Lorg/devio/takephoto/compress/CompressWithLuBan;->access$000(Lorg/devio/takephoto/compress/CompressWithLuBan;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/model/TImage;

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/TImage;->setCompressPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {v0, p1}, Lorg/devio/takephoto/model/TImage;->setCompressed(Z)V

    .line 76
    iget-object p1, p0, Lorg/devio/takephoto/compress/CompressWithLuBan$1;->this$0:Lorg/devio/takephoto/compress/CompressWithLuBan;

    invoke-static {p1}, Lorg/devio/takephoto/compress/CompressWithLuBan;->access$100(Lorg/devio/takephoto/compress/CompressWithLuBan;)Lorg/devio/takephoto/compress/CompressImage$CompressListener;

    move-result-object p1

    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressWithLuBan$1;->this$0:Lorg/devio/takephoto/compress/CompressWithLuBan;

    invoke-static {v0}, Lorg/devio/takephoto/compress/CompressWithLuBan;->access$000(Lorg/devio/takephoto/compress/CompressWithLuBan;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/devio/takephoto/compress/CompressImage$CompressListener;->onCompressSuccess(Ljava/util/ArrayList;)V

    return-void
.end method
