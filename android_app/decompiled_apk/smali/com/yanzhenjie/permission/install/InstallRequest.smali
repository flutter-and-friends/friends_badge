.class public interface abstract Lcom/yanzhenjie/permission/install/InstallRequest;
.super Ljava/lang/Object;
.source "InstallRequest.java"


# virtual methods
.method public abstract file(Ljava/io/File;)Lcom/yanzhenjie/permission/install/InstallRequest;
.end method

.method public abstract onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/yanzhenjie/permission/install/InstallRequest;"
        }
    .end annotation
.end method

.method public abstract onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/yanzhenjie/permission/install/InstallRequest;"
        }
    .end annotation
.end method

.method public abstract rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/yanzhenjie/permission/install/InstallRequest;"
        }
    .end annotation
.end method

.method public abstract start()V
.end method
