.class public interface abstract Lcom/yanzhenjie/permission/overlay/OverlayRequest;
.super Ljava/lang/Object;
.source "OverlayRequest.java"


# virtual methods
.method public abstract onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/overlay/OverlayRequest;"
        }
    .end annotation
.end method

.method public abstract onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/overlay/OverlayRequest;"
        }
    .end annotation
.end method

.method public abstract rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/overlay/OverlayRequest;"
        }
    .end annotation
.end method

.method public abstract start()V
.end method
