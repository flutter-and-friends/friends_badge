.class Lcom/yanzhenjie/permission/notify/listener/J2Request;
.super Lcom/yanzhenjie/permission/notify/listener/BaseRequest;
.source "J2Request.java"

# interfaces
.implements Lcom/yanzhenjie/permission/RequestExecutor;
.implements Lcom/yanzhenjie/permission/bridge/BridgeRequest$Callback;


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/notify/listener/BaseRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    .line 32
    iput-object p1, p0, Lcom/yanzhenjie/permission/notify/listener/J2Request;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/notify/listener/J2Request;->callbackFailed()V

    return-void
.end method

.method public execute()V
    .locals 2

    .line 46
    new-instance v0, Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    iget-object v1, p0, Lcom/yanzhenjie/permission/notify/listener/J2Request;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v1, 0x7

    .line 47
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->setType(I)V

    .line 48
    invoke-virtual {v0, p0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->setCallback(Lcom/yanzhenjie/permission/bridge/BridgeRequest$Callback;)V

    .line 49
    invoke-static {}, Lcom/yanzhenjie/permission/bridge/RequestManager;->get()Lcom/yanzhenjie/permission/bridge/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/permission/bridge/RequestManager;->add(Lcom/yanzhenjie/permission/bridge/BridgeRequest;)V

    return-void
.end method

.method public onCallback()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/yanzhenjie/permission/notify/listener/J2Request;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->canListenerNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/notify/listener/J2Request;->callbackSucceed()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/notify/listener/J2Request;->callbackFailed()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/yanzhenjie/permission/notify/listener/J2Request;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->canListenerNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/notify/listener/J2Request;->callbackSucceed()V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p0}, Lcom/yanzhenjie/permission/notify/listener/J2Request;->showRationale(Lcom/yanzhenjie/permission/RequestExecutor;)V

    :goto_0
    return-void
.end method
