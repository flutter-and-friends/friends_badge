.class public Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;
.super Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;
.source "ScheduledBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# instance fields
.field protected mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mSize:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->builder()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public builder()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .line 43
    sget-object v0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mThreadPoolMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mPoolName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mThreadPoolMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mPoolName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->create()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    sget-object v0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mThreadPoolMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mPoolName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->create()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected create()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 33
    iget v0, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mSize:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method protected getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;
    .locals 1

    .line 38
    sget-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SCHEDULED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-object v0
.end method

.method public size(I)Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;
    .locals 0

    .line 57
    iput p1, p0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->mSize:I

    return-object p0
.end method
