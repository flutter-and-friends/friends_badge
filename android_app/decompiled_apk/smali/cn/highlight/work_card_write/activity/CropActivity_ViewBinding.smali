.class public Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CropActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/CropActivity;

.field private view7f09014f:Landroid/view/View;

.field private view7f090150:Landroid/view/View;

.field private view7f0902a3:Landroid/view/View;

.field private view7f0902ae:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/CropActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/CropActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/CropActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/CropActivity;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/CropActivity;

    .line 39
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900f2

    const-string v2, "field \'editColorLinear\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900fc

    const-string v2, "field \'editSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->editSize:Landroid/widget/TextView;

    .line 41
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f6

    const-string v2, "field \'editColorBlack\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->editColorBlack:Landroid/widget/TextView;

    .line 42
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f8

    const-string v2, "field \'editColorWhite\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->editColorWhite:Landroid/widget/TextView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f7

    const-string v2, "field \'editColorRed\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->editColorRed:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f9

    const-string v2, "field \'editColorYellow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->editColorYellow:Landroid/widget/TextView;

    .line 45
    const-class v0, Lcom/isseiaoki/simplecropview/CropImageView;

    const v1, 0x7f0900c5

    const-string v2, "field \'cropView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const v0, 0x7f09014f

    const-string v1, "field \'img_turn_left\' and method \'onViewClicked\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 47
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'img_turn_left\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->img_turn_left:Landroid/widget/ImageView;

    .line 48
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f09014f:Landroid/view/View;

    .line 49
    new-instance v0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CropActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090150

    const-string v1, "field \'img_turn_right\' and method \'onViewClicked\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'img_turn_right\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->img_turn_right:Landroid/widget/ImageView;

    .line 57
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f090150:Landroid/view/View;

    .line 58
    new-instance v0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CropActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902a3

    const-string v1, "field \'tvCancel\' and method \'onViewClicked\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 65
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->tvCancel:Landroid/widget/TextView;

    .line 66
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f0902a3:Landroid/view/View;

    .line 67
    new-instance v0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CropActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ae

    const-string v1, "field \'tvSure\' and method \'onViewClicked\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 74
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvSure\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CropActivity;->tvSure:Landroid/widget/TextView;

    .line 75
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f0902ae:Landroid/view/View;

    .line 76
    new-instance v0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CropActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/CropActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/CropActivity;

    .line 91
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorLinear:Landroid/widget/LinearLayout;

    .line 92
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->editSize:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorBlack:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorWhite:Landroid/widget/TextView;

    .line 95
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorRed:Landroid/widget/TextView;

    .line 96
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorYellow:Landroid/widget/TextView;

    .line 97
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    .line 98
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->img_turn_left:Landroid/widget/ImageView;

    .line 99
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->img_turn_right:Landroid/widget/ImageView;

    .line 100
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->tvCancel:Landroid/widget/TextView;

    .line 101
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CropActivity;->tvSure:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f09014f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f09014f:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f090150:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f090150:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f0902a3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f0902a3:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f0902ae:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity_ViewBinding;->view7f0902ae:Landroid/view/View;

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
