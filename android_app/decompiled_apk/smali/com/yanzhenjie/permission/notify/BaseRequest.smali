.class abstract Lcom/yanzhenjie/permission/notify/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/notify/PermissionRequest;


# instance fields
.field private mDenied:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mGranted:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRationale:Lcom/yanzhenjie/permission/Rationale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/yanzhenjie/permission/notify/BaseRequest$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/notify/BaseRequest$1;-><init>(Lcom/yanzhenjie/permission/notify/BaseRequest;)V

    iput-object v0, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    .line 42
    iput-object p1, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method final callbackFailed()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 84
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final callbackSucceed()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 75
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/notify/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/notify/PermissionRequest;"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public final onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/notify/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/notify/PermissionRequest;"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public final rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/notify/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/notify/PermissionRequest;"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    return-object p0
.end method

.method final showRationale(Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    iget-object v1, p0, Lcom/yanzhenjie/permission/notify/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/yanzhenjie/permission/Rationale;->showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V

    return-void
.end method
