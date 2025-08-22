.class public Lcom/zhy/http/okhttp/request/OtherRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "OtherRequest.java"


# static fields
.field private static MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;


# instance fields
.field private content:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private requestBody:Lokhttp3/RequestBody;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/plain;charset=utf-8"

    .line 20
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/request/OtherRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/zhy/http/okhttp/request/OkHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    .line 29
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->requestBody:Lokhttp3/RequestBody;

    .line 30
    iput-object p3, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->method:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->method:Ljava/lang/String;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->method:Ljava/lang/String;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->delete()Lokhttp3/Request$Builder;

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->method:Ljava/lang/String;

    const-string v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->patch(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 71
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->requestBody:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->method:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestBody and content can not be null in method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->requestBody:Lokhttp3/RequestBody;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object v0, Lcom/zhy/http/okhttp/request/OtherRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->requestBody:Lokhttp3/RequestBody;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/OtherRequest;->requestBody:Lokhttp3/RequestBody;

    return-object v0
.end method
