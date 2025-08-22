.class public Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserInfoActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/UserInfoActivity;

.field private view7f090147:Landroid/view/View;

.field private view7f0902ba:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/UserInfoActivity;)V
    .locals 1

    .line 26
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/UserInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/UserInfoActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/UserInfoActivity;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    const v0, 0x7f090147

    const-string v1, "field \'imgBack\' and method \'onViewClicked\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imgBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/UserInfoActivity;->imgBack:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 37
    new-instance v0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;Lcn/highlight/work_card_write/activity/UserInfoActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c3

    const-string v2, "field \'tvUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09019b

    const-string v2, "field \'linearZh\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/UserInfoActivity;->linearZh:Landroid/widget/LinearLayout;

    const v0, 0x7f0902ba

    const-string v1, "field \'tvLoginOut\' and method \'onViewClicked\'"

    .line 45
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 46
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvLoginOut\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvLoginOut:Landroid/widget/TextView;

    .line 47
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->view7f0902ba:Landroid/view/View;

    .line 48
    new-instance v0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;Lcn/highlight/work_card_write/activity/UserInfoActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/UserInfoActivity;

    .line 63
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->imgBack:Landroid/widget/ImageView;

    .line 64
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    .line 65
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->linearZh:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvLoginOut:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->view7f090147:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->view7f0902ba:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity_ViewBinding;->view7f0902ba:Landroid/view/View;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
