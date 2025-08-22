.class abstract Lcom/yanzhenjie/permission/install/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/install/InstallRequest;


# instance fields
.field private mDenied:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFile:Ljava/io/File;

.field private mGranted:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mRationale:Lcom/yanzhenjie/permission/Rationale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/yanzhenjie/permission/install/BaseRequest$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/install/BaseRequest$1;-><init>(Lcom/yanzhenjie/permission/install/BaseRequest;)V

    iput-object v0, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    .line 48
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method final callbackFailed()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final callbackSucceed()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final file(Ljava/io/File;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mFile:Ljava/io/File;

    return-object p0
.end method

.method final install()V
    .locals 3

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/yanzhenjie/permission/AndPermission;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/yanzhenjie/permission/install/InstallRequest;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public final onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/yanzhenjie/permission/install/InstallRequest;"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public final rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/install/InstallRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/yanzhenjie/permission/install/InstallRequest;"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    return-object p0
.end method

.method final showRationale(Lcom/yanzhenjie/permission/RequestExecutor;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    iget-object v1, p0, Lcom/yanzhenjie/permission/install/BaseRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/yanzhenjie/permission/Rationale;->showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V

    return-void
.end method
