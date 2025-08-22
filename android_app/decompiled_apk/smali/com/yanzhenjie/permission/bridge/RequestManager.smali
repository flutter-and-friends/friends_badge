.class public Lcom/yanzhenjie/permission/bridge/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field private static sManager:Lcom/yanzhenjie/permission/bridge/RequestManager;


# instance fields
.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/permission/bridge/BridgeRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestManager;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 44
    new-instance v0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;

    iget-object v1, p0, Lcom/yanzhenjie/permission/bridge/RequestManager;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/bridge/RequestExecutor;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->start()V

    return-void
.end method

.method public static get()Lcom/yanzhenjie/permission/bridge/RequestManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/yanzhenjie/permission/bridge/RequestManager;->sManager:Lcom/yanzhenjie/permission/bridge/RequestManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/yanzhenjie/permission/bridge/RequestManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/yanzhenjie/permission/bridge/RequestManager;->sManager:Lcom/yanzhenjie/permission/bridge/RequestManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/yanzhenjie/permission/bridge/RequestManager;

    invoke-direct {v1}, Lcom/yanzhenjie/permission/bridge/RequestManager;-><init>()V

    sput-object v1, Lcom/yanzhenjie/permission/bridge/RequestManager;->sManager:Lcom/yanzhenjie/permission/bridge/RequestManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/yanzhenjie/permission/bridge/RequestManager;->sManager:Lcom/yanzhenjie/permission/bridge/RequestManager;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/yanzhenjie/permission/bridge/BridgeRequest;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestManager;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
