.class public Lcom/geek/banner/widget/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geek/banner/widget/WeakHandler$ChainedRef;,
        Lcom/geek/banner/widget/WeakHandler$WeakRunnable;,
        Lcom/geek/banner/widget/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 42
    iput-object v2, p0, Lcom/geek/banner/widget/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 43
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 57
    iput-object p1, p0, Lcom/geek/banner/widget/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 58
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 67
    iput-object v2, p0, Lcom/geek/banner/widget/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 68
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 30
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 79
    iput-object p2, p0, Lcom/geek/banner/widget/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 80
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;
    .locals 2

    if-eqz p1, :cond_0

    .line 352
    new-instance v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 353
    iget-object p1, p0, Lcom/geek/banner/widget/WeakHandler;->mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    invoke-virtual {p1, v0}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->insertAfter(Lcom/geek/banner/widget/WeakHandler$ChainedRef;)V

    .line 354
    iget-object p1, v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->wrapper:Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    return-object p1

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Runnable can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final hasMessages(I)Z
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/geek/banner/widget/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/geek/banner/widget/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/geek/banner/widget/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/geek/banner/widget/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/geek/banner/widget/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mRunnables:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p1

    return p1
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler;->mExec:Lcom/geek/banner/widget/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/geek/banner/widget/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
