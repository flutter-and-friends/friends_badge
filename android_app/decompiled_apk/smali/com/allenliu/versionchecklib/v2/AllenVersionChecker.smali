.class public Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;
.super Ljava/lang/Object;
.source "AllenVersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allenliu/versionchecklib/v2/AllenVersionChecker$AllenVersionCheckerHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/allenliu/versionchecklib/v2/AllenVersionChecker$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;
    .locals 1

    .line 28
    sget-object v0, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker$AllenVersionCheckerHolder;->allenVersionChecker:Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    return-object v0
.end method


# virtual methods
.method public cancelAllMission(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 38
    sput-object v1, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public downloadOnly(Lcom/allenliu/versionchecklib/v2/builder/UIData;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;
    .locals 2

    .line 47
    new-instance v0, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;-><init>(Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;Lcom/allenliu/versionchecklib/v2/builder/UIData;)V

    return-object v0
.end method

.method public requestVersion()Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;
    .locals 1

    .line 55
    new-instance v0, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/builder/RequestVersionBuilder;-><init>()V

    return-object v0
.end method
