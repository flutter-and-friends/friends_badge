.class public Lcom/yanzhenjie/permission/source/FragmentSource;
.super Lcom/yanzhenjie/permission/source/Source;
.source "FragmentSource.java"


# instance fields
.field private mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yanzhenjie/permission/source/FragmentSource;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/FragmentSource;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public isShowRationalePermission(Ljava/lang/String;)Z
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/FragmentSource;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/FragmentSource;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/FragmentSource;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
