.class final Lcom/blankj/utilcode/util/ToastUtils$2;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->cancel()V

    .line 275
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils$ToastFactory;->newToast(Landroid/content/Context;)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$002(Lcom/blankj/utilcode/util/ToastUtils$IToast;)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    .line 276
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->setView(Landroid/view/View;)V

    .line 277
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    iget v1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->setDuration(I)V

    .line 278
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$300()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$400()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$500()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 279
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$300()I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$400()I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$500()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->setGravity(III)V

    .line 281
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$700()V

    .line 282
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->show()V

    return-void
.end method
