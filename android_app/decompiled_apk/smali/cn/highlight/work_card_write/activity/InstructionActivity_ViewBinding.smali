.class public Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;
.super Ljava/lang/Object;
.source "InstructionActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/InstructionActivity;

.field private view7f090147:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/InstructionActivity;)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/InstructionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/InstructionActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/InstructionActivity;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/InstructionActivity;

    .line 32
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902af

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/InstructionActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f090147

    const-string v1, "field \'imgBack\' and method \'onViewClicked\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 34
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imgBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/InstructionActivity;->imgBack:Landroid/widget/ImageView;

    .line 35
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 36
    new-instance v0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;Lcn/highlight/work_card_write/activity/InstructionActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const-class v0, Landroid/widget/ListView;

    const v1, 0x7f090200

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p1, Lcn/highlight/work_card_write/activity/InstructionActivity;->recyclerView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/InstructionActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/InstructionActivity;

    .line 52
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/InstructionActivity;->tvTitle:Landroid/widget/TextView;

    .line 53
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/InstructionActivity;->imgBack:Landroid/widget/ImageView;

    .line 54
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/InstructionActivity;->recyclerView:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;->view7f090147:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity_ViewBinding;->view7f090147:Landroid/view/View;

    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
