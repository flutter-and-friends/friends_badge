.class public Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;
.super Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.source "OtherRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<",
        "Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 10

    .line 25
    new-instance v9, Lcom/zhy/http/okhttp/request/OtherRequest;

    iget-object v1, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->requestBody:Lokhttp3/RequestBody;

    iget-object v2, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->method:Ljava/lang/String;

    iget-object v4, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->tag:Ljava/lang/Object;

    iget-object v6, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->params:Ljava/util/Map;

    iget-object v7, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->headers:Ljava/util/Map;

    iget v8, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->id:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/zhy/http/okhttp/request/OtherRequest;-><init>(Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {v9}, Lcom/zhy/http/okhttp/request/OtherRequest;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    return-object v0
.end method

.method public requestBody(Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->content:Ljava/lang/String;

    return-object p0
.end method

.method public requestBody(Lokhttp3/RequestBody;)Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/OtherRequestBuilder;->requestBody:Lokhttp3/RequestBody;

    return-object p0
.end method
