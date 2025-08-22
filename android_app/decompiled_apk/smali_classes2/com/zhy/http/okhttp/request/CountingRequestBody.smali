.class public Lcom/zhy/http/okhttp/request/CountingRequestBody;
.super Lokhttp3/RequestBody;
.source "CountingRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;,
        Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;
    }
.end annotation


# instance fields
.field protected countingSink:Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;

.field protected delegate:Lokhttp3/RequestBody;

.field protected listener:Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->delegate:Lokhttp3/RequestBody;

    .line 32
    iput-object p2, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->listener:Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;

    invoke-direct {v0, p0, p1}, Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;-><init>(Lcom/zhy/http/okhttp/request/CountingRequestBody;Lokio/Sink;)V

    iput-object v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->countingSink:Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;

    .line 59
    iget-object p1, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->countingSink:Lcom/zhy/http/okhttp/request/CountingRequestBody$CountingSink;

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/CountingRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 63
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
