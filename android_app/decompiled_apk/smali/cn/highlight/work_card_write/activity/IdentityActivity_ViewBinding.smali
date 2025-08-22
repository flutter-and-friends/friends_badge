.class public Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;
.super Ljava/lang/Object;
.source "IdentityActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/IdentityActivity;

.field private view7f09016a:Landroid/view/View;

.field private view7f09020c:Landroid/view/View;

.field private view7f09020d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/IdentityActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/IdentityActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/IdentityActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/IdentityActivity;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/IdentityActivity;

    const v0, 0x7f09020c

    const-string v1, "field \'rlEnterprise\' and method \'onViewClicked\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlEnterprise\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlEnterprise:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    .line 38
    new-instance v0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;Lcn/highlight/work_card_write/activity/IdentityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09020d

    const-string v1, "field \'rlPerson\' and method \'onViewClicked\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlPerson\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlPerson:Landroid/widget/RelativeLayout;

    .line 46
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09020d:Landroid/view/View;

    .line 47
    new-instance v0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;Lcn/highlight/work_card_write/activity/IdentityActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09016a

    const-string v1, "field \'ivTo\' and method \'onViewClicked\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 54
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivTo\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/IdentityActivity;->ivTo:Landroid/widget/ImageView;

    .line 55
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09016a:Landroid/view/View;

    .line 56
    new-instance v0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;Lcn/highlight/work_card_write/activity/IdentityActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/IdentityActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 69
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/IdentityActivity;

    .line 71
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlEnterprise:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlPerson:Landroid/widget/RelativeLayout;

    .line 73
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/IdentityActivity;->ivTo:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09020c:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09020d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09020d:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09016a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity_ViewBinding;->view7f09016a:Landroid/view/View;

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
