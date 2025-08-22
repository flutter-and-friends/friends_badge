.class public Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CardActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/CardActivity;

.field private view7f090179:Landroid/view/View;

.field private view7f09017d:Landroid/view/View;

.field private view7f09017f:Landroid/view/View;

.field private view7f0902ac:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/CardActivity;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/CardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/CardActivity;Landroid/view/View;)V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/CardActivity;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902a9

    const-string v2, "field \'tvNum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->tvNum:Landroid/widget/TextView;

    const v0, 0x7f0902ac

    const-string v1, "field \'tvSelect\' and method \'onViewClicked\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvSelect\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->tvSelect:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f0902ac:Landroid/view/View;

    .line 43
    new-instance v0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902ad

    const-string v2, "field \'tvSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->tvSize:Landroid/widget/TextView;

    .line 50
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09028a

    const-string v2, "field \'themeRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090179

    const-string v1, "field \'linearCancel\' and method \'onViewClicked\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->linearCancel:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f090179:Landroid/view/View;

    .line 54
    new-instance v0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017d

    const-string v1, "field \'linearCopy\' and method \'onViewClicked\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearCopy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->linearCopy:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f09017d:Landroid/view/View;

    .line 63
    new-instance v0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09012d

    const-string v2, "field \'imageCopy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->imageCopy:Landroid/widget/ImageView;

    .line 70
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902a4

    const-string v2, "field \'tvCopy\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->tvCopy:Landroid/widget/TextView;

    const v0, 0x7f09017f

    const-string v1, "field \'linearDelete\' and method \'onViewClicked\'"

    .line 71
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 72
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearDelete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->linearDelete:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f09017f:Landroid/view/View;

    .line 74
    new-instance v0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09012e

    const-string v2, "field \'imageDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/CardActivity;->imageDelete:Landroid/widget/ImageView;

    .line 81
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902a5

    const-string v2, "field \'tvDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcn/highlight/work_card_write/activity/CardActivity;->tvDelete:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/CardActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/CardActivity;

    .line 91
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->tvNum:Landroid/widget/TextView;

    .line 92
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->tvSelect:Landroid/widget/TextView;

    .line 93
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->tvSize:Landroid/widget/TextView;

    .line 94
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->linearCancel:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->linearCopy:Landroid/widget/LinearLayout;

    .line 97
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->imageCopy:Landroid/widget/ImageView;

    .line 98
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->tvCopy:Landroid/widget/TextView;

    .line 99
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->linearDelete:Landroid/widget/LinearLayout;

    .line 100
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->imageDelete:Landroid/widget/ImageView;

    .line 101
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/CardActivity;->tvDelete:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f0902ac:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f0902ac:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f090179:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f090179:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f09017d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f09017d:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f09017f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity_ViewBinding;->view7f09017f:Landroid/view/View;

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
