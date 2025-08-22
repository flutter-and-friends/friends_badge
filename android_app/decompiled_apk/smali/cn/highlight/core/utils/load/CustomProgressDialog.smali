.class public Lcn/highlight/core/utils/load/CustomProgressDialog;
.super Landroid/app/Dialog;
.source "CustomProgressDialog.java"


# static fields
.field private static customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static createDialog(Landroid/content/Context;)Lcn/highlight/core/utils/load/CustomProgressDialog;
    .locals 2

    .line 29
    new-instance v0, Lcn/highlight/core/utils/load/CustomProgressDialog;

    sget v1, Lcn/highlight/core/R$style;->CustomProgressDialog:I

    invoke-direct {v0, p0, v1}, Lcn/highlight/core/utils/load/CustomProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    .line 30
    sget-object p0, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    sget v0, Lcn/highlight/core/R$layout;->dialog_loading_view:I

    invoke-virtual {p0, v0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->setContentView(I)V

    .line 31
    sget-object p0, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {p0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/16 v0, 0x11

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 33
    sget-object p0, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    sget-object p0, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    invoke-virtual {p0, v0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->setCancelable(Z)V

    .line 35
    sget-object p0, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    return-object p0
.end method

.method private fullScreenImmersive(Landroid/view/View;)V
    .locals 2

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1700

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 39
    sget-object p1, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    sget v0, Lcn/highlight/core/R$id;->progressBar:I

    invoke-virtual {p1, v0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)Lcn/highlight/core/utils/load/CustomProgressDialog;
    .locals 2

    .line 50
    sget-object v0, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    sget v1, Lcn/highlight/core/R$id;->tv_loadingmsg:I

    invoke-virtual {v0, v1}, Lcn/highlight/core/utils/load/CustomProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    sget-object p1, Lcn/highlight/core/utils/load/CustomProgressDialog;->customProgressDialog:Lcn/highlight/core/utils/load/CustomProgressDialog;

    return-object p1
.end method

.method public show()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 61
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 62
    invoke-virtual {p0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->fullScreenImmersive(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcn/highlight/core/utils/load/CustomProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
