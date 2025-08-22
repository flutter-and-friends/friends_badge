.class public Lcn/highlight/core/utils/threadpool/builder/CachedBuilder;
.super Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;
.source "CachedBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 28
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;
    .locals 1

    .line 33
    sget-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CACHED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-object v0
.end method
