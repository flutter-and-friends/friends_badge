.class final Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification$1;
.super Ljava/lang/Object;
.source "ToastUtils.java"

# interfaces
.implements Lcom/blankj/utilcode/util/Utils$OnActivityDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 423
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;

    move-result-object p1

    invoke-interface {p1}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->cancel()V

    return-void
.end method
