.class Lcom/geek/banner/widget/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geek/banner/widget/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainedRef"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/Lock;

.field next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

.field prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

.field final runnable:Ljava/lang/Runnable;

.field final wrapper:Lcom/geek/banner/widget/WeakHandler$WeakRunnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p2, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    .line 428
    iput-object p1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 429
    new-instance p1, Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Lcom/geek/banner/widget/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->wrapper:Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    return-void
.end method


# virtual methods
.method public insertAfter(Lcom/geek/banner/widget/WeakHandler$ChainedRef;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iput-object p1, v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iput-object v0, p1, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 457
    iput-object p1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 458
    iput-object p0, p1, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    iget-object p1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 461
    throw p1
.end method

.method public remove()Lcom/geek/banner/widget/WeakHandler$WeakRunnable;
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    :cond_1
    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->prev:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    .line 442
    iput-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 446
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->wrapper:Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    return-object v0

    :catchall_0
    move-exception v0

    .line 444
    iget-object v1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 445
    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Lcom/geek/banner/widget/WeakHandler$WeakRunnable;
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;

    :goto_0
    if-eqz v0, :cond_1

    .line 470
    iget-object v1, v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->remove()Lcom/geek/banner/widget/WeakHandler$WeakRunnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 473
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->next:Lcom/geek/banner/widget/WeakHandler$ChainedRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 476
    :cond_1
    iget-object p1, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/geek/banner/widget/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 477
    throw p1
.end method
