.class public Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;
.super Ljava/lang/Object;
.source "EditFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/fragment/EditFragment;

.field private view7f090177:Landroid/view/View;

.field private view7f09018a:Landroid/view/View;

.field private view7f09018c:Landroid/view/View;

.field private view7f090190:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/fragment/EditFragment;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/EditFragment;

    const v0, 0x7f09018c

    const-string v1, "field \'linearNew\' and method \'onViewClicked\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 34
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearNew\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/EditFragment;->linearNew:Landroid/widget/LinearLayout;

    .line 35
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f09018c:Landroid/view/View;

    .line 36
    new-instance v0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090190

    const-string v1, "field \'linearPhoto\' and method \'onViewClicked\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'linearPhoto\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/EditFragment;->linearPhoto:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f090190:Landroid/view/View;

    .line 45
    new-instance v0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090177

    const-string v1, "field \'linearAlbum\' and method \'onViewClicked\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'linearAlbum\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/EditFragment;->linearAlbum:Landroid/widget/RelativeLayout;

    .line 53
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f090177:Landroid/view/View;

    .line 54
    new-instance v0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901c9

    const-string v2, "field \'newUserRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/EditFragment;->newUserRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09018a

    const-string v1, "field \'linearMore\' and method \'onViewClicked\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearMore\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/EditFragment;->linearMore:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f09018a:Landroid/view/View;

    .line 64
    new-instance v0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09019a

    const-string v2, "field \'linearZWSJ\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcn/highlight/work_card_write/fragment/EditFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/EditFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/EditFragment;

    .line 80
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearNew:Landroid/widget/LinearLayout;

    .line 81
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearPhoto:Landroid/widget/RelativeLayout;

    .line 82
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearAlbum:Landroid/widget/RelativeLayout;

    .line 83
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/EditFragment;->newUserRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearMore:Landroid/widget/LinearLayout;

    .line 85
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f09018c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f09018c:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f090190:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f090190:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f090177:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f090177:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f09018a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment_ViewBinding;->view7f09018a:Landroid/view/View;

    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
