.class public Lcn/highlight/work_card_write/dialog/HintDialog_ViewBinding;
.super Ljava/lang/Object;
.source "HintDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/dialog/HintDialog;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/dialog/HintDialog;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcn/highlight/work_card_write/dialog/HintDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/dialog/HintDialog_ViewBinding;-><init>(Lcn/highlight/work_card_write/dialog/HintDialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/dialog/HintDialog;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/highlight/work_card_write/dialog/HintDialog_ViewBinding;->target:Lcn/highlight/work_card_write/dialog/HintDialog;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902bb

    const-string v2, "field \'tvMsg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/dialog/HintDialog;->tvMsg:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901a1

    const-string v2, "field \'llDialog\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/dialog/HintDialog;->llDialog:Landroid/widget/LinearLayout;

    .line 31
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090095

    const-string v2, "field \'btnCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcn/highlight/work_card_write/dialog/HintDialog;->btnCancel:Landroid/widget/Button;

    .line 32
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09014e

    const-string v2, "field \'imgLine\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/dialog/HintDialog;->imgLine:Landroid/widget/ImageView;

    .line 33
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f09009b

    const-string v2, "field \'btnSure\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcn/highlight/work_card_write/dialog/HintDialog;->btnSure:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog_ViewBinding;->target:Lcn/highlight/work_card_write/dialog/HintDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcn/highlight/work_card_write/dialog/HintDialog_ViewBinding;->target:Lcn/highlight/work_card_write/dialog/HintDialog;

    .line 43
    iput-object v1, v0, Lcn/highlight/work_card_write/dialog/HintDialog;->tvMsg:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcn/highlight/work_card_write/dialog/HintDialog;->llDialog:Landroid/widget/LinearLayout;

    .line 45
    iput-object v1, v0, Lcn/highlight/work_card_write/dialog/HintDialog;->btnCancel:Landroid/widget/Button;

    .line 46
    iput-object v1, v0, Lcn/highlight/work_card_write/dialog/HintDialog;->imgLine:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcn/highlight/work_card_write/dialog/HintDialog;->btnSure:Landroid/widget/Button;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
