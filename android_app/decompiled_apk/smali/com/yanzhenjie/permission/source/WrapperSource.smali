.class public Lcom/yanzhenjie/permission/source/WrapperSource;
.super Lcom/yanzhenjie/permission/source/Source;
.source "WrapperSource.java"


# instance fields
.field private mSource:Lcom/yanzhenjie/permission/source/Source;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/permission/source/Source;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/yanzhenjie/permission/source/Source;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yanzhenjie/permission/source/WrapperSource;->mSource:Lcom/yanzhenjie/permission/source/Source;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/WrapperSource;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0}, Lcom/yanzhenjie/permission/source/Source;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isShowRationalePermission(Ljava/lang/String;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/WrapperSource;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/permission/source/Source;->isShowRationalePermission(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/WrapperSource;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/permission/source/Source;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/yanzhenjie/permission/source/WrapperSource;->mSource:Lcom/yanzhenjie/permission/source/Source;

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/permission/source/Source;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
