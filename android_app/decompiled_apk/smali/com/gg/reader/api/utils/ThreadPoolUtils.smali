.class public Lcom/gg/reader/api/utils/ThreadPoolUtils;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# static fields
.field public static cachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field public static fixedThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gg/reader/api/utils/ThreadPoolUtils;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initFixedThreadPool(I)V
    .locals 0

    const/16 p0, 0xa

    .line 45
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lcom/gg/reader/api/utils/ThreadPoolUtils;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static run(Ljava/lang/Runnable;)V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/gg/reader/api/utils/ThreadPoolUtils;->runCachedThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runCachedThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/gg/reader/api/utils/ThreadPoolUtils;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runFixedThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/gg/reader/api/utils/ThreadPoolUtils;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static shutdownCachedThread()V
    .locals 1

    .line 67
    sget-object v0, Lcom/gg/reader/api/utils/ThreadPoolUtils;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/gg/reader/api/utils/ThreadPoolUtils;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method public static shutdownFixedThread()V
    .locals 1

    .line 75
    sget-object v0, Lcom/gg/reader/api/utils/ThreadPoolUtils;->fixedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
