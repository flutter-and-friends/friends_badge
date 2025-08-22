.class public Lcom/zhy/http/okhttp/request/RequestCall;
.super Ljava/lang/Object;
.source "RequestCall.java"


# instance fields
.field private call:Lokhttp3/Call;

.field private clone:Lokhttp3/OkHttpClient;

.field private connTimeOut:J

.field private okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

.field private readTimeOut:J

.field private request:Lokhttp3/Request;

.field private writeTimeOut:J


# direct methods
.method public constructor <init>(Lcom/zhy/http/okhttp/request/OkHttpRequest;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

    return-void
.end method

.method private generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

    invoke-virtual {v0, p1}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildCall(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Call;
    .locals 6

    .line 55
    invoke-direct {p0, p1}, Lcom/zhy/http/okhttp/request/RequestCall;->generateRequest(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    .line 57
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/http/okhttp/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    goto :goto_4

    .line 59
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    const-wide/16 v4, 0x2710

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v0, v4

    :goto_1
    iput-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    .line 60
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move-wide v0, v4

    :goto_2
    iput-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    .line 61
    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    goto :goto_3

    :cond_4
    move-wide v0, v4

    :goto_3
    iput-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    .line 63
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zhy/http/okhttp/OkHttpUtils;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->clone:Lokhttp3/OkHttpClient;

    .line 69
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->clone:Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    .line 74
    :goto_4
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    return-object p1
.end method

.method public cancel()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public connTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->connTimeOut:J

    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/zhy/http/okhttp/request/RequestCall;->buildCall(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Call;

    .line 112
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/zhy/http/okhttp/callback/Callback;)V
    .locals 2

    .line 84
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/request/RequestCall;->buildCall(Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/Call;

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    invoke-virtual {p0}, Lcom/zhy/http/okhttp/request/RequestCall;->getOkHttpRequest()Lcom/zhy/http/okhttp/request/OkHttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhy/http/okhttp/request/OkHttpRequest;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/zhy/http/okhttp/callback/Callback;->onBefore(Lokhttp3/Request;I)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/zhy/http/okhttp/OkHttpUtils;->execute(Lcom/zhy/http/okhttp/request/RequestCall;Lcom/zhy/http/okhttp/callback/Callback;)V

    return-void
.end method

.method public getCall()Lokhttp3/Call;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->call:Lokhttp3/Call;

    return-object v0
.end method

.method public getOkHttpRequest()Lcom/zhy/http/okhttp/request/OkHttpRequest;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->okHttpRequest:Lcom/zhy/http/okhttp/request/OkHttpRequest;

    return-object v0
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/RequestCall;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public readTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->readTimeOut:J

    return-object p0
.end method

.method public writeTimeOut(J)Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/zhy/http/okhttp/request/RequestCall;->writeTimeOut:J

    return-object p0
.end method
