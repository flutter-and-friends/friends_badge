.class Lcom/allenliu/versionchecklib/core/AVersionService$1;
.super Ljava/lang/Object;
.source "AVersionService.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/core/AVersionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/core/AVersionService;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/core/AVersionService;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/core/AVersionService;->access$000(Lcom/allenliu/versionchecklib/core/AVersionService;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 90
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/allenliu/versionchecklib/core/AVersionService$1$1;

    invoke-direct {v0, p0, p1}, Lcom/allenliu/versionchecklib/core/AVersionService$1$1;-><init>(Lcom/allenliu/versionchecklib/core/AVersionService$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$1;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/core/AVersionService;->access$000(Lcom/allenliu/versionchecklib/core/AVersionService;)V

    :goto_0
    return-void
.end method
