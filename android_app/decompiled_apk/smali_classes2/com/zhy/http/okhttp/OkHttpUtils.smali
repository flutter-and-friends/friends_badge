.class public Lcom/zhy/http/okhttp/OkHttpUtils;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/OkHttpUtils$METHOD;
    }
.end annotation


# static fields
.field public static final DEFAULT_MILLISECONDS:J = 0x2710L

.field private static volatile mInstance:Lcom/zhy/http/okhttp/OkHttpUtils;


# instance fields
.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mPlatform:Lcom/zhy/http/okhttp/utils/Platform;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p1, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 40
    :goto_0
    invoke-static {}, Lcom/zhy/http/okhttp/utils/Platform;->get()Lcom/zhy/http/okhttp/utils/Platform;

    move-result-object p1

    iput-object p1, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mPlatform:Lcom/zhy/http/okhttp/utils/Platform;

    return-void
.end method

.method public static delete()Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;
    .locals 2

    .line 107
    new-instance v0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;

    const-string v1, "DELETE"

    invoke-direct {v0, v1}, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static get()Lcom/zhy/http/okhttp/builder/GetBuilder;
    .locals 1

    .line 77
    new-instance v0, Lcom/zhy/http/okhttp/builder/GetBuilder;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/builder/GetBuilder;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->initClient(Lokhttp3/OkHttpClient;)Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v0

    return-object v0
.end method

.method public static head()Lcom/zhy/http/okhttp/builder/HeadBuilder;
    .locals 1

    .line 102
    new-instance v0, Lcom/zhy/http/okhttp/builder/HeadBuilder;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/builder/HeadBuilder;-><init>()V

    return-object v0
.end method

.method public static initClient(Lokhttp3/OkHttpClient;)Lcom/zhy/http/okhttp/OkHttpUtils;
    .locals 2

    .line 46
    sget-object v0, Lcom/zhy/http/okhttp/OkHttpUtils;->mInstance:Lcom/zhy/http/okhttp/OkHttpUtils;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/zhy/http/okhttp/OkHttpUtils;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/zhy/http/okhttp/OkHttpUtils;->mInstance:Lcom/zhy/http/okhttp/OkHttpUtils;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/zhy/http/okhttp/OkHttpUtils;

    invoke-direct {v1, p0}, Lcom/zhy/http/okhttp/OkHttpUtils;-><init>(Lokhttp3/OkHttpClient;)V

    sput-object v1, Lcom/zhy/http/okhttp/OkHttpUtils;->mInstance:Lcom/zhy/http/okhttp/OkHttpUtils;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 56
    :cond_1
    :goto_0
    sget-object p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mInstance:Lcom/zhy/http/okhttp/OkHttpUtils;

    return-object p0
.end method

.method public static patch()Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;
    .locals 2

    .line 112
    new-instance v0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;

    const-string v1, "PATCH"

    invoke-direct {v0, v1}, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static post()Lcom/zhy/http/okhttp/builder/PostFormBuilder;
    .locals 1

    .line 92
    new-instance v0, Lcom/zhy/http/okhttp/builder/PostFormBuilder;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/builder/PostFormBuilder;-><init>()V

    return-object v0
.end method

.method public static postFile()Lcom/zhy/http/okhttp/builder/PostFileBuilder;
    .locals 1

    .line 87
    new-instance v0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/builder/PostFileBuilder;-><init>()V

    return-object v0
.end method

.method public static postString()Lcom/zhy/http/okhttp/builder/PostStringBuilder;
    .locals 1

    .line 82
    new-instance v0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/builder/PostStringBuilder;-><init>()V

    return-object v0
.end method

.method public static put()Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;
    .locals 2

    .line 97
    new-instance v0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;

    const-string v1, "PUT"

    invoke-direct {v0, v1}, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cancelTag(Ljava/lang/Object;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->queuedCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 196
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->runningCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Call;

    .line 203
    invoke-interface {v1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    invoke-interface {v1}, Lokhttp3/Call;->cancel()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public execute(Lcom/zhy/http/okhttp/request/RequestCall;Lcom/zhy/http/okhttp/callback/Callback;)V
    .locals 2

    if-nez p2, :cond_0

    .line 118
    sget-object p2, Lcom/zhy/http/okhttp/callback/Callback;->CALLBACK_DEFAULT:Lcom/zhy/http/okhttp/callback/Callback;

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/zhy/http/okhttp/request/RequestCall;->getOkHttpRequest()Lcom/zhy/http/okhttp/request/OkHttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->getId()I

    move-result v0

    .line 122
    invoke-virtual {p1}, Lcom/zhy/http/okhttp/request/RequestCall;->getCall()Lokhttp3/Call;

    move-result-object p1

    new-instance v1, Lcom/zhy/http/okhttp/OkHttpUtils$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/zhy/http/okhttp/OkHttpUtils$1;-><init>(Lcom/zhy/http/okhttp/OkHttpUtils;Lcom/zhy/http/okhttp/callback/Callback;I)V

    invoke-interface {p1, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public getDelivery()Ljava/util/concurrent/Executor;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mPlatform:Lcom/zhy/http/okhttp/utils/Platform;

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/utils/Platform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/zhy/http/okhttp/callback/Callback;I)V
    .locals 8

    if-nez p3, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mPlatform:Lcom/zhy/http/okhttp/utils/Platform;

    new-instance v7, Lcom/zhy/http/okhttp/OkHttpUtils$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zhy/http/okhttp/OkHttpUtils$2;-><init>(Lcom/zhy/http/okhttp/OkHttpUtils;Lcom/zhy/http/okhttp/callback/Callback;Lokhttp3/Call;Ljava/lang/Exception;I)V

    invoke-virtual {v0, v7}, Lcom/zhy/http/okhttp/utils/Platform;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSuccessResultCallback(Ljava/lang/Object;Lcom/zhy/http/okhttp/callback/Callback;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/OkHttpUtils;->mPlatform:Lcom/zhy/http/okhttp/utils/Platform;

    new-instance v1, Lcom/zhy/http/okhttp/OkHttpUtils$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/zhy/http/okhttp/OkHttpUtils$3;-><init>(Lcom/zhy/http/okhttp/OkHttpUtils;Lcom/zhy/http/okhttp/callback/Callback;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/zhy/http/okhttp/utils/Platform;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
