.class public abstract Lcom/zhy/http/okhttp/request/OkHttpRequest;
.super Ljava/lang/Object;
.source "OkHttpRequest.java"


# instance fields
.field protected builder:Lokhttp3/Request$Builder;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected id:I

.field protected params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected tag:Ljava/lang/Object;

.field protected url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->builder:Lokhttp3/Request$Builder;

    .line 28
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->url:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->tag:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->params:Ljava/util/Map;

    .line 31
    iput-object p4, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    .line 32
    iput p5, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->id:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "url can not be null."

    .line 36
    invoke-static {p2, p1}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->initBuilder()V

    return-void
.end method

.method private initBuilder()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->builder:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 50
    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->appendHeaders()V

    return-void
.end method


# virtual methods
.method protected appendHeaders()V
    .locals 4

    .line 79
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    :cond_2
    :goto_1
    return-void
.end method

.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 1

    .line 64
    new-instance v0, Lcom/zhy/http/okhttp/request/RequestCall;

    invoke-direct {v0, p0}, Lcom/zhy/http/okhttp/request/RequestCall;-><init>(Lcom/zhy/http/okhttp/request/OkHttpRequest;)V

    return-object v0
.end method

.method protected abstract buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract buildRequestBody()Lokhttp3/RequestBody;
.end method

.method public generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->buildRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0, p1}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public getId()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->id:I

    return v0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;
    .locals 0

    return-object p1
.end method
