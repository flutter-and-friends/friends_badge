.class public final Lcom/yanzhenjie/permission/checker/DoubleChecker;
.super Ljava/lang/Object;
.source "DoubleChecker.java"

# interfaces
.implements Lcom/yanzhenjie/permission/checker/PermissionChecker;


# static fields
.field private static final STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

.field private static final STRICT_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/yanzhenjie/permission/checker/StandardChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StandardChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;->STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    .line 28
    new-instance v0, Lcom/yanzhenjie/permission/checker/StrictChecker;

    invoke-direct {v0}, Lcom/yanzhenjie/permission/checker/StrictChecker;-><init>()V

    sput-object v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;->STRICT_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPermission(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;->STRICT_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;->STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    .line 39
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1

    .line 32
    sget-object v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;->STRICT_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yanzhenjie/permission/checker/DoubleChecker;->STANDARD_CHECKER:Lcom/yanzhenjie/permission/checker/PermissionChecker;

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/permission/checker/PermissionChecker;->hasPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
