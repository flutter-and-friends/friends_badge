.class public Lcom/allenliu/versionchecklib/core/http/AllenHttp;
.super Ljava/lang/Object;
.source "AllenHttp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllCerts;,
        Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllHostnameVerifier;
    }
.end annotation


# static fields
.field private static client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lokhttp3/Request$Builder;",
            ">(TT;",
            "Lcom/allenliu/versionchecklib/core/VersionParams;",
            ")TT;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getHttpHeaders()Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "header:"

    .line 121
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lokhttp3/Request$Builder;",
            ">(TT;",
            "Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;",
            ")TT;"
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getHttpHeaders()Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "header:"

    .line 171
    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static assembleUrl(Ljava/lang/String;Lcom/allenliu/versionchecklib/core/http/HttpParams;)Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p0, "?"

    .line 89
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/http/HttpParams;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "&"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "url:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method private static createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    .line 58
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    .line 59
    new-instance v4, Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllCerts;

    invoke-direct {v4, v0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllCerts;-><init>(Lcom/allenliu/versionchecklib/core/http/AllenHttp$1;)V

    aput-object v4, v2, v3

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 61
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static get(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;
    .locals 2

    .line 132
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 133
    invoke-static {v0, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleUrl(Ljava/lang/String;Lcom/allenliu/versionchecklib/core/http/HttpParams;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v0
.end method

.method public static get(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;
    .locals 2

    .line 182
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 183
    invoke-static {v0, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleUrl(Ljava/lang/String;Lcom/allenliu/versionchecklib/core/http/HttpParams;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v0
.end method

.method public static getHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 37
    sget-object v0, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 39
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    const-wide/16 v1, 0xf

    .line 40
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 41
    new-instance v1, Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllHostnameVerifier;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/allenliu/versionchecklib/core/http/AllenHttp$TrustAllHostnameVerifier;-><init>(Lcom/allenliu/versionchecklib/core/http/AllenHttp$1;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->client:Lokhttp3/OkHttpClient;

    .line 44
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private static getRequestParams(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/FormBody;
    .locals 5

    .line 158
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 159
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/http/HttpParams;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p0

    return-object p0
.end method

.method private static getRequestParams(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/FormBody;
    .locals 5

    .line 208
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/http/HttpParams;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-----value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p0

    return-object p0
.end method

.method private static getRequestParamsJson(Lcom/allenliu/versionchecklib/core/http/HttpParams;)Ljava/lang/String;
    .locals 3

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/http/HttpParams;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 109
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public static post(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;
    .locals 2

    .line 140
    invoke-static {p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getRequestParams(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/FormBody;

    move-result-object v0

    .line 141
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 142
    invoke-static {v1, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getRequestUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v1
.end method

.method public static post(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;
    .locals 2

    .line 190
    invoke-static {p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getRequestParams(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/FormBody;

    move-result-object v0

    .line 191
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 192
    invoke-static {v1, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v1
.end method

.method public static postJson(Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;
    .locals 2

    const-string v0, "application/json; charset=utf-8"

    .line 148
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getRequestParamsJson(Lcom/allenliu/versionchecklib/core/http/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 151
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 152
    invoke-static {v1, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/core/VersionParams;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/VersionParams;->getRequestUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v1
.end method

.method public static postJson(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;
    .locals 2

    const-string v0, "application/json; charset=utf-8"

    .line 198
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getRequestParamsJson(Lcom/allenliu/versionchecklib/core/http/HttpParams;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 201
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 202
    invoke-static {v1, p0}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->assembleHeader(Lokhttp3/Request$Builder;Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->getRequestUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v1
.end method
