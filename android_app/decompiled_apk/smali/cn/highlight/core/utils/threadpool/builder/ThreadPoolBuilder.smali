.class public abstract Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;
.super Ljava/lang/Object;
.source "ThreadPoolBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/concurrent/ExecutorService;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static mThreadPoolMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mExecutorService:Ljava/util/concurrent/ExecutorService;

.field protected mPoolName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mThreadPoolMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-string v0, "default"

    .line 29
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mPoolName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public builder()Ljava/util/concurrent/ExecutorService;
    .locals 4

    .line 34
    sget-object v0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mThreadPoolMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mPoolName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mThreadPoolMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mPoolName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->create()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 38
    sget-object v0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mThreadPoolMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mPoolName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :goto_0
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected abstract create()Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;
.end method

.method public poolName(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->mPoolName:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
