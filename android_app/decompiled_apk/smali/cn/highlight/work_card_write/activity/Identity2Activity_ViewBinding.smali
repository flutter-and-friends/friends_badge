.class public Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;
.super Ljava/lang/Object;
.source "Identity2Activity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/Identity2Activity;

.field private view7f090092:Landroid/view/View;

.field private view7f090147:Landroid/view/View;

.field private view7f09019c:Landroid/view/View;

.field private view7f09019d:Landroid/view/View;

.field private view7f0901f7:Landroid/view/View;

.field private view7f0901f8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/Identity2Activity;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/Identity2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/Identity2Activity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/Identity2Activity;Landroid/view/View;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Identity2Activity;

    const v0, 0x7f090147

    const-string v1, "field \'imgBack\' and method \'onViewClicked\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imgBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Identity2Activity;->imgBack:Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 46
    new-instance v0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Identity2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f7

    const-string v1, "field \'radioEnterprise\' and method \'onViewClicked\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'radioEnterprise\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioEnterprise:Landroid/widget/RadioButton;

    .line 54
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f0901f7:Landroid/view/View;

    .line 55
    new-instance v0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Identity2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09019c

    const-string v1, "field \'linearEnterprise\' and method \'onViewClicked\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearEnterprise\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Identity2Activity;->linearEnterprise:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f09019c:Landroid/view/View;

    .line 64
    new-instance v0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Identity2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f8

    const-string v1, "field \'radioPerson\' and method \'onViewClicked\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'radioPerson\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioPerson:Landroid/widget/RadioButton;

    .line 72
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f0901f8:Landroid/view/View;

    .line 73
    new-instance v0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Identity2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09019d

    const-string v1, "field \'linearPerson\' and method \'onViewClicked\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearPerson\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Identity2Activity;->linearPerson:Landroid/widget/LinearLayout;

    .line 81
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f09019d:Landroid/view/View;

    .line 82
    new-instance v0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$5;-><init>(Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Identity2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090092

    const-string v1, "field \'btnSave\' and method \'onViewClicked\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 89
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'btnSave\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Identity2Activity;->btnSave:Landroid/widget/TextView;

    .line 90
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f090092:Landroid/view/View;

    .line 91
    new-instance v0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding$6;-><init>(Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Identity2Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Identity2Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Identity2Activity;

    .line 106
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Identity2Activity;->imgBack:Landroid/widget/ImageView;

    .line 107
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioEnterprise:Landroid/widget/RadioButton;

    .line 108
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Identity2Activity;->linearEnterprise:Landroid/widget/LinearLayout;

    .line 109
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioPerson:Landroid/widget/RadioButton;

    .line 110
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Identity2Activity;->linearPerson:Landroid/widget/LinearLayout;

    .line 111
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Identity2Activity;->btnSave:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f090147:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f0901f7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f0901f7:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f09019c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f09019c:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f0901f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f0901f8:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f09019d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f09019d:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f090092:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity_ViewBinding;->view7f090092:Landroid/view/View;

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
