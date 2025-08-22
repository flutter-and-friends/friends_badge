.class public abstract Lcn/highlight/work_card_write/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# instance fields
.field private bind:Lbutterknife/Unbinder;

.field public context:Landroid/content/Context;

.field public handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/base/BaseDialog;->handler:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcn/highlight/work_card_write/base/BaseDialog;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/base/BaseDialog;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 90
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    iget-object v0, p0, Lcn/highlight/work_card_write/base/BaseDialog;->bind:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected abstract getLayoutId()I
.end method

.method protected abstract initCreate()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/base/BaseDialog;->setContentView(I)V

    .line 36
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/base/BaseDialog;->bind:Lbutterknife/Unbinder;

    .line 38
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->setWindowSize()V

    .line 39
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->initCreate()V

    return-void
.end method

.method public onEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/base/BaseDialog;->onEventRecive(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventRecive(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 82
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected setWindowSize()V
    .locals 4

    .line 49
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 51
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 58
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 59
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p0}, Lcn/highlight/work_card_write/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 75
    invoke-static {p0}, Lcn/highlight/work_card_write/base/EventUtil;->register(Ljava/lang/Object;)V

    return-void
.end method
