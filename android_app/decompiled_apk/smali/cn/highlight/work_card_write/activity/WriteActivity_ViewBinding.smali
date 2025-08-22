.class public Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;
.super Ljava/lang/Object;
.source "WriteActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/WriteActivity;

.field private view7f090092:Landroid/view/View;

.field private view7f090094:Landroid/view/View;

.field private view7f090147:Landroid/view/View;

.field private view7f090149:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/WriteActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/WriteActivity;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/WriteActivity;

    const v0, 0x7f090147

    const-string v1, "field \'imgBack\' and method \'onViewClicked\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imgBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->imgBack:Landroid/widget/ImageView;

    .line 43
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 44
    new-instance v0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090149

    const-string v1, "field \'imgHome\' and method \'onViewClicked\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imgHome\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->imgHome:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090149:Landroid/view/View;

    .line 53
    new-instance v0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const-class v0, Lcn/highlight/work_card_write/view/SlideSwitchView;

    const v1, 0x7f090244

    const-string v2, "field \'slideSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/view/SlideSwitchView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    .line 60
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900f2

    const-string v2, "field \'editColorLinear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 61
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090204

    const-string v2, "field \'rfRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->rfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090127

    const-string v2, "field \'image\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->image:Landroid/widget/ImageView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902aa

    const-string v2, "field \'tvProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    .line 64
    const-class v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    const v1, 0x7f0901e9

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    const v0, 0x7f090092

    const-string v1, "field \'btnSave\' and method \'onViewClicked\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnSave\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->btnSave:Landroid/widget/TextView;

    .line 67
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090092:Landroid/view/View;

    .line 68
    new-instance v0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090094

    const-string v1, "field \'btnWrite\' and method \'onViewClicked\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 75
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'btnWrite\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/WriteActivity;->btnWrite:Landroid/widget/TextView;

    .line 76
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090094:Landroid/view/View;

    .line 77
    new-instance v0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;Lcn/highlight/work_card_write/activity/WriteActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/WriteActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/WriteActivity;

    .line 92
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->imgBack:Landroid/widget/ImageView;

    .line 93
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->imgHome:Landroid/widget/ImageView;

    .line 94
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->slideSwitch:Lcn/highlight/work_card_write/view/SlideSwitchView;

    .line 95
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->rfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 97
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->image:Landroid/widget/ImageView;

    .line 98
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->tvProgress:Landroid/widget/TextView;

    .line 99
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->progressBar:Lme/zhouzhuo/zzhorizontalprogressbar/ZzHorizontalProgressBar;

    .line 100
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->btnSave:Landroid/widget/TextView;

    .line 101
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/WriteActivity;->btnWrite:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090147:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090149:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090149:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090092:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090092:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090094:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/WriteActivity_ViewBinding;->view7f090094:Landroid/view/View;

    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
