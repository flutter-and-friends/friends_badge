.class public Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;
.super Ljava/lang/Object;
.source "RequestVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;
    .locals 1

    .line 31
    sget-object v0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$Holder;->instance:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;

    return-object v0
.end method


# virtual methods
.method public requestVersion(Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;-><init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager;Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
