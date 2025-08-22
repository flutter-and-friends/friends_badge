.class public abstract Lcn/highlight/core/utils/threadpool/ThreadTaskObject;
.super Ljava/lang/Object;
.source "ThreadTaskObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mPoolName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 25
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mPoolName:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 25
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mPoolName:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mPoolName:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 37
    invoke-static {}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->cached()Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mPoolName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->name(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->builder()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadTaskObject;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
