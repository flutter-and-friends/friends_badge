.class public Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ServiceActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/ServiceActivity;

.field private view7f090096:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/ServiceActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/ServiceActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/ServiceActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/ServiceActivity;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c1

    const-string v2, "field \'tvTitleBase\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ServiceActivity;->tvTitleBase:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090168

    const-string v2, "field \'ivBack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ServiceActivity;->ivBack:Landroid/widget/ImageView;

    .line 35
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0900f5

    const-string v2, "field \'editAddress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ServiceActivity;->editAddress:Landroid/widget/EditText;

    const v0, 0x7f090096

    const-string v1, "field \'btnConnect\' and method \'onViewClicked\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    const-class v1, Landroid/widget/Button;

    const-string v2, "field \'btnConnect\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ServiceActivity;->btnConnect:Landroid/widget/Button;

    .line 38
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;->view7f090096:Landroid/view/View;

    .line 39
    new-instance v0, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ServiceActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/ServiceActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/ServiceActivity;

    .line 54
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ServiceActivity;->tvTitleBase:Landroid/widget/TextView;

    .line 55
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ServiceActivity;->ivBack:Landroid/widget/ImageView;

    .line 56
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ServiceActivity;->editAddress:Landroid/widget/EditText;

    .line 57
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ServiceActivity;->btnConnect:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;->view7f090096:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity_ViewBinding;->view7f090096:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
