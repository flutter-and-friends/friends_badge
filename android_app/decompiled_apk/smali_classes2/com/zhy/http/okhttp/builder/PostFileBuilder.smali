.class public Lcom/zhy/http/okhttp/builder/PostFileBuilder;
.super Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.source "PostFileBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<",
        "Lcom/zhy/http/okhttp/builder/PostFileBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 9

    .line 34
    new-instance v8, Lcom/zhy/http/okhttp/request/PostFileRequest;

    iget-object v1, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->params:Ljava/util/Map;

    iget-object v4, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->headers:Ljava/util/Map;

    iget-object v5, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->file:Ljava/io/File;

    iget-object v6, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->mediaType:Lokhttp3/MediaType;

    iget v7, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->id:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/zhy/http/okhttp/request/PostFileRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/io/File;Lokhttp3/MediaType;I)V

    invoke-virtual {v8}, Lcom/zhy/http/okhttp/request/PostFileRequest;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    return-object v0
.end method

.method public file(Ljava/io/File;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->file:Ljava/io/File;

    return-object p0
.end method

.method public mediaType(Lokhttp3/MediaType;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/PostFileBuilder;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method
