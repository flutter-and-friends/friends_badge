.class public interface abstract Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;
.super Ljava/lang/Object;
.source "ListenerRequest.java"


# virtual methods
.method public abstract onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;"
        }
    .end annotation
.end method

.method public abstract onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;"
        }
    .end annotation
.end method

.method public abstract rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/notify/listener/ListenerRequest;"
        }
    .end annotation
.end method

.method public abstract start()V
.end method
