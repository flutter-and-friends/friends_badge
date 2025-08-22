.class public Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;
.super Ljava/lang/Object;
.source "RequestVersionBuilder.java"


# instance fields
.field private httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

.field private requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

.field private requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

.field private requestUrl:Ljava/lang/String;

.field private requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;->GET:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    iput-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-void
.end method


# virtual methods
.method public getHttpHeaders()Lcom/allenliu/versionchecklib/core/http/HttpHeaders;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    return-object v0
.end method

.method public getRequestMethod()Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-object v0
.end method

.method public getRequestParams()Lcom/allenliu/versionchecklib/core/http/HttpParams;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestVersionListener()Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    return-object v0
.end method

.method public request(Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    .line 71
    new-instance p1, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;-><init>(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;Lcom/allenliu/versionchecklib/v2/builder/UIData;)V

    return-object p1
.end method

.method public setHttpHeaders(Lcom/allenliu/versionchecklib/core/http/HttpHeaders;)Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->httpHeaders:Lcom/allenliu/versionchecklib/core/http/HttpHeaders;

    return-object p0
.end method

.method public setRequestMethod(Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;)Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestMethod:Lcom/allenliu/versionchecklib/core/http/HttpRequestMethod;

    return-object p0
.end method

.method public setRequestParams(Lcom/allenliu/versionchecklib/core/http/HttpParams;)Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestParams:Lcom/allenliu/versionchecklib/core/http/HttpParams;

    return-object p0
.end method

.method public setRequestUrl(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;->requestUrl:Ljava/lang/String;

    return-object p0
.end method
