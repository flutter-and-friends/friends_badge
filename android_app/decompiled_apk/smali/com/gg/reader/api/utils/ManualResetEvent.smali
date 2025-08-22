.class public Lcom/gg/reader/api/utils/ManualResetEvent;
.super Ljava/lang/Object;
.source "ManualResetEvent.java"


# instance fields
.field private final monitor:Ljava/lang/Object;

.field private volatile open:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->monitor:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->open:Z

    .line 15
    iput-boolean p1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->open:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->open:Z

    return-void
.end method

.method public set()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->monitor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 37
    :try_start_0
    iput-boolean v1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->open:Z

    .line 38
    iget-object v1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->monitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 39
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitOne()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->monitor:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->open:Z

    if-nez v1, :cond_0

    .line 21
    iget-object v1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->monitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitOne(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->monitor:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    iget-boolean v1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->open:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 29
    monitor-exit v0

    return p1

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->monitor:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 31
    iget-boolean p1, p0, Lcom/gg/reader/api/utils/ManualResetEvent;->open:Z

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
