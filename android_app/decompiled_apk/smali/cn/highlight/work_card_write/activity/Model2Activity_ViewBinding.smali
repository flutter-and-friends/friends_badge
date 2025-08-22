.class public Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;
.super Ljava/lang/Object;
.source "Model2Activity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/Model2Activity;

.field private view7f09013e:Landroid/view/View;

.field private view7f09013f:Landroid/view/View;

.field private view7f090140:Landroid/view/View;

.field private view7f090141:Landroid/view/View;

.field private view7f090142:Landroid/view/View;

.field private view7f090143:Landroid/view/View;

.field private view7f090144:Landroid/view/View;

.field private view7f09014d:Landroid/view/View;

.field private view7f0902bc:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/view/View;)V
    .locals 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Model2Activity;

    const v0, 0x7f09014d

    const-string v1, "field \'img_back\' and method \'onViewClicked\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'img_back\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->img_back:Landroid/widget/ImageView;

    .line 52
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09014d:Landroid/view/View;

    .line 53
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013e

    const-string v1, "field \'image_back\' and method \'onViewClicked\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_back\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->image_back:Landroid/widget/ImageView;

    .line 61
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09013e:Landroid/view/View;

    .line 62
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090141

    const-string v1, "field \'image_forward\' and method \'onViewClicked\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_forward\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->image_forward:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090141:Landroid/view/View;

    .line 71
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902bc

    const-string v1, "field \'tv_preview\' and method \'onViewClicked\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tv_preview\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->tv_preview:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f0902bc:Landroid/view/View;

    .line 80
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900f2

    const-string v2, "field \'editColorLinear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 87
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900fc

    const-string v2, "field \'editSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->editSize:Landroid/widget/TextView;

    .line 88
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f6

    const-string v2, "field \'editColorBlack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorBlack:Landroid/widget/TextView;

    .line 89
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f8

    const-string v2, "field \'editColorWhite\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorWhite:Landroid/widget/TextView;

    .line 90
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f7

    const-string v2, "field \'editColorRed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorRed:Landroid/widget/TextView;

    .line 91
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f9

    const-string v2, "field \'editColorYellow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorYellow:Landroid/widget/TextView;

    .line 92
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0900e7

    const-string v2, "field \'mFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 93
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900f3

    const-string v2, "field \'editOperationLinear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->editOperationLinear:Landroid/widget/LinearLayout;

    const v0, 0x7f090144

    const-string v1, "field \'image_top\' and method \'onViewClicked\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 95
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_top\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->image_top:Landroid/widget/ImageView;

    .line 96
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090144:Landroid/view/View;

    .line 97
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$5;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013f

    const-string v1, "field \'image_bottom\' and method \'onViewClicked\'"

    .line 103
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 104
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_bottom\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->image_bottom:Landroid/widget/ImageView;

    .line 105
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 106
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$6;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090142

    const-string v1, "field \'image_left\' and method \'onViewClicked\'"

    .line 112
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 113
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_left\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->image_left:Landroid/widget/ImageView;

    .line 114
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090142:Landroid/view/View;

    .line 115
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$7;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090143

    const-string v1, "field \'image_right\' and method \'onViewClicked\'"

    .line 121
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 122
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_right\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->image_right:Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090143:Landroid/view/View;

    .line 124
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$8;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901b3

    const-string v2, "field \'mainSetRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Model2Activity;->mainSetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090140

    const-string v1, "method \'onViewClicked\'"

    .line 131
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 132
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090140:Landroid/view/View;

    .line 133
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding$9;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Model2Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Model2Activity;

    .line 148
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->img_back:Landroid/widget/ImageView;

    .line 149
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_back:Landroid/widget/ImageView;

    .line 150
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_forward:Landroid/widget/ImageView;

    .line 151
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->tv_preview:Landroid/widget/TextView;

    .line 152
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 153
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->editSize:Landroid/widget/TextView;

    .line 154
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorBlack:Landroid/widget/TextView;

    .line 155
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorWhite:Landroid/widget/TextView;

    .line 156
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorRed:Landroid/widget/TextView;

    .line 157
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorYellow:Landroid/widget/TextView;

    .line 158
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 159
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->editOperationLinear:Landroid/widget/LinearLayout;

    .line 160
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_top:Landroid/widget/ImageView;

    .line 161
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_bottom:Landroid/widget/ImageView;

    .line 162
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_left:Landroid/widget/ImageView;

    .line 163
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_right:Landroid/widget/ImageView;

    .line 164
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mainSetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09014d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09014d:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09013e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09013e:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090141:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090141:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f0902bc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f0902bc:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090144:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090144:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09013f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090142:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090142:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090143:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090143:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity_ViewBinding;->view7f090140:Landroid/view/View;

    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
