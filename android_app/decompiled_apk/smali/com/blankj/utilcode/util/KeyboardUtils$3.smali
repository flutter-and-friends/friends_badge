.class final Lcom/blankj/utilcode/util/KeyboardUtils$3;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 186
    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$000()Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$100(Landroid/app/Activity;)I

    move-result v0

    .line 188
    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$200()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 189
    invoke-static {}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$000()Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/blankj/utilcode/util/KeyboardUtils$OnSoftInputChangedListener;->onSoftInputChanged(I)V

    .line 190
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$202(I)I

    :cond_0
    return-void
.end method
