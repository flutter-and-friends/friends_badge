.class Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;
.super Ljava/lang/Object;
.source "RequestVersionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;->requestVersion(Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;

.field final synthetic val$builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->this$0:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    iput-object p3, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->getRequestVersionBuilder()Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestMethod()Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    move-result-object v2

    .line 49
    sget-object v3, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$2;->$SwitchMap$com$allenliu$versionchecklib$core$http$HttpRequestMethod:[I

    invoke-virtual {v2}, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->postJson(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->post(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->get(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 60
    :goto_0
    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestVersionListener()Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    move-result-object v0

    .line 61
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz v0, :cond_5

    .line 64
    :try_start_0
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 68
    :cond_3
    new-instance v1, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;

    invoke-direct {v1, p0, v0, v4}, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;-><init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 80
    :cond_4
    new-instance v2, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;-><init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;Lokhttp3/Response;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    new-instance v2, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;-><init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;Ljava/io/IOException;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    .line 101
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "using request version function,you must set a requestVersionListener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
