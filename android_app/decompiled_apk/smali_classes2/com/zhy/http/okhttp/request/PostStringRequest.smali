.class public Lcom/zhy/http/okhttp/request/PostStringRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "PostStringRequest.java"


# static fields
.field private static MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;


# instance fields
.field private content:Ljava/lang/String;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/plain;charset=utf-8"

    .line 16
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/request/PostStringRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lokhttp3/MediaType;I)V
    .locals 6
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
            ">;",
            "Ljava/lang/String;",
            "Lokhttp3/MediaType;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/zhy/http/okhttp/request/OkHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    .line 25
    iput-object p5, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->content:Ljava/lang/String;

    .line 26
    iput-object p6, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->mediaType:Lokhttp3/MediaType;

    .line 28
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->content:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "the content can not be null !"

    .line 30
    invoke-static {p2, p1}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->mediaType:Lokhttp3/MediaType;

    if-nez p1, :cond_1

    .line 34
    sget-object p1, Lcom/zhy/http/okhttp/request/PostStringRequest;->MEDIA_TYPE_PLAIN:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->mediaType:Lokhttp3/MediaType;

    :cond_1
    return-void
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/PostStringRequest;->content:Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method
