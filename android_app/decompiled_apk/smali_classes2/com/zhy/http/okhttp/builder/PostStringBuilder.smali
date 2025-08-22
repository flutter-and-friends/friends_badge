.class public Lcom/zhy/http/okhttp/builder/PostStringBuilder;
.super Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.source "PostStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<",
        "Lcom/zhy/http/okhttp/builder/PostStringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 9

    .line 32
    new-instance v8, Lcom/zhy/http/okhttp/request/PostStringRequest;

    iget-object v1, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->params:Ljava/util/Map;

    iget-object v4, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->headers:Ljava/util/Map;

    iget-object v5, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->content:Ljava/lang/String;

    iget-object v6, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->mediaType:Lokhttp3/MediaType;

    iget v7, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->id:I

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/zhy/http/okhttp/request/PostStringRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Lokhttp3/MediaType;I)V

    invoke-virtual {v8}, Lcom/zhy/http/okhttp/request/PostStringRequest;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    return-object v0
.end method

.method public content(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/PostStringBuilder;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public mediaType(Lokhttp3/MediaType;)Lcom/zhy/http/okhttp/builder/PostStringBuilder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/PostStringBuilder;->mediaType:Lokhttp3/MediaType;

    return-object p0
.end method
