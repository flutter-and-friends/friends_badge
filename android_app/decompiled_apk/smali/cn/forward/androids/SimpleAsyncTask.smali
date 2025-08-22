.class public abstract Lcn/forward/androids/SimpleAsyncTask;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;,
        Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;,
        Lcn/forward/androids/SimpleAsyncTask$InternalHandler;,
        Lcn/forward/androids/SimpleAsyncTask$Status;,
        Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;,
        Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;,
        Lcn/forward/androids/SimpleAsyncTask$Policy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final EXECUTOR_LIFO:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final EXECUTOR_PRIORITY:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static sHandler:Lcn/forward/androids/SimpleAsyncTask$InternalHandler;

.field private static sMaxSizeLIFO:I

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcn/forward/androids/SimpleAsyncTask;->CPU_COUNT:I

    .line 34
    sget v0, Lcn/forward/androids/SimpleAsyncTask;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/forward/androids/SimpleAsyncTask;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 35
    sput v0, Lcn/forward/androids/SimpleAsyncTask;->MAXIMUM_POOL_SIZE:I

    .line 38
    new-instance v0, Lcn/forward/androids/SimpleAsyncTask$1;

    invoke-direct {v0}, Lcn/forward/androids/SimpleAsyncTask$1;-><init>()V

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/16 v0, 0x80

    .line 46
    sput v0, Lcn/forward/androids/SimpleAsyncTask;->sMaxSizeLIFO:I

    .line 77
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcn/forward/androids/SimpleAsyncTask;->CORE_POOL_SIZE:I

    sget v3, Lcn/forward/androids/SimpleAsyncTask;->MAXIMUM_POOL_SIZE:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;

    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$Policy;->FIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v8}, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;-><init>(Lcn/forward/androids/SimpleAsyncTask$Policy;Lcn/forward/androids/SimpleAsyncTask$1;)V

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 82
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v10, Lcn/forward/androids/SimpleAsyncTask;->CORE_POOL_SIZE:I

    sget v11, Lcn/forward/androids/SimpleAsyncTask;->MAXIMUM_POOL_SIZE:I

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;

    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$Policy;->LIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    invoke-direct {v15, v1, v8}, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;-><init>(Lcn/forward/androids/SimpleAsyncTask$Policy;Lcn/forward/androids/SimpleAsyncTask$1;)V

    const-wide/16 v12, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask;->EXECUTOR_LIFO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 88
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcn/forward/androids/SimpleAsyncTask$2;

    invoke-direct {v7}, Lcn/forward/androids/SimpleAsyncTask$2;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask;->EXECUTOR_PRIORITY:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 138
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$Status;->PENDING:Lcn/forward/androids/SimpleAsyncTask$Status;

    iput-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    new-instance v0, Lcn/forward/androids/SimpleAsyncTask$3;

    invoke-direct {v0, p0}, Lcn/forward/androids/SimpleAsyncTask$3;-><init>(Lcn/forward/androids/SimpleAsyncTask;)V

    iput-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mWorker:Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;

    .line 181
    new-instance v0, Lcn/forward/androids/SimpleAsyncTask$4;

    iget-object v1, p0, Lcn/forward/androids/SimpleAsyncTask;->mWorker:Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcn/forward/androids/SimpleAsyncTask$4;-><init>(Lcn/forward/androids/SimpleAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 30
    sget v0, Lcn/forward/androids/SimpleAsyncTask;->sMaxSizeLIFO:I

    return v0
.end method

.method static synthetic access$400(Lcn/forward/androids/SimpleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/forward/androids/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$500(Lcn/forward/androids/SimpleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/forward/androids/SimpleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcn/forward/androids/SimpleAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/forward/androids/SimpleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcn/forward/androids/SimpleAsyncTask;Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/forward/androids/SimpleAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 332
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final varargs executeOnExecutor(Ljava/util/concurrent/Executor;Lcn/forward/androids/Priority;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcn/forward/androids/Priority;",
            "[TParams;)",
            "Lcn/forward/androids/SimpleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$Status;->PENDING:Lcn/forward/androids/SimpleAsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 304
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$5;->$SwitchMap$cn$forward$androids$SimpleAsyncTask$Status:[I

    iget-object v1, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    invoke-virtual {v1}, Lcn/forward/androids/SimpleAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already running."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 315
    :cond_2
    :goto_0
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$Status;->RUNNING:Lcn/forward/androids/SimpleAsyncTask$Status;

    iput-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    .line 317
    invoke-virtual {p0}, Lcn/forward/androids/SimpleAsyncTask;->onPreExecute()V

    .line 319
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mWorker:Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;

    iput-object p3, v0, Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 322
    new-instance p3, Lcn/forward/androids/PriorityRunnable;

    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-direct {p3, p2, v0}, Lcn/forward/androids/PriorityRunnable;-><init>(Lcn/forward/androids/Priority;Ljava/lang/Runnable;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 324
    :cond_3
    iget-object p2, p0, Lcn/forward/androids/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-object p0
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Lcn/forward/androids/SimpleAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0, p1}, Lcn/forward/androids/SimpleAsyncTask;->onCancelled(Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p0, p1}, Lcn/forward/androids/SimpleAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 349
    :goto_0
    sget-object p1, Lcn/forward/androids/SimpleAsyncTask$Status;->FINISHED:Lcn/forward/androids/SimpleAsyncTask$Status;

    iput-object p1, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    return-void
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 2

    .line 156
    const-class v0, Lcn/forward/androids/SimpleAsyncTask;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lcn/forward/androids/SimpleAsyncTask;->sHandler:Lcn/forward/androids/SimpleAsyncTask$InternalHandler;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lcn/forward/androids/SimpleAsyncTask$InternalHandler;

    invoke-direct {v1}, Lcn/forward/androids/SimpleAsyncTask$InternalHandler;-><init>()V

    sput-object v1, Lcn/forward/androids/SimpleAsyncTask;->sHandler:Lcn/forward/androids/SimpleAsyncTask$InternalHandler;

    .line 160
    :cond_0
    sget-object v1, Lcn/forward/androids/SimpleAsyncTask;->sHandler:Lcn/forward/androids/SimpleAsyncTask$InternalHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 161
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 221
    invoke-static {}, Lcn/forward/androids/SimpleAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;-><init>(Lcn/forward/androids/SimpleAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0, p1}, Lcn/forward/androids/SimpleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 165
    sput-object p0, Lcn/forward/androids/SimpleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 261
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcn/forward/androids/SimpleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 276
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcn/forward/androids/SimpleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeLIFO([Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcn/forward/androids/SimpleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 280
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask;->EXECUTOR_LIFO:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0, p1}, Lcn/forward/androids/SimpleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcn/forward/androids/SimpleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, p1, v0, p2}, Lcn/forward/androids/SimpleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;Lcn/forward/androids/Priority;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public final varargs executePriority(Lcn/forward/androids/Priority;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/forward/androids/Priority;",
            "[TParams;)",
            "Lcn/forward/androids/SimpleAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 294
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask;->EXECUTOR_PRIORITY:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {p0, v0, p1, p2}, Lcn/forward/androids/SimpleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;Lcn/forward/androids/Priority;[Ljava/lang/Object;)Lcn/forward/androids/SimpleAsyncTask;

    move-result-object p1

    return-object p1

    .line 292
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "priority is null!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getStatus()Lcn/forward/androids/SimpleAsyncTask$Status;
    .locals 1

    .line 228
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcn/forward/androids/SimpleAsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcn/forward/androids/SimpleAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-static {}, Lcn/forward/androids/SimpleAsyncTask;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;-><init>(Lcn/forward/androids/SimpleAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 339
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 3

    .line 202
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$Status;->RUNNING:Lcn/forward/androids/SimpleAsyncTask$Status;

    iget-object v1, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 205
    :cond_0
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$Status;->PENDING:Lcn/forward/androids/SimpleAsyncTask$Status;

    iput-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mStatus:Lcn/forward/androids/SimpleAsyncTask$Status;

    .line 206
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    return v0
.end method
