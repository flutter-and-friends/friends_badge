.class public Lcn/forward/androids/utils/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# static fields
.field private static final ASYNC_THREAD_NAME:Ljava/lang/String; = "single-async-thread"

.field private static sInstance:Lcn/forward/androids/utils/ThreadUtil;


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mMainHandler:Landroid/os/Handler;

.field private mMsgQueue:Landroid/os/MessageQueue;

.field private mSingleAsyncHandler:Landroid/os/Handler;

.field private mSingleAsyncThread:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "single-async-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncThread:Landroid/os/HandlerThread;

    .line 32
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mMainHandler:Landroid/os/Handler;

    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mMsgQueue:Landroid/os/MessageQueue;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "mQueue"

    invoke-static {v1, v2}, Lcn/forward/androids/utils/ReflectUtil;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :goto_0
    instance-of v1, v0, Landroid/os/MessageQueue;

    if-eqz v1, :cond_1

    .line 48
    check-cast v0, Landroid/os/MessageQueue;

    iput-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mMsgQueue:Landroid/os/MessageQueue;

    goto :goto_1

    .line 50
    :cond_1
    new-instance v0, Lcn/forward/androids/utils/ThreadUtil$1;

    invoke-direct {v0, p0}, Lcn/forward/androids/utils/ThreadUtil$1;-><init>(Lcn/forward/androids/utils/ThreadUtil;)V

    invoke-virtual {p0, v0}, Lcn/forward/androids/utils/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method static synthetic access$002(Lcn/forward/androids/utils/ThreadUtil;Landroid/os/MessageQueue;)Landroid/os/MessageQueue;
    .locals 0

    .line 15
    iput-object p1, p0, Lcn/forward/androids/utils/ThreadUtil;->mMsgQueue:Landroid/os/MessageQueue;

    return-object p1
.end method

.method public static getInstance()Lcn/forward/androids/utils/ThreadUtil;
    .locals 1

    .line 61
    sget-object v0, Lcn/forward/androids/utils/ThreadUtil;->sInstance:Lcn/forward/androids/utils/ThreadUtil;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcn/forward/androids/utils/ThreadUtil;

    invoke-direct {v0}, Lcn/forward/androids/utils/ThreadUtil;-><init>()V

    sput-object v0, Lcn/forward/androids/utils/ThreadUtil;->sInstance:Lcn/forward/androids/utils/ThreadUtil;

    .line 64
    :cond_0
    sget-object v0, Lcn/forward/androids/utils/ThreadUtil;->sInstance:Lcn/forward/androids/utils/ThreadUtil;

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/Runnable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 79
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runOnAsyncThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnAsyncThread(Ljava/lang/Runnable;J)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mSingleAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public runOnIdleTime(Ljava/lang/Runnable;)V
    .locals 1

    .line 136
    new-instance v0, Lcn/forward/androids/utils/ThreadUtil$2;

    invoke-direct {v0, p0, p1}, Lcn/forward/androids/utils/ThreadUtil$2;-><init>(Lcn/forward/androids/utils/ThreadUtil;Ljava/lang/Runnable;)V

    .line 144
    iget-object p1, p0, Lcn/forward/androids/utils/ThreadUtil;->mMsgQueue:Landroid/os/MessageQueue;

    invoke-virtual {p1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;J)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcn/forward/androids/utils/ThreadUtil;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
