.class public Lcom/zhy/http/okhttp/cookie/CookieJarImpl;
.super Ljava/lang/Object;
.source "CookieJarImpl.java"

# interfaces
.implements Lokhttp3/CookieJar;


# instance fields
.field private cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;


# direct methods
.method public constructor <init>(Lcom/zhy/http/okhttp/cookie/store/CookieStore;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cookieStore can not be null."

    .line 21
    invoke-static {v1, v0}, Lcom/zhy/http/okhttp/utils/Exceptions;->illegalArgument(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    return-void
.end method


# virtual methods
.method public getCookieStore()Lcom/zhy/http/okhttp/cookie/store/CookieStore;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    return-object v0
.end method

.method public declared-synchronized loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    invoke-interface {v0, p1}, Lcom/zhy/http/okhttp/cookie/store/CookieStore;->get(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/cookie/CookieJarImpl;->cookieStore:Lcom/zhy/http/okhttp/cookie/store/CookieStore;

    invoke-interface {v0, p1, p2}, Lcom/zhy/http/okhttp/cookie/store/CookieStore;->add(Lokhttp3/HttpUrl;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
