.class final Lcom/blankj/utilcode/util/ToastUtils$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$duration:I

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 252
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->cancel()V

    .line 253
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$text:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/blankj/utilcode/util/ToastUtils$1;->val$duration:I

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/ToastUtils$ToastFactory;->makeToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$002(Lcom/blankj/utilcode/util/ToastUtils$IToast;)Lcom/blankj/utilcode/util/ToastUtils$IToast;

    .line 254
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$100()I

    move-result v1

    const v2, -0x1000001

    if-eq v1, v2, :cond_0

    .line 256
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$100()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$200()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 259
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$200()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 261
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$300()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$400()I

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$500()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 262
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v1

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$300()I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$400()I

    move-result v3

    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$500()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->setGravity(III)V

    .line 264
    :cond_3
    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->access$600(Landroid/widget/TextView;)V

    .line 265
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->show()V

    return-void
.end method
