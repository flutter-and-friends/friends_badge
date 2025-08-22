.class public Lcom/yanzhenjie/permission/source/XFragmentSource;
.super Lcom/yanzhenjie/permission/source/Source;
.source "XFragmentSource.java"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yanzhenjie/permission/source/XFragmentSource;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/XFragmentSource;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isShowRationalePermission(Ljava/lang/String;)Z
    .locals 2

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/XFragmentSource;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/XFragmentSource;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/XFragmentSource;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
