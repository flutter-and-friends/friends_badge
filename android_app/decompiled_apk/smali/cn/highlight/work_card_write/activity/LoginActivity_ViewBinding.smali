.class public Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/LoginActivity;

.field private view7f090098:Landroid/view/View;

.field private view7f0901a2:Landroid/view/View;

.field private view7f0901a5:Landroid/view/View;

.field private view7f0901a6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/LoginActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/LoginActivity;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/LoginActivity;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902b8

    const-string v2, "field \'tvLanguage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->tvLanguage:Landroid/widget/TextView;

    const v0, 0x7f0901a2

    const-string v1, "field \'llLanguage\' and method \'onViewClicked\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llLanguage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->llLanguage:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a2:Landroid/view/View;

    .line 43
    new-instance v0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0900f4

    const-string v2, "field \'editAccount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->editAccount:Landroid/widget/EditText;

    .line 50
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0900fa

    const-string v2, "field \'editPassword\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->editPassword:Landroid/widget/EditText;

    const v0, 0x7f090098

    const-string v1, "field \'btnLogin\' and method \'onViewClicked\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnLogin\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->btnLogin:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f090098:Landroid/view/View;

    .line 54
    new-instance v0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a5

    const-string v1, "field \'llPerson\' and method \'onViewClicked\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llPerson\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->llPerson:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a5:Landroid/view/View;

    .line 63
    new-instance v0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a6

    const-string v1, "field \'llService\' and method \'onViewClicked\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 70
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llService\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->llService:Landroid/widget/LinearLayout;

    .line 71
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a6:Landroid/view/View;

    .line 72
    new-instance v0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LoginActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090167

    const-string v2, "field \'ivArrow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcn/highlight/work_card_write/activity/LoginActivity;->ivArrow:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/LoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/LoginActivity;

    .line 88
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->tvLanguage:Landroid/widget/TextView;

    .line 89
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->llLanguage:Landroid/widget/LinearLayout;

    .line 90
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->editAccount:Landroid/widget/EditText;

    .line 91
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->editPassword:Landroid/widget/EditText;

    .line 92
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->btnLogin:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->llPerson:Landroid/widget/LinearLayout;

    .line 94
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->llService:Landroid/widget/LinearLayout;

    .line 95
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LoginActivity;->ivArrow:Landroid/widget/ImageView;

    .line 97
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a2:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f090098:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f090098:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a5:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity_ViewBinding;->view7f0901a6:Landroid/view/View;

    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
