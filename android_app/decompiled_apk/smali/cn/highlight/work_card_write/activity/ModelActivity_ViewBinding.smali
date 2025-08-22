.class public Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ModelActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/ModelActivity;

.field private view7f09013e:Landroid/view/View;

.field private view7f09013f:Landroid/view/View;

.field private view7f090140:Landroid/view/View;

.field private view7f090141:Landroid/view/View;

.field private view7f090144:Landroid/view/View;

.field private view7f09014d:Landroid/view/View;

.field private view7f09022e:Landroid/view/View;

.field private view7f09022f:Landroid/view/View;

.field private view7f090230:Landroid/view/View;

.field private view7f0902bc:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V
    .locals 1

    .line 47
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;Landroid/view/View;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/ModelActivity;

    const v0, 0x7f09014d

    const-string v1, "field \'img_back\' and method \'onViewClicked\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'img_back\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->img_back:Landroid/widget/ImageView;

    .line 57
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09014d:Landroid/view/View;

    .line 58
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013e

    const-string v1, "field \'image_back\' and method \'onViewClicked\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 65
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_back\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->image_back:Landroid/widget/ImageView;

    .line 66
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09013e:Landroid/view/View;

    .line 67
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090141

    const-string v1, "field \'image_forward\' and method \'onViewClicked\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_forward\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->image_forward:Landroid/widget/ImageView;

    .line 75
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090141:Landroid/view/View;

    .line 76
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902bc

    const-string v1, "field \'tv_preview\' and method \'onViewClicked\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 83
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tv_preview\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->tv_preview:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f0902bc:Landroid/view/View;

    .line 85
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900f2

    const-string v2, "field \'editColorLinear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 92
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900fc

    const-string v2, "field \'editSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->editSize:Landroid/widget/TextView;

    .line 93
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f6

    const-string v2, "field \'editColorBlack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorBlack:Landroid/widget/TextView;

    .line 94
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f8

    const-string v2, "field \'editColorWhite\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorWhite:Landroid/widget/TextView;

    .line 95
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f7

    const-string v2, "field \'editColorRed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorRed:Landroid/widget/TextView;

    .line 96
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f9

    const-string v2, "field \'editColorYellow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorYellow:Landroid/widget/TextView;

    .line 97
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0900e7

    const-string v2, "field \'mFrameLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090144

    const-string v1, "field \'image_top\' and method \'onViewClicked\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 99
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_top\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->image_top:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090144:Landroid/view/View;

    .line 101
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$5;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013f

    const-string v1, "field \'image_bottom\' and method \'onViewClicked\'"

    .line 107
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 108
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_bottom\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->image_bottom:Landroid/widget/ImageView;

    .line 109
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 110
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$6;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090140

    const-string v1, "field \'image_delete\' and method \'onViewClicked\'"

    .line 116
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 117
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'image_delete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->image_delete:Landroid/widget/ImageView;

    .line 118
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090140:Landroid/view/View;

    .line 119
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$7;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901b0

    const-string v2, "field \'mainSet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSet:Landroid/widget/LinearLayout;

    const v0, 0x7f09022e

    const-string v1, "field \'setBg\' and method \'onViewClicked\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 127
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'setBg\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->setBg:Landroid/widget/LinearLayout;

    .line 128
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09022e:Landroid/view/View;

    .line 129
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$8;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090230

    const-string v1, "field \'setText\' and method \'onViewClicked\'"

    .line 135
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 136
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'setText\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->setText:Landroid/widget/LinearLayout;

    .line 137
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090230:Landroid/view/View;

    .line 138
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$9;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09022f

    const-string v1, "field \'setImage\' and method \'onViewClicked\'"

    .line 144
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 145
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'setImage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->setImage:Landroid/widget/LinearLayout;

    .line 146
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09022f:Landroid/view/View;

    .line 147
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding$10;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901b1

    const-string v2, "field \'mainSetBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetBg:Landroid/widget/LinearLayout;

    .line 154
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09007d

    const-string v2, "field \'bgCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->bgCancel:Landroid/widget/ImageView;

    .line 155
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090086

    const-string v2, "field \'bgSure\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->bgSure:Landroid/widget/ImageView;

    .line 156
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090080

    const-string v2, "field \'bgRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->bgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901b4

    const-string v2, "field \'mainSetText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetText:Landroid/widget/LinearLayout;

    .line 158
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09026f

    const-string v2, "field \'textCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textCancel:Landroid/widget/ImageView;

    .line 159
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090280

    const-string v2, "field \'textSure\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textSure:Landroid/widget/ImageView;

    .line 160
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090281

    const-string v2, "field \'textTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 161
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090271

    const-string v2, "field \'textEditView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textEditView:Landroid/widget/LinearLayout;

    .line 162
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f090270

    const-string v2, "field \'textEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    .line 163
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090273

    const-string v2, "field \'textFontView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontView:Landroid/widget/LinearLayout;

    .line 164
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090272

    const-string v2, "field \'textFontRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09027f

    const-string v2, "field \'textStyleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleView:Landroid/widget/LinearLayout;

    .line 166
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09027c

    const-string v2, "field \'textStyleRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    const-class v0, Landroid/widget/SeekBar;

    const v1, 0x7f09027d

    const-string v2, "field \'textStyleSeekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleSeekBar:Landroid/widget/SeekBar;

    .line 168
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09027e

    const-string v2, "field \'textStyleSeekBarProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleSeekBarProgress:Landroid/widget/TextView;

    .line 169
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901b2

    const-string v2, "field \'mainSetImage\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetImage:Landroid/widget/LinearLayout;

    .line 170
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09012b

    const-string v2, "field \'imageCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCancel:Landroid/widget/ImageView;

    .line 171
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090133

    const-string v2, "field \'imagePhoto\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->imagePhoto:Landroid/widget/LinearLayout;

    .line 172
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090128

    const-string v2, "field \'imageAlbum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->imageAlbum:Landroid/widget/LinearLayout;

    .line 173
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090134

    const-string v2, "field \'imageQrcode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->imageQrcode:Landroid/widget/LinearLayout;

    .line 174
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090129

    const-string v2, "field \'imageBarCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->imageBarCode:Landroid/widget/LinearLayout;

    .line 175
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09012c

    const-string v2, "field \'imageCodeView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    .line 176
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900b5

    const-string v2, "field \'codeCancel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->codeCancel:Landroid/widget/ImageView;

    .line 177
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900b6

    const-string v2, "field \'codeName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->codeName:Landroid/widget/TextView;

    .line 178
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900b7

    const-string v2, "field \'codeSure\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->codeSure:Landroid/widget/ImageView;

    .line 179
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0900b8

    const-string v2, "field \'codeText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/ModelActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 187
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/ModelActivity;

    .line 189
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->img_back:Landroid/widget/ImageView;

    .line 190
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->image_back:Landroid/widget/ImageView;

    .line 191
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->image_forward:Landroid/widget/ImageView;

    .line 192
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->tv_preview:Landroid/widget/TextView;

    .line 193
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 194
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->editSize:Landroid/widget/TextView;

    .line 195
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorBlack:Landroid/widget/TextView;

    .line 196
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorWhite:Landroid/widget/TextView;

    .line 197
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorRed:Landroid/widget/TextView;

    .line 198
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorYellow:Landroid/widget/TextView;

    .line 199
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 200
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->image_top:Landroid/widget/ImageView;

    .line 201
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->image_bottom:Landroid/widget/ImageView;

    .line 202
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->image_delete:Landroid/widget/ImageView;

    .line 203
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSet:Landroid/widget/LinearLayout;

    .line 204
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->setBg:Landroid/widget/LinearLayout;

    .line 205
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->setText:Landroid/widget/LinearLayout;

    .line 206
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->setImage:Landroid/widget/LinearLayout;

    .line 207
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetBg:Landroid/widget/LinearLayout;

    .line 208
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->bgCancel:Landroid/widget/ImageView;

    .line 209
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->bgSure:Landroid/widget/ImageView;

    .line 210
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->bgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 211
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetText:Landroid/widget/LinearLayout;

    .line 212
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textCancel:Landroid/widget/ImageView;

    .line 213
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textSure:Landroid/widget/ImageView;

    .line 214
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 215
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEditView:Landroid/widget/LinearLayout;

    .line 216
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    .line 217
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontView:Landroid/widget/LinearLayout;

    .line 218
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleView:Landroid/widget/LinearLayout;

    .line 220
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleSeekBar:Landroid/widget/SeekBar;

    .line 222
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleSeekBarProgress:Landroid/widget/TextView;

    .line 223
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetImage:Landroid/widget/LinearLayout;

    .line 224
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCancel:Landroid/widget/ImageView;

    .line 225
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->imagePhoto:Landroid/widget/LinearLayout;

    .line 226
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageAlbum:Landroid/widget/LinearLayout;

    .line 227
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageQrcode:Landroid/widget/LinearLayout;

    .line 228
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageBarCode:Landroid/widget/LinearLayout;

    .line 229
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    .line 230
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeCancel:Landroid/widget/ImageView;

    .line 231
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeName:Landroid/widget/TextView;

    .line 232
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeSure:Landroid/widget/ImageView;

    .line 233
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    .line 235
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09014d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09014d:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09013e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09013e:Landroid/view/View;

    .line 239
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090141:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090141:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f0902bc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f0902bc:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090144:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090144:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09013f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090140:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090140:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09022e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09022e:Landroid/view/View;

    .line 251
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090230:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f090230:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09022f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity_ViewBinding;->view7f09022f:Landroid/view/View;

    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
