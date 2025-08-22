.class public Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "HomeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/HomeActivity;

.field private view7f09017a:Landroid/view/View;

.field private view7f090185:Landroid/view/View;

.field private view7f09018b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/HomeActivity;)V
    .locals 1

    .line 27
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/HomeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/HomeActivity;Landroid/view/View;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/HomeActivity;

    .line 35
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09017c

    const-string v2, "field \'linearContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/HomeActivity;->linearContent:Landroid/widget/LinearLayout;

    const v0, 0x7f090185

    const-string v1, "field \'linearHome\' and method \'onViewClicked\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearHome\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/HomeActivity;->linearHome:Landroid/widget/LinearLayout;

    .line 38
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f090185:Landroid/view/View;

    .line 39
    new-instance v0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;Lcn/highlight/work_card_write/activity/HomeActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090149

    const-string v2, "field \'imgHome\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/HomeActivity;->imgHome:Landroid/widget/ImageView;

    const v0, 0x7f09017a

    const-string v1, "field \'linearCard\' and method \'onViewClicked\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearCard\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/HomeActivity;->linearCard:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f09017a:Landroid/view/View;

    .line 49
    new-instance v0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;Lcn/highlight/work_card_write/activity/HomeActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090148

    const-string v2, "field \'imgCard\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/HomeActivity;->imgCard:Landroid/widget/ImageView;

    const v0, 0x7f09018b

    const-string v1, "field \'linearMy\' and method \'onViewClicked\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 57
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearMy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/HomeActivity;->linearMy:Landroid/widget/LinearLayout;

    .line 58
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f09018b:Landroid/view/View;

    .line 59
    new-instance v0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;Lcn/highlight/work_card_write/activity/HomeActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09014a

    const-string v2, "field \'imgMy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcn/highlight/work_card_write/activity/HomeActivity;->imgMy:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/HomeActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/HomeActivity;

    .line 75
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/HomeActivity;->linearContent:Landroid/widget/LinearLayout;

    .line 76
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/HomeActivity;->linearHome:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgHome:Landroid/widget/ImageView;

    .line 78
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/HomeActivity;->linearCard:Landroid/widget/LinearLayout;

    .line 79
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgCard:Landroid/widget/ImageView;

    .line 80
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/HomeActivity;->linearMy:Landroid/widget/LinearLayout;

    .line 81
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgMy:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f090185:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f090185:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f09017a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f09017a:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f09018b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity_ViewBinding;->view7f09018b:Landroid/view/View;

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
