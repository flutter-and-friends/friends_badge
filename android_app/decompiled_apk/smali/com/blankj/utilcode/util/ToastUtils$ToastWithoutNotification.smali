.class Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;
.super Lcom/blankj/utilcode/util/ToastUtils$AbsToast;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToastWithoutNotification"
.end annotation


# static fields
.field private static final LISTENER:Lcom/blankj/utilcode/util/Utils$OnActivityDestroyedListener;


# instance fields
.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 419
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification$1;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification$1;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->LISTENER:Lcom/blankj/utilcode/util/Utils$OnActivityDestroyedListener;

    return-void
.end method

.method constructor <init>(Landroid/widget/Toast;)V
    .locals 0

    .line 429
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Landroid/widget/Toast;)V

    .line 417
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 505
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mView:Landroid/view/View;

    .line 506
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    .line 507
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public show()V
    .locals 5

    .line 434
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mView:Landroid/view/View;

    .line 435
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 437
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "window"

    const/16 v3, 0x19

    if-ge v1, v3, :cond_1

    .line 438
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    .line 439
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 440
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v3, :cond_5

    .line 441
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getTopActivityOrApp()Landroid/content/Context;

    move-result-object v1

    .line 442
    instance-of v2, v1, Landroid/app/Activity;

    const-string v3, "ToastUtils"

    if-nez v2, :cond_2

    const-string v0, "Couldn\'t get top Activity."

    .line 443
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 446
    :cond_2
    check-cast v1, Landroid/app/Activity;

    .line 447
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 451
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    .line 452
    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x63

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 453
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getActivityLifecycle()Lcom/blankj/utilcode/util/Utils$ActivityLifecycleImpl;

    move-result-object v2

    sget-object v3, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->LISTENER:Lcom/blankj/utilcode/util/Utils$OnActivityDestroyedListener;

    invoke-virtual {v2, v1, v3}, Lcom/blankj/utilcode/util/Utils$ActivityLifecycleImpl;->addOnActivityDestroyedListener(Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$OnActivityDestroyedListener;)V

    goto :goto_1

    .line 448
    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is useless"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 455
    :cond_5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    .line 456
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7f5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 459
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 460
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    .line 461
    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {v1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    .line 462
    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    .line 464
    :goto_2
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getYOffset()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 465
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 466
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x3

    .line 467
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x1030004

    .line 468
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string v2, "ToastWithoutNotification"

    .line 470
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x98

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 474
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v2, v0, 0x7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x7

    if-ne v2, v4, :cond_7

    .line 476
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    :cond_7
    const/16 v1, 0x70

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    .line 479
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 481
    :cond_8
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 482
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_9

    .line 486
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 490
    :cond_9
    :goto_3
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->access$800()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification$2;

    invoke-direct {v1, p0}, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification$2;-><init>(Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;)V

    iget-object v2, p0, Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;->mToast:Landroid/widget/Toast;

    .line 495
    invoke-virtual {v2}, Landroid/widget/Toast;->getDuration()I

    move-result v2

    if-nez v2, :cond_a

    const-wide/16 v2, 0x7d0

    goto :goto_4

    :cond_a
    const-wide/16 v2, 0xdac

    .line 490
    :goto_4
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
