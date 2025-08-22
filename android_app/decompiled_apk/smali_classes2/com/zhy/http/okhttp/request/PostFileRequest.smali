.class public Lcom/zhy/http/okhttp/request/PostFileRequest;
.super Lcom/zhy/http/okhttp/request/OkHttpRequest;
.source "PostFileRequest.java"


# static fields
.field private static MEDIA_TYPE_STREAM:Lokhttp3/MediaType;


# instance fields
.field private file:Ljava/io/File;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/octet-stream"

    .line 19
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/zhy/http/okhttp/request/PostFileRequest;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Lokhttp3/MediaType;I)V
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
            "Ljava/io/File;",
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

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/zhy/http/okhttp/request/OkHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    .line 27
    iput-object p5, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->file:Ljava/io/File;

    .line 28
    iput-object p6, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    .line 30
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->file:Ljava/io/File;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "the file can not be null !"

    .line 32
    invoke-static {p2, p1}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    if-nez p1, :cond_1

    .line 36
    sget-object p1, Lcom/zhy/http/okhttp/request/PostFileRequest;->MEDIA_TYPE_STREAM:Lokhttp3/MediaType;

    iput-object p1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    :cond_1
    return-void
.end method


# virtual methods
.method protected buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->builder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method protected buildRequestBody()Lokhttp3/RequestBody;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->mediaType:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method protected wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;
    .locals 2

    if-nez p2, :cond_0

    return-object p1

    .line 50
    :cond_0
    new-instance v0, Lcom/zhy/http/okhttp/request/CountingRequestBody;

    new-instance v1, Lcom/zhy/http/okhttp/request/PostFileRequest$1;

    invoke-direct {v1, p0, p2}, Lcom/zhy/http/okhttp/request/PostFileRequest$1;-><init>(Lcom/zhy/http/okhttp/request/PostFileRequest;Lcom/zhy/http/okhttp/callback/Callback;)V

    invoke-direct {v0, p1, v1}, Lcom/zhy/http/okhttp/request/CountingRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;)V

    return-object v0
.end method
