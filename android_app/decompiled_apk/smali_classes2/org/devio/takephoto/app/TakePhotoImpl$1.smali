.class Lorg/devio/takephoto/app/TakePhotoImpl$1;
.super Ljava/lang/Object;
.source "TakePhotoImpl.java"

# interfaces
.implements Lorg/devio/takephoto/compress/CompressImage$CompressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

.field final synthetic val$message:[Ljava/lang/String;

.field final synthetic val$result:Lorg/devio/takephoto/model/TResult;


# direct methods
.method constructor <init>(Lorg/devio/takephoto/app/TakePhotoImpl;Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->val$result:Lorg/devio/takephoto/model/TResult;

    iput-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->val$message:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressFailed(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {v0}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$000(Lorg/devio/takephoto/app/TakePhotoImpl;)Lorg/devio/takephoto/compress/CompressConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/devio/takephoto/compress/CompressConfig;->isEnableReserveRaw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {v0, p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$100(Lorg/devio/takephoto/app/TakePhotoImpl;Ljava/util/ArrayList;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    .line 468
    invoke-static {v3}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$400(Lorg/devio/takephoto/app/TakePhotoImpl;)Lorg/devio/takephoto/model/TContextWrap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/devio/takephoto/R$string;->tip_compress_failed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->val$message:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    if-lez v6, :cond_1

    aget-object v5, v5, v7

    goto :goto_0

    :cond_1
    const-string v5, ""

    :goto_0
    aput-object v5, v4, v7

    aput-object p2, v4, v1

    const/4 p2, 0x2

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->val$result:Lorg/devio/takephoto/model/TResult;

    .line 469
    invoke-virtual {v1}, Lorg/devio/takephoto/model/TResult;->getImage()Lorg/devio/takephoto/model/TImage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/devio/takephoto/model/TImage;->getCompressPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p2

    .line 468
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v7

    .line 467
    invoke-static {v0, p1, v2}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$200(Lorg/devio/takephoto/app/TakePhotoImpl;Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$300(Lorg/devio/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$400(Lorg/devio/takephoto/app/TakePhotoImpl;)Lorg/devio/takephoto/model/TContextWrap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 471
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$300(Lorg/devio/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public onCompressSuccess(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {v0}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$000(Lorg/devio/takephoto/app/TakePhotoImpl;)Lorg/devio/takephoto/compress/CompressConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/devio/takephoto/compress/CompressConfig;->isEnableReserveRaw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {v0, p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$100(Lorg/devio/takephoto/app/TakePhotoImpl;Ljava/util/ArrayList;)V

    .line 456
    :cond_0
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->val$result:Lorg/devio/takephoto/model/TResult;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$200(Lorg/devio/takephoto/app/TakePhotoImpl;Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$300(Lorg/devio/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$400(Lorg/devio/takephoto/app/TakePhotoImpl;)Lorg/devio/takephoto/model/TContextWrap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 458
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl$1;->this$0:Lorg/devio/takephoto/app/TakePhotoImpl;

    invoke-static {p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->access$300(Lorg/devio/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
