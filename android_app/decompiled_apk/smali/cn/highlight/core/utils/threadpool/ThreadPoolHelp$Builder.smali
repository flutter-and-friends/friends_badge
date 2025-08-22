.class public Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;
.super Ljava/lang/Object;
.source "ThreadPoolHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/utils/threadpool/ThreadPoolHelp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCorePoolSize:I

.field private mKeepAliveTime:J

.field private mMaximumPoolSize:I

.field private mName:Ljava/lang/String;

.field private mSize:I

.field private mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

.field private mUnit:Ljava/util/concurrent/TimeUnit;

.field private mWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v1, 0x1

    .line 40
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mSize:I

    .line 42
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mCorePoolSize:I

    const v1, 0x7fffffff

    .line 44
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mMaximumPoolSize:I

    const-wide/16 v1, 0x3c

    .line 46
    iput-wide v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mKeepAliveTime:J

    .line 48
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mUnit:Ljava/util/concurrent/TimeUnit;

    .line 50
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 52
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    .line 55
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-void
.end method

.method public constructor <init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;I)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v1, 0x1

    .line 40
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mSize:I

    .line 42
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mCorePoolSize:I

    const v1, 0x7fffffff

    .line 44
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mMaximumPoolSize:I

    const-wide/16 v1, 0x3c

    .line 46
    iput-wide v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mKeepAliveTime:J

    .line 48
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mUnit:Ljava/util/concurrent/TimeUnit;

    .line 50
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 52
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    .line 59
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    .line 60
    iput p2, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mSize:I

    return-void
.end method

.method public constructor <init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/highlight/core/utils/threadpool/ThreadPoolType;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    const/4 v1, 0x1

    .line 40
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mSize:I

    .line 42
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mCorePoolSize:I

    const v1, 0x7fffffff

    .line 44
    iput v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mMaximumPoolSize:I

    const-wide/16 v1, 0x3c

    .line 46
    iput-wide v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mKeepAliveTime:J

    .line 48
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mUnit:Ljava/util/concurrent/TimeUnit;

    .line 50
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 52
    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    .line 69
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    .line 70
    iput p2, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mCorePoolSize:I

    .line 71
    iput p3, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mMaximumPoolSize:I

    .line 72
    iput-wide p4, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mKeepAliveTime:J

    .line 73
    iput-object p6, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mUnit:Ljava/util/concurrent/TimeUnit;

    .line 74
    iput-object p7, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public static cached()Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;
    .locals 2

    .line 78
    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CACHED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    invoke-direct {v0, v1}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;-><init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;)V

    return-object v0
.end method

.method private createThreadPoolBuilder()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CACHED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    if-ne v0, v1, :cond_0

    .line 121
    new-instance v0, Lcn/highlight/core/utils/threadpool/builder/CachedBuilder;

    invoke-direct {v0}, Lcn/highlight/core/utils/threadpool/builder/CachedBuilder;-><init>()V

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/CachedBuilder;->poolName(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    goto/16 :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->FIXED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    if-ne v0, v1, :cond_1

    .line 123
    new-instance v0, Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;

    invoke-direct {v0}, Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;-><init>()V

    iget v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mSize:I

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;->setSize(I)Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;->poolName(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SCHEDULED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    if-ne v0, v1, :cond_2

    .line 125
    new-instance v0, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;

    invoke-direct {v0}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;-><init>()V

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/ScheduledBuilder;->poolName(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SINGLE:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    if-ne v0, v1, :cond_3

    .line 127
    new-instance v0, Lcn/highlight/core/utils/threadpool/builder/SingleBuilder;

    invoke-direct {v0}, Lcn/highlight/core/utils/threadpool/builder/SingleBuilder;-><init>()V

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/SingleBuilder;->poolName(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mType:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CUSTOM:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    if-ne v0, v1, :cond_4

    .line 129
    new-instance v0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;

    invoke-direct {v0}, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;-><init>()V

    iget v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mCorePoolSize:I

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->corePoolSize(I)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;

    move-result-object v0

    iget v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mMaximumPoolSize:I

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->maximumPoolSize(I)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mKeepAliveTime:J

    invoke-virtual {v0, v1, v2}, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->keepAliveTime(J)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->unit(Ljava/util/concurrent/TimeUnit;)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->workQueue(Ljava/util/concurrent/BlockingQueue;)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->poolName(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    :cond_4
    :goto_0
    return-void
.end method

.method public static custom(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;"
        }
    .end annotation

    .line 98
    new-instance v8, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CUSTOM:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    move-object v0, v8

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;-><init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v8
.end method

.method public static fixed(I)Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;
    .locals 2

    .line 82
    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->FIXED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    invoke-direct {v0, v1, p0}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;-><init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;I)V

    return-object v0
.end method

.method public static schedule(I)Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;
    .locals 2

    .line 90
    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SCHEDULED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    invoke-direct {v0, v1, p0}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;-><init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;I)V

    return-object v0
.end method

.method public static single()Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;
    .locals 2

    .line 86
    new-instance v0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;

    sget-object v1, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->SINGLE:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    invoke-direct {v0, v1}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;-><init>(Lcn/highlight/core/utils/threadpool/ThreadPoolType;)V

    return-object v0
.end method


# virtual methods
.method public builder()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 107
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->createThreadPoolBuilder()V

    .line 108
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    invoke-virtual {v0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->builder()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public scheduleBuilder()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 112
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->createThreadPoolBuilder()V

    .line 113
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    invoke-virtual {v0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->builder()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/highlight/core/utils/threadpool/ThreadPoolHelp$Builder;->mThreadPoolBuilder:Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;

    invoke-virtual {v0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;->builder()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
