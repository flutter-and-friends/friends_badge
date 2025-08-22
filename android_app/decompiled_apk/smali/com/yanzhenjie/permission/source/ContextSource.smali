.class public Lcom/yanzhenjie/permission/source/ContextSource;
.super Lcom/yanzhenjie/permission/source/Source;
.source "ContextSource.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isShowRationalePermission(Ljava/lang/String;)Z
    .locals 7

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :try_start_0
    const-string v3, "shouldShowRequestPermissionRationale"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 60
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 62
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/high16 v0, 0x10000000

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/ContextSource;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 50
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported operation."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
