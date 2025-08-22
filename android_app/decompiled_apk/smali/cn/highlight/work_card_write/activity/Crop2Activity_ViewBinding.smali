.class public Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;
.super Ljava/lang/Object;
.source "Crop2Activity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/Crop2Activity;

.field private view7f0902a3:Landroid/view/View;

.field private view7f0902ae:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/Crop2Activity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/Crop2Activity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/Crop2Activity;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Crop2Activity;

    .line 33
    const-class v0, Lcom/isseiaoki/simplecropview/CropImageView;

    const v1, 0x7f0900c5

    const-string v2, "field \'cropView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const v0, 0x7f0902a3

    const-string v1, "field \'tvCancel\' and method \'onViewClicked\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 35
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Crop2Activity;->tvCancel:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->view7f0902a3:Landroid/view/View;

    .line 37
    new-instance v0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Crop2Activity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902ae

    const-string v1, "field \'tvSure\' and method \'onViewClicked\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 44
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'tvSure\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/Crop2Activity;->tvSure:Landroid/widget/TextView;

    .line 45
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->view7f0902ae:Landroid/view/View;

    .line 46
    new-instance v0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;Lcn/highlight/work_card_write/activity/Crop2Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Crop2Activity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/Crop2Activity;

    .line 61
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    .line 62
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Crop2Activity;->tvCancel:Landroid/widget/TextView;

    .line 63
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/Crop2Activity;->tvSure:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->view7f0902a3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->view7f0902a3:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->view7f0902ae:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity_ViewBinding;->view7f0902ae:Landroid/view/View;

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
