.class Lcom/yanzhenjie/permission/runtime/MRequest;
.super Ljava/lang/Object;
.source "MRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/runtime/PermissionRequest;
.implements Lcom/yanzhenjie/permission/RequestExecutor;
.implements Lcom/yanzhenjie/permission/bridge/BridgeRequest$Callback;


# static fields
.field private static final DOUBLE_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

.field private static final STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;


# instance fields
.field private mDenied:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDeniedPermissions:[Ljava/lang/String;

.field private mGranted:Lcom/yanzhenjie/permission/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPermissions:[Ljava/lang/String;

.field private mRationale:Lcom/yanzhenjie/permission/Rationale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/yanzhenjie/permission/checker/StandardChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StandardChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    .line 43
    new-instance v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/DoubleChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->DOUBLE_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    return-void
.end method

.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/yanzhenjie/permission/runtime/MRequest$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/runtime/MRequest$1;-><init>(Lcom/yanzhenjie/permission/runtime/MRequest;)V

    iput-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    .line 60
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method static synthetic access$000()Lcom/yanzhenjie/permission/checker/PermissionChecker;
    .locals 1

    .line 40
    sget-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->DOUBLE_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yanzhenjie/permission/runtime/MRequest;)Lcom/yanzhenjie/permission/source/Source;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yanzhenjie/permission/runtime/MRequest;)[Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/yanzhenjie/permission/runtime/MRequest;->getDeniedPermissions(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/yanzhenjie/permission/runtime/MRequest;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->callbackSucceed()V

    return-void
.end method

.method static synthetic access$500(Lcom/yanzhenjie/permission/runtime/MRequest;Ljava/util/List;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/runtime/MRequest;->callbackFailed(Ljava/util/List;)V

    return-void
.end method

.method private callbackFailed(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private callbackSucceed()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    invoke-interface {v1, v0}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AndPermission"

    const-string v3, "Please check the onGranted() method body for bugs."

    .line 145
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1, v0}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static varargs getDeniedPermissions(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/checker/PermissionChecker;",
            "Lcom/yanzhenjie/permission/source/Source;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p2, v4

    .line 168
    invoke-virtual {p1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    aput-object v5, v7, v3

    invoke-interface {p0, v6, v7}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 169
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static varargs getRationalePermissions(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/source/Source;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 181
    invoke-virtual {p0, v3}, Lcom/yanzhenjie/permission/source/Source;->isShowRationalePermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->onCallback()V

    return-void
.end method

.method public execute()V
    .locals 2

    .line 105
    new-instance v0, Lcom/yanzhenjie/permission/bridge/BridgeRequest;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;-><init>(Lcom/yanzhenjie/permission/source/Source;)V

    const/4 v1, 0x2

    .line 106
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->setType(I)V

    .line 107
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDeniedPermissions:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->setPermissions([Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0, p0}, Lcom/yanzhenjie/permission/bridge/BridgeRequest;->setCallback(Lcom/yanzhenjie/permission/bridge/BridgeRequest$Callback;)V

    .line 109
    invoke-static {}, Lcom/yanzhenjie/permission/bridge/RequestManager;->get()Lcom/yanzhenjie/permission/bridge/RequestManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/permission/bridge/RequestManager;->add(Lcom/yanzhenjie/permission/bridge/BridgeRequest;)V

    return-void
.end method

.method public onCallback()V
    .locals 2

    .line 119
    new-instance v0, Lcom/yanzhenjie/permission/runtime/MRequest$2;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/runtime/MRequest$2;-><init>(Lcom/yanzhenjie/permission/runtime/MRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 133
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/permission/runtime/MRequest$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDenied(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yanzhenjie/permission/runtime/PermissionRequest;"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public onGranted(Lcom/yanzhenjie/permission/Action;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Action<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yanzhenjie/permission/runtime/PermissionRequest;"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public varargs permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method public rationale(Lcom/yanzhenjie/permission/Rationale;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yanzhenjie/permission/Rationale<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/yanzhenjie/permission/runtime/PermissionRequest;"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    return-object p0
.end method

.method public start()V
    .locals 3

    .line 89
    sget-object v0, Lcom/yanzhenjie/permission/runtime/MRequest;->STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    iget-object v2, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mPermissions:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yanzhenjie/permission/runtime/MRequest;->getDeniedPermissions(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDeniedPermissions:[Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mDeniedPermissions:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-static {v1, v0}, Lcom/yanzhenjie/permission/runtime/MRequest;->getRationalePermissions(Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mRationale:Lcom/yanzhenjie/permission/Rationale;

    iget-object v2, p0, Lcom/yanzhenjie/permission/runtime/MRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v2}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0, p0}, Lcom/yanzhenjie/permission/Rationale;->showRationale(Landroid/content/Context;Ljava/lang/Object;Lcom/yanzhenjie/permission/RequestExecutor;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->execute()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/yanzhenjie/permission/runtime/MRequest;->onCallback()V

    :goto_0
    return-void
.end method
