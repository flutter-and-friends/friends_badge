.class abstract Lcom/yanzhenjie/permission/overlay/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/overlay/OverlayRequest;


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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/yanzhenjie/permission/overlay/BaseRequest$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/overlay/BaseRequest$1;-><init>(Lcom/yanzhenjie/permission/overlay/BaseRequest;)V

    iput-object v0, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    .line 46
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method static tryDisplayDialog(Landroid/content/Context;)Z
    .locals 2

    .line 93
    new-instance v0, Landroid/app/Dialog;

    sget v1, Lcom/yanzhenjie/permission/R$style;->Permission_Theme:I

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 96
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_0

    const/16 p0, 0x7f6

    goto :goto_0

    :cond_0
    const/16 p0, 0x7d3

    .line 97
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Window;->setType(I)V

    .line 99
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    :cond_2
    throw p0

    :catch_0
    const/4 p0, 0x0

    .line 103
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    return p0
.end method


# virtual methods
.method final callbackFailed()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final callbackSucceed()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/overlay/OverlayRequest;"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public final onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/overlay/OverlayRequest;"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public final rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/overlay/OverlayRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/yanzhenjie/permission/overlay/OverlayRequest;"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    return-object p0
.end method

.method final showRationale(Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    iget-object v1, p0, Lcom/yanzhenjie/permission/overlay/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/yanzhenjie/permission/Rationale;->showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V

    return-void
.end method
