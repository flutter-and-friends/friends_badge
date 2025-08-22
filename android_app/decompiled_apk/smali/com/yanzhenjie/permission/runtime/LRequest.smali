.class Lcom/yanzhenjie/permission/runtime/LRequest;
.super Ljava/lang/Object;
.source "LRequest.java"

# interfaces
.implements Lcom/yanzhenjie/permission/runtime/PermissionRequest;


# static fields
.field private static final STRICT_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;


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

.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/yanzhenjie/permission/checker/StrictChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StrictChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/runtime/LRequest;->STRICT_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    return-void
.end method

.method constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method

.method static synthetic access$000()Lcom/yanzhenjie/permission/checker/PermissionChecker;
    .locals 1

    .line 35
    sget-object v0, Lcom/yanzhenjie/permission/runtime/LRequest;->STRICT_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yanzhenjie/permission/runtime/LRequest;)Lcom/yanzhenjie/permission/source/Source;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yanzhenjie/permission/runtime/LRequest;)[Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mPermissions:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-static {p0, p1, p2}, Lcom/yanzhenjie/permission/runtime/LRequest;->getDeniedPermissions(Lcom/yanzhenjie/permission/checker/PermissionChecker;Lcom/yanzhenjie/permission/source/Source;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/yanzhenjie/permission/runtime/LRequest;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/yanzhenjie/permission/runtime/LRequest;->callbackSucceed()V

    return-void
.end method

.method static synthetic access$500(Lcom/yanzhenjie/permission/runtime/LRequest;Ljava/util/List;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/yanzhenjie/permission/runtime/LRequest;->callbackFailed(Ljava/util/List;)V

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

    .line 112
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private callbackSucceed()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    invoke-interface {v1, v0}, Lcom/yanzhenjie/permission/Action;->onAction(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AndPermission"

    const-string v3, "Please check the onGranted() method body for bugs."

    .line 100
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    iget-object v1, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

    if-eqz v1, :cond_0

    .line 102
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

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    array-length v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p2, v4

    .line 123
    invoke-virtual {p1}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/String;

    aput-object v5, v7, v3

    invoke-interface {p0, v6, v7}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 124
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
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

    .line 68
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mDenied:Lcom/yanzhenjie/permission/Action;

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

    .line 62
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mGranted:Lcom/yanzhenjie/permission/Action;

    return-object p0
.end method

.method public varargs permission([Ljava/lang/String;)Lcom/yanzhenjie/permission/runtime/PermissionRequest;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yanzhenjie/permission/runtime/LRequest;->mPermissions:[Ljava/lang/String;

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

    return-object p0
.end method

.method public start()V
    .locals 2

    .line 74
    new-instance v0, Lcom/yanzhenjie/permission/runtime/LRequest$1;

    invoke-direct {v0, p0}, Lcom/yanzhenjie/permission/runtime/LRequest$1;-><init>(Lcom/yanzhenjie/permission/runtime/LRequest;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 88
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/permission/runtime/LRequest$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
