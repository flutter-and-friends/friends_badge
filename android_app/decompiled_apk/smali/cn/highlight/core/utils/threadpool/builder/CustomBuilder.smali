.class public Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;
.super Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;
.source "CustomBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# instance fields
.field private mCorePoolSize:I

.field private mKeepAliveTime:J

.field private mMaximumPoolSize:I

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
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mCorePoolSize:I

    const v0, 0x7fffffff

    .line 31
    iput v0, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mMaximumPoolSize:I

    const-wide/16 v0, 0x3c

    .line 33
    iput-wide v0, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mKeepAliveTime:J

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mUnit:Ljava/util/concurrent/TimeUnit;

    .line 37
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public corePoolSize(I)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;
    .locals 0

    .line 50
    iput p1, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mCorePoolSize:I

    return-object p0
.end method

.method protected create()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 41
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v1, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mCorePoolSize:I

    iget v2, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mMaximumPoolSize:I

    iget-wide v3, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mKeepAliveTime:J

    iget-object v5, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v7
.end method

.method protected getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;
    .locals 1

    .line 46
    sget-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->CUSTOM:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-object v0
.end method

.method public keepAliveTime(J)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;
    .locals 0

    .line 60
    iput-wide p1, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mKeepAliveTime:J

    return-object p0
.end method

.method public maximumPoolSize(I)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;
    .locals 0

    .line 55
    iput p1, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mMaximumPoolSize:I

    return-object p0
.end method

.method public unit(Ljava/util/concurrent/TimeUnit;)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public workQueue(Ljava/util/concurrent/BlockingQueue;)Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcn/highlight/core/utils/threadpool/builder/CustomBuilder;->mWorkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method
