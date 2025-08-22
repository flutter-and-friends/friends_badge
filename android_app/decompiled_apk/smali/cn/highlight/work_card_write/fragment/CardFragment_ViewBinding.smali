.class public Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CardFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/fragment/CardFragment;

.field private view7f0900a6:Landroid/view/View;

.field private view7f0900a7:Landroid/view/View;

.field private view7f0901bf:Landroid/view/View;

.field private view7f0901ca:Landroid/view/View;

.field private view7f09028b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/fragment/CardFragment;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/CardFragment;

    const v0, 0x7f0900a6

    const-string v1, "field \'cardTitleModel\' and method \'onViewClicked\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'cardTitleModel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->cardTitleModel:Landroid/widget/RelativeLayout;

    .line 40
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0900a6:Landroid/view/View;

    .line 41
    new-instance v0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a2

    const-string v2, "field \'cardModelTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv:Landroid/widget/TextView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a3

    const-string v2, "field \'cardModelTv1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv1:Landroid/widget/TextView;

    const v0, 0x7f0900a7

    const-string v1, "field \'cardTitleTheme\' and method \'onViewClicked\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'cardTitleTheme\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->cardTitleTheme:Landroid/widget/RelativeLayout;

    .line 51
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0900a7:Landroid/view/View;

    .line 52
    new-instance v0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a4

    const-string v2, "field \'cardThemeTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv:Landroid/widget/TextView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a5

    const-string v2, "field \'cardThemeTv1\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv1:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090189

    const-string v2, "field \'linearModel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->linearModel:Landroid/widget/LinearLayout;

    .line 61
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0901c1

    const-string v2, "field \'modelTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->modelTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0901bf

    const-string v1, "field \'modelSelectSize\' and method \'onViewClicked\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'modelSelectSize\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->modelSelectSize:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0901bf:Landroid/view/View;

    .line 65
    new-instance v0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901c0

    const-string v2, "field \'modelSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->modelSize:Landroid/widget/TextView;

    .line 72
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901be

    const-string v2, "field \'modelRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->modelRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090194

    const-string v2, "field \'linearTheme\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->linearTheme:Landroid/widget/LinearLayout;

    .line 74
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f090289

    const-string v2, "field \'themTabLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->themTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f09028b

    const-string v1, "field \'themeSelectSize\' and method \'onViewClicked\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 76
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'themeSelectSize\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->themeSelectSize:Landroid/widget/LinearLayout;

    .line 77
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f09028b:Landroid/view/View;

    .line 78
    new-instance v0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09028c

    const-string v2, "field \'themeSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->themeSize:Landroid/widget/TextView;

    .line 85
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09028a

    const-string v2, "field \'themeRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0901ca

    const-string v1, "field \'nfcLinear\' and method \'onViewClicked\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 87
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'nfcLinear\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcLinear:Landroid/widget/ImageView;

    .line 88
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0901ca:Landroid/view/View;

    .line 89
    new-instance v0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding$5;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09019a

    const-string v2, "field \'linearZWSJ\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcn/highlight/work_card_write/fragment/CardFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/CardFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/CardFragment;

    .line 105
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardTitleModel:Landroid/widget/RelativeLayout;

    .line 106
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv:Landroid/widget/TextView;

    .line 107
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv1:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardTitleTheme:Landroid/widget/RelativeLayout;

    .line 109
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv:Landroid/widget/TextView;

    .line 110
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv1:Landroid/widget/TextView;

    .line 111
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearModel:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 113
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelSelectSize:Landroid/widget/LinearLayout;

    .line 114
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelSize:Landroid/widget/TextView;

    .line 115
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearTheme:Landroid/widget/LinearLayout;

    .line 117
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->themTabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 118
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeSelectSize:Landroid/widget/LinearLayout;

    .line 119
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeSize:Landroid/widget/TextView;

    .line 120
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 121
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcLinear:Landroid/widget/ImageView;

    .line 122
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    .line 124
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0900a6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0900a6:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0900a7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0900a7:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0901bf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0901bf:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f09028b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f09028b:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0901ca:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment_ViewBinding;->view7f0901ca:Landroid/view/View;

    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
