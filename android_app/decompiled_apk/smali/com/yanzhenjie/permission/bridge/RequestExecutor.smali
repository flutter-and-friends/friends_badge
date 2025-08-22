.class final Lcom/yanzhenjie/permission/bridge/RequestExecutor;
.super Ljava/lang/Thread;
.source "RequestExecutor.java"

# interfaces
.implements Lcom/yanzhenjie/permission/bridge/Messenger$Callback;


# instance fields
.field private mMessenger:Lcom/yanzhenjie/permission/bridge/Messenger;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/permission/bridge/BridgeRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/yanzhenjie/permission/bridge/BridgeRequest;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private executeCurrent()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestNotificationListener(Lcom/yanzhenjie/permission/source/Source;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestNotify(Lcom/yanzhenjie/permission/source/Source;)V

    goto :goto_0

    .line 75
    :pswitch_2
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestAlertWindow(Lcom/yanzhenjie/permission/source/Source;)V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestOverlay(Lcom/yanzhenjie/permission/source/Source;)V

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestInstall(Lcom/yanzhenjie/permission/source/Source;)V

    goto :goto_0

    .line 63
    :pswitch_5
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v1}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getPermissions()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestPermission(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_6
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v0

    invoke-static {v0}, Lcom/yanzhenjie/permission/bridge/BridgeActivity;->requestAppDetails(Lcom/yanzhenjie/permission/source/Source;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCallback()V
    .locals 1

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mMessenger:Lcom/yanzhenjie/permission/bridge/Messenger;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/Messenger;->unRegister()V

    .line 93
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getCallback()Lcom/yanzhenjie/permission/bridge/BridgeRequest$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest$Callback;->onCallback()V

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 95
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 36
    :goto_0
    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    iput-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    new-instance v0, Lcom/yanzhenjie/permission/bridge/Messenger;

    iget-object v1, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mRequest:Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    invoke-virtual {v1}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->getSource()Lcom/yanzhenjie/permission/source/Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yanzhenjie/permission/bridge/Messenger;-><init>(Landroid/content/Context;Lcom/yanzhenjie/permission/bridge/Messenger$Callback;)V

    iput-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mMessenger:Lcom/yanzhenjie/permission/bridge/Messenger;

    .line 44
    iget-object v0, p0, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->mMessenger:Lcom/yanzhenjie/permission/bridge/Messenger;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/bridge/Messenger;->register()V

    .line 45
    invoke-direct {p0}, Lcom/yanzhenjie/permission/bridge/RequestExecutor;->executeCurrent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 50
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 52
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 40
    :catch_1
    monitor-exit p0

    goto :goto_0

    .line 52
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
